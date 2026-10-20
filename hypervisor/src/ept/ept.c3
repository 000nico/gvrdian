module ept;

import wdm;
import eptp;
import assembly;
import vmcs_fields;
import map_ept;

fn bool setup_ept() {
    // check ept support and capabilities
    Ept_capabilities caps;
    
    if(ept_is_usable(&caps)) {
        wdm::dbg_print("EPT is usable\n");
    } else {
        wdm::dbg_print("EPT is not usable\n");
        return false;
    }

    // map ept tables 
    ulong ept_pml4_physical_addr = 0;
    if(!map_ept::map_tables(caps, &ept_pml4_physical_addr)) { // receives a double pointer
        wdm::dbg_print("map_tables failed");
        return false;
    }
    wdm::dbg_print("ept tables succesfully mapped");
        
    
    // configure eptp
    Eptp eptp = eptp::get_configured_eptp(ept_pml4_physical_addr, caps);
    if(!assembly::vm_write(vmcs_fields::EPT_POINTER, (ulong)eptp)) {
        wdm::dbg_print("vm_write failed on writing EPT_POINTER");
    }

    return true;
}