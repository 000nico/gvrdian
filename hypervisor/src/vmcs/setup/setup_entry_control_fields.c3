module setup_entry_control_fields;

import assembly;
import vmcs_fields;
import bit;
import vmcs_utils;

fn void setup_entry_control_fields() {
	uint vm_entry_desired = 0;
	
	vm_entry_desired = (uint)bit::bit_set(vm_entry_desired, 2);  // load debug controls
	vm_entry_desired = (uint)bit::bit_set(vm_entry_desired, 9);  // IA-32e mode guest (64-bit)
	vm_entry_desired = (uint)bit::bit_set(vm_entry_desired, 14);  // load ia32_pat
	vm_entry_desired = (uint)bit::bit_set(vm_entry_desired, 18); // load IA32_EFER
	
	uint vm_entry_final = vmcs_utils::adjust_controls(vm_entry_desired,assembly::read_msr(0x490)); // IA32_VMX_TRUE_ENTRY_CTLS
	assembly::vm_write(vmcs_fields::VM_ENTRY_CONTROLS, vm_entry_final);
}