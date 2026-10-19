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
    EptPml4Table* ept_pml4_physical_addr = null;
    map_ept::map_tables(caps, &ept_pml4_physical_addr); // receives a double pointer
    
    // configure eptp
    Eptp eptp = eptp::get_configured_eptp((ulong)ept_pml4_physical_addr, caps);
    assembly::vm_write(vmcs_fields::EPT_POINTER, (ulong)eptp);

    return true;
}