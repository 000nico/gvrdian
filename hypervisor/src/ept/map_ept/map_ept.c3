module map_ept;

import wdm;
import ntddk;
import bit;
import assembly;

bitstruct EptPml4e : ulong {
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

bitstruct EptPdpte : ulong {
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

bitstruct EptPde2mb : ulong {
    bool  read_access      : 0;
    bool  write_access     : 1;
    bool  execute_access   : 2;
    ulong memory_type      : 3..5;     // 6 = Write-Back
    bool  ignore_pat       : 6;        // usually 0
    bool  maps_2mb_page    : 7;        // 1
    bool  accessed         : 8;
    bool  dirty             : 9;       // only relevant if write_access = true
    bool  user_execute     : 10;
    bool  ignored_1        : 11;
    ulong reserved_1       : 12..20;   // 0
    ulong page_physical_addr : 21..51; // HPA of the 2MB page (shifted >> 21)
    ulong ignored_2        : 52..62;
    bool  suppress_ve      : 63;       // only if enabled EPT-VIOLATION #VE
}

struct EptPml4Table {
    EptPml4e[512] entries;
}

struct EptPdptTable {
    EptPdpte[512] entries;
}

struct EptPdTable {
    EptPde2mb[512] entries; // huge pages of 2mb
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

fn void* map_tables() {
    void* pml4_page = allocate_aligned();
    ulong total_ram_bytes = 0;
    if(!ram_weight(&total_ram_bytes)) return null;
    
    // ...

    ulong current_gpa = 0;

    while(current_gpa < total_ram_bytes) {
        // pml4 -> pdpt

        // pdpt -> pd

        // pd -> hpa
    }

    return pml4_page;
}