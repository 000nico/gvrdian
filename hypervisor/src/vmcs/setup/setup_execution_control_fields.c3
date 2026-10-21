module setup_execution_control_fields;

import assembly;
import vmcs_fields;
import bit;
import vmcs_utils;

fn void setup_execution_control_fields() {
    // pin-based
    uint pinbased_desired = 0;
    uint pinbased_final = vmcs_utils::adjust_controls(pinbased_desired, assembly::read_msr(0x48D));
    assembly::vm_write(vmcs_fields::PIN_BASED_VM_EXEC_CONTROL, pinbased_final);

    // processor-based (primary)
    uint processor_based_desired = 0;
    processor_based_desired = (uint)bit::bit_set(processor_based_desired, 3);  // tsc offsetting
    //processor_based_desired = (uint)bit::bit_set(processor_based_desired, 28); // msr bitmaps
    processor_based_desired = (uint)bit::bit_set(processor_based_desired, 31); // activate secondary controls

    uint processor_based_final = vmcs_utils::adjust_controls(processor_based_desired, assembly::read_msr(0x48E));
    assembly::vm_write(vmcs_fields::CPU_BASED_VM_EXEC_CONTROL, processor_based_final);

    // secondary
    uint secondary_desired = 0;
    
    //secondary_desired = (uint)bit::bit_set(secondary_desired, 1); // ept
    //secondary_desired = (uint)bit::bit_set(secondary_desired, 5); // vpid
    uint secondary_final = vmcs_utils::adjust_controls(secondary_desired, assembly::read_msr(0x48B));
    
    assembly::vm_write(vmcs_fields::SECONDARY_VM_EXEC_CONTROL, secondary_final);

    //assembly::vm_write(vmcs_fields::MSR_BITMAP, msr_bitmap);

    assembly::vm_write(vmcs_fields::TSC_OFFSET, 0);

    // exception bitmap
    assembly::vm_write(vmcs_fields::EXCEPTION_BITMAP, 0);
}