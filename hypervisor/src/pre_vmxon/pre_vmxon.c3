module pre_vmxon;

import assembly;
import bit;
import wdm;

fn bool isVmxSupported(){
    assembly::CpuId regs;
    assembly::get_cpuid(1, 0, &regs);
    if (!bit::bit_get(regs.ecx, 5)) return false;

    ulong ia32_feature_control = assembly::readmsr(0x3A);
    
    if (bit::bit_get(ia32_feature_control, 0)) {
        if (!bit::bit_get(ia32_feature_control, 2)) return false;
    } else {
        ia32_feature_control = bit::bit_set(ia32_feature_control, 2); // Enable VMX outside SMX
        ia32_feature_control = bit::bit_set(ia32_feature_control, 0); // Lock bit
        assembly::writemsr(0x3A, ia32_feature_control);
    }

    return true;
}

fn void enable_vmx_operation() {
    ulong cr0 = assembly::readcr0();
    ulong cr0_fixed0 = assembly::readmsr(0x486); // IA32_VMX_CR0_FIXED0
    ulong cr0_fixed1 = assembly::readmsr(0x487); // IA32_VMX_CR0_FIXED1
    
    cr0 = (cr0 & cr0_fixed1) | cr0_fixed0;
    assembly::writecr0(cr0);

    ulong cr4 = assembly::readcr4();
    ulong cr4_fixed0 = assembly::readmsr(0x488); // IA32_VMX_CR4_FIXED0
    ulong cr4_fixed1 = assembly::readmsr(0x489); // IA32_VMX_CR4_FIXED1
    
    cr4 = (cr4 & cr4_fixed1) | cr4_fixed0;
    
    cr4 = bit::bit_set(cr4, 13);
    assembly::writecr4(cr4);
}

fn void* allocate_vmxon_region(){
	wdm::PHYSICALADDRESS_t max_addr;
	max_addr.quad_part = (wdm::Longlong)0xFFFFFFFFFFFFFFFF;

	return wdm::mm_allocate_contiguous_memory(4096, max_addr);
}