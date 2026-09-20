module setup_entry_control_fields;

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

fn void setup_entry_control_fields() {
	uint vm_entry_desired = 0;
	vm_entry_desired = (uint)bit::bit_set(vm_entry_desired, 2);  // load debug controls
	vm_entry_desired = (uint)bit::bit_set(vm_entry_desired, 9);  // IA-32e mode guest (64-bit)
	vm_entry_desired = (uint)bit::bit_set(vm_entry_desired, 18); // load IA32_EFER
	uint vm_entry_final = adjust_controls(vm_entry_desired, assembly::readmsr(0x490)); // IA32_VMX_TRUE_ENTRY_CTLS
	assembly::vm_write(vmcs_fields::VM_ENTRY_CONTROLS, vm_entry_final);
}