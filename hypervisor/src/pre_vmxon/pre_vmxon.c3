module pre_vmxon;

import assembly;
import bit;
import wdm;

fn bool is_vmx_supported(){
    assembly::CpuId regs;
    assembly::get_cpuid(1, 0, &regs);
    wdm::dbg_print("[vmx] cpuid ecx: 0x%x, bit5: %d\n", regs.ecx, bit::bit_get(regs.ecx, 5));
    if (!bit::bit_get(regs.ecx, 5)) {
        wdm::dbg_print("[vmx] FAIL: VMX bit not set in CPUID\n");
        return false;
    }

    ulong ia32_feature_control = assembly::read_msr(0x3A);
    wdm::dbg_print("[vmx] ia32_feature_control: 0x%llx lock=%d vmx_outside_smx=%d\n",
        ia32_feature_control,
        bit::bit_get(ia32_feature_control, 0),
        bit::bit_get(ia32_feature_control, 2));

    if (bit::bit_get(ia32_feature_control, 0)) {
        if (!bit::bit_get(ia32_feature_control, 2)) {
            wdm::dbg_print("[vmx] FAIL: lock bit set but VMX outside SMX disabled\n");
            return false;
        }
    } else {
        ia32_feature_control = bit::bit_set(ia32_feature_control, 2);
        ia32_feature_control = bit::bit_set(ia32_feature_control, 0);
        assembly::write_msr(0x3A, ia32_feature_control);
        wdm::dbg_print("[vmx] wrote ia32_feature_control\n");
    }

    return true;
}

fn void enable_vmx_operation() {
    ulong cr0 = assembly::read_cr0();
    ulong cr0_fixed0 = assembly::read_msr(0x486); // IA32_VMX_CR0_FIXED0
    ulong cr0_fixed1 = assembly::read_msr(0x487); // IA32_VMX_CR0_FIXED1
    
    cr0 = (cr0 & cr0_fixed1) | cr0_fixed0;
    assembly::write_cr0(cr0);

    ulong cr4 = assembly::read_cr4();
    ulong cr4_fixed0 = assembly::read_msr(0x488); // IA32_VMX_CR4_FIXED0
    ulong cr4_fixed1 = assembly::read_msr(0x489); // IA32_VMX_CR4_FIXED1
    
    cr4 = (cr4 & cr4_fixed1) | cr4_fixed0;
    
    cr4 = bit::bit_set(cr4, 13);
    assembly::write_cr4(cr4);
}

fn void* allocate_vmxon_region(){
	wdm::PhysicalAddress_t max_addr;
	max_addr.quad_part = (wdm::Longlong)0xFFFFFFFFFFFFFFFF;

	return wdm::mm_allocate_contiguous_memory(4096, max_addr);
}