module setup_exit_control_fields;

import assembly;
import vmcs_fields;
import bit;
import vmcs_utils;

fn void setup_exit_control_fields() {
	uint vm_exit_desired = 0;
	vm_exit_desired = (uint)bit::bit_set(vm_exit_desired, 2); 
	vm_exit_desired = (uint)bit::bit_set(vm_exit_desired, 9);  // host address-space size (64-bit)
	vm_exit_desired = (uint)bit::bit_set(vm_exit_desired, 15); 
	vm_exit_desired = (uint)bit::bit_set(vm_exit_desired, 18); // save IA32_PAT
	vm_exit_desired = (uint)bit::bit_set(vm_exit_desired, 19); // load IA32_PAT (host PAT)
	vm_exit_desired = (uint)bit::bit_set(vm_exit_desired, 14); 
	vm_exit_desired = (uint)bit::bit_set(vm_exit_desired, 20); // save IA32_EFER
	vm_exit_desired = (uint)bit::bit_set(vm_exit_desired, 21); // load IA32_EFER
	uint vm_exit_final = vmcs_utils::adjust_controls(vm_exit_desired, assembly::readmsr(0x48F)); // IA32_VMX_TRUE_EXIT_CTLS
	assembly::vm_write(vmcs_fields::VM_EXIT_CONTROLS, vm_exit_final);
}