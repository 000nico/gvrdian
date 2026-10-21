module map_ept;

import wdm;
import ntddk;
import bit;
import assembly;
import ept;

const TWO_MB = 2048;
const MAX_TABLE_ENTRIES = 512;

bitstruct EptPml4_entry : ulong {
    bool  read_access        : 0;
    bool  write_access       : 1;
    bool  execute_access     : 2;
    ulong reserved_1         : 3..7;   // 0
    bool  accessed           : 8;      // only if caps.ad_flags_supported
    bool  ignored_1          : 9;
    bool  user_execute       : 10;     // only if mode-based execute control is enabled
    bool  ignored_2          : 11;
    ulong pdpt_physical_addr : 12..51; // HPA of PDPT (shifted >> 12)
    ulong ignored_3          : 52..63;
}

bitstruct EptPdp_entry : ulong {
    bool  read_access       : 0;
    bool  write_access      : 1;
    bool  execute_access    : 2;
    ulong reserved_1        : 3..6;    // 0
    bool  maps_1gb_page     : 7;       // 0
    bool  accessed          : 8;
    bool  ignored_1         : 9;
    bool  user_execute      : 10;
    bool  ignored_2         : 11;
    ulong pd_physical_addr  : 12..51;  // HPA of PD (shifted >> 12)
    ulong ignored_3         : 52..63;
}

bitstruct EptPd_entry : ulong {
    bool  read_access      : 0;
    bool  write_access     : 1;
    bool  execute_access   : 2;
    ulong memory_type      : 3..5;     // 6 = Write-Back
    bool  ignore_pat       : 6;        // usually 0
    bool  maps_2mb_page    : 7;        // true
    bool  accessed         : 8;
    bool  dirty            : 9;       // only relevant if write_access = true
    bool  user_execute     : 10;
    bool  ignored_1        : 11;
    ulong reserved_1       : 12..20;   // 0
    ulong page_physical_addr : 21..51; // HPA of the 2MB page (shifted >> 21)
    ulong ignored_2        : 52..62;
    bool  suppress_ve      : 63;       // only if enabled EPT-VIOLATION #VE
}

struct EptPml4Table {
    EptPml4_entry[512] entries;
}

struct EptPdpTable {
    EptPdp_entry[512] entries;
}

struct EptPdTable {
    EptPd_entry[512] entries; // huge pages of 2mb
}

fn void* allocate_aligned() {
    ntddk::PhysicalAddress_t highest_addr;
    highest_addr.quad_part = -1;
    
    void* table = ntddk::mm_allocate_contiguous_memory(0x1000, highest_addr);

    if(table == null) return null;

    wdm::rtl_zero_memory(table, 0x1000);
    
    return table;
}

// returns false if failed
fn bool ram_weight(ulong* weight) {
    ntddk::PPHYSICALMEMORYRANGE_t ranges = ntddk::mm_get_physical_memory_ranges_ex2(null, 0);

    if (ranges == null) {
        return false;
    }

    ulong total = 0;
    int i = 0;

    while (true) {
        ntddk::LARGEINTEGER_t byte_count = ranges[i].number_of_bytes;
        ntddk::PhysicalAddress_t base_address = ranges[i].base_address;

        if (byte_count.quad_part == 0 && base_address.quad_part == 0) break;

        total += (ulong)byte_count.quad_part;
        i++;
    }

    *weight = total;

    wdm::ex_free_pool(ranges);
    return true;
}

fn EptPml4_entry create_ept_pml4_entry(Ept_capabilities caps, ulong pdp_hpa) {
    EptPml4_entry e = {};
    e.read_access = true;
    e.write_access = true;
    e.execute_access = true;
    e.reserved_1 = 0;
    e.accessed = caps.ad_flags_supported? true : false;
    e.ignored_1 = false;
    e.user_execute = false;
    e.ignored_2 = false;
    e.ignored_3 = 0;
    e.pdpt_physical_addr = pdp_hpa >> 12;
    return e;
}

fn EptPdp_entry create_ept_pdp_entry(Ept_capabilities caps, ulong pd_hpa) {
    EptPdp_entry e = {};
    e.read_access = true;
    e.write_access = true;
    e.execute_access = true;
    e.reserved_1 = 0;
    e.maps_1gb_page = false;
    e.accessed = caps.ad_flags_supported? true : false;
    e.ignored_1 = false;
    e.user_execute = false;
    e.ignored_2 = false;
    e.ignored_3 = 0;
    e.pd_physical_addr = pd_hpa >> 12;
    return e;
}

fn EptPd_entry create_ept_pd_entry(Ept_capabilities caps, ulong gpa) {
    EptPd_entry e = {};
    
    e.accessed = caps.ad_flags_supported? true : false;
    e.read_access = true;
    e.write_access = true;
    e.execute_access = true;
    e.reserved_1 = 0;
    e.ignored_1 = false;
    e.ignored_2 = 0;
    e.ignore_pat = false;
    e.memory_type = 6;
    e.accessed = false;
    e.suppress_ve = false;
    e.user_execute = false;
    e.maps_2mb_page = true;
    e.dirty = false;
    e.page_physical_addr = gpa >> 21;
    
    return e;
}

fn bool map_tables(Ept_capabilities caps, ulong* ept_pml4_addr_buffer) {
    ulong total_ram_bytes = 0;
    if(!ram_weight(&total_ram_bytes)) return false;

    wdm::dbg_print("total ram bytes = %d\n", total_ram_bytes);

    ulong current_pml4_index = 0;
    ulong current_pdp_index = 0;
    ulong current_pd_index = 0;

    EptPdpTable* current_pdp_table = allocate_aligned();
    EptPdTable* current_pd_table = allocate_aligned();
    EptPml4Table* current_pml4_table = allocate_aligned();
    if(!current_pdp_table || !current_pd_table || !current_pml4_table) return false;

    // populate pml4[0]
    wdm::PhysicalAddress_t pdp_table_hpa = wdm::mm_get_physical_address(current_pdp_table);
    current_pml4_table.entries[current_pml4_index] = create_ept_pml4_entry(caps, (ulong)pdp_table_hpa.quad_part);

    // populate pdp[0]
    wdm::PhysicalAddress_t pd_table_hpa = wdm::mm_get_physical_address(current_pd_table);
    current_pdp_table.entries[current_pdp_index] = create_ept_pdp_entry(caps, (ulong)pd_table_hpa.quad_part);
    
    ulong current_gpa = 0;
    while(current_gpa < total_ram_bytes) {    
        bool pd_overflowed = false;
        
        if(current_pd_index == MAX_TABLE_ENTRIES){
            // adjust index
            current_pdp_index++;
            current_pd_index = 0;
            pd_overflowed = true;
        }
        
        if(current_pdp_index == MAX_TABLE_ENTRIES) {
            // adjust index & create table
            current_pml4_index++;
            current_pdp_index = 0;
            current_pdp_table = allocate_aligned();
            if(!current_pdp_table) return false;
            
            // create PML4 entry (when PDP == MAX_TABLE_ENTRIES)
            pdp_table_hpa = wdm::mm_get_physical_address(current_pdp_table);
            current_pml4_table.entries[current_pml4_index] = create_ept_pml4_entry(caps, (ulong)pdp_table_hpa.quad_part);
        }

        if(pd_overflowed) {
            current_pd_table = allocate_aligned();
            if(!current_pd_table) return false;
    
            // create pdpt entry (every 1gb, when PD == MAX_TABLE_ENTRIES)
            pd_table_hpa = wdm::mm_get_physical_address(current_pd_table);
            current_pdp_table.entries[current_pdp_index] = create_ept_pdp_entry(caps, (ulong)pd_table_hpa.quad_part);
        }
        
        if(current_pml4_index == MAX_TABLE_ENTRIES) {
            return false; // something would have been really wrong if we mapped 256TB of ram
        }

        // configure final entry on PD, every time, every 2MB
        current_pd_table.entries[current_pd_index] = create_ept_pd_entry(caps, current_gpa);
        
        current_pd_index++;
        current_gpa += TWO_MB;
    }
    
    wdm::PhysicalAddress_t ept_pml4_hpa = wdm::mm_get_physical_address(current_pml4_table);
    *ept_pml4_addr_buffer = (ulong)ept_pml4_hpa.quad_part;
    return true;
}