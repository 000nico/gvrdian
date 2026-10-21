module h_externalinterrupt;

import assembly;
import vmcs_fields;

fn void handler() {
    ulong exit_intr_info = 0;
    assembly::vm_read(vmcs_fields::VM_EXIT_INTR_INFO, &exit_intr_info);
    if (exit_intr_info & (1UL << 31)) { // bit 31 = valid
        assembly::vm_write(vmcs_fields::VMENTRY_INTERRUPTION_INFO, exit_intr_info);
    }
}