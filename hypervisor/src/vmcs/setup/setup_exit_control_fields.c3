module setup_exit_control_fields;

import assembly;
import vmcs_fields;
import bit;

fn uint adjust_controls(uint desired, ulong capability_msr) {
	uint result = desired;

	for (int i = 0; i < 32; i++) {
		bool must_be_1 = bit::bit_get(capability_msr, i);
		bool must_be_0 = !bit::bit_get(capability_msr, i + 32);

		if (must_be_1) {
			result = (uint)bit::bit_set(result, i);
		}
		if (must_be_0) {
			result = (uint)bit::bit_clear(result, i);
		}
	}

	return result;
}

fn void setup_exit_control_fields() {
	uint vm_exit_desired = 0;
	vm_exit_desired = (uint)bit::bit_set(vm_exit_desired, 2); 
	vm_exit_desired = (uint)bit::bit_set(vm_exit_desired, 9);  // host address-space size (64-bit)
	vm_exit_desired = (uint)bit::bit_set(vm_exit_desired, 15); 
	vm_exit_desired = (uint)bit::bit_set(vm_exit_desired, 20); // save IA32_EFER
	vm_exit_desired = (uint)bit::bit_set(vm_exit_desired, 21); // load IA32_EFER
	uint vm_exit_final = adjust_controls(vm_exit_desired, assembly::readmsr(0x48F)); // IA32_VMX_TRUE_EXIT_CTLS
	assembly::vm_write(vmcs_fields::VM_EXIT_CONTROLS, vm_exit_final);
}