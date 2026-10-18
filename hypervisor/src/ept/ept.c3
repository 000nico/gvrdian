module ept;

import wdm;
import eptp;
import assembly;
import vmcs_fields;

fn void setup_ept() {
    Ept_capabilities ec;
    if(ept_is_usable(&ec)) {
        wdm::dbg_print("EPT is usable\n");
    } else {
        wdm::dbg_print("EPT is not usable\n");
    }

    ulong ept_pml4_physical_addr = 0;
    
    Eptp eptp = eptp::get_configured_eptp(ept_pml4_physical_addr, ec);
    assembly::vm_write(vmcs_fields::EPT_POINTER, (ulong)eptp);
}