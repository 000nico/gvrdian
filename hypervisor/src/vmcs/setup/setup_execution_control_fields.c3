module setup_execution_control_fields;

import assembly;
import vmcs_fields;
import bit;

fn uint adjust_controls(uint desired, ulong capability_msr) {
	uint result = desired;

	for (int i = 0; i < 32; i++) {
		bool must_be_1 = bit::bit_get(capability_msr, i);
		bool must_be_0 = !bit::bit_get(capability_msr, i + 32);

		if (must_be_1) {
			result = bit::bit_set(result, i);
		}
		if (must_be_0) {
			result = bit::bit_clear(result, i);
		}
	}

	return result;
}

fn void setup_execution_control_fields() {
	// pinbased
	uint pinbased_desired = 0;
	uint pinbased_final = adjust_controls(pinbased_desired, assembly::readmsr(0x48D));
	assembly::vm_write(vmcs_fields::PIN_BASED_VM_EXEC_CONTROL, pinbased_final);

	// processor based primary
	uint processor_based_desired = 0;
	processor_based_desired = bit::bit_set(processor_based_desired, 12); // rdtsc exiting
	processor_based_desired = bit::bit_set(processor_based_desired, 15); // cr3-load exiting
	processor_based_desired = bit::bit_set(processor_based_desired, 16); // cr3-store exiting
	processor_based_desired = bit::bit_set(processor_based_desired, 31); // activate secondary controls

	uint processor_based_final = adjust_controls(processor_based_desired, assembly::readmsr(0x48E));
	assembly::vm_write(vmcs_fields::CPU_BASED_VM_EXEC_CONTROL, processor_based_final);

	// secondary
	uint secondary_desired = 0;
	secondary_desired = bit::bit_set(secondary_desired, 1); // ept
	uint secondary_final = adjust_controls(secondary_desired, assembly::readmsr(0x48B));
	assembly::vm_write(vmcs_fields::SECONDARY_VM_EXEC_CONTROL, secondary_final);

	// exception bitmap
	uint exception_bitmap = 0;
	assembly::vm_write(vmcs_fields::EXCEPTION_BITMAP, exception_bitmap);
}