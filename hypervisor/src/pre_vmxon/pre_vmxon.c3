module pre_vmxon;

import assembly;
import bit;
import wdm;

fn bool isVmxSupported(){
	assembly::CpuId regs;
	assembly::get_cpuid(1, 0, &regs);
	if(!bit::bit_get(regs.ecx, 5)) return false;

	ulong ia32_feature_control = assembly::readmsr(0x3A);
	if(bit::bit_get(ia32_feature_control, 0) && !bit::bit_get(ia32_feature_control, 2)) return false;

	if(!bit::bit_get(ia32_feature_control, 0)) {
		ia32_feature_control = bit::bit_set(ia32_feature_control, 2);
		ia32_feature_control = bit::bit_set(ia32_feature_control, 3);
	}

	return true;
}

fn void enable_vmx_operation() {
	ulong cr4 = assembly::readcr4();
	cr4 = bit::bit_set(cr4, 13);
	assembly::writecr4(cr4);
}

fn void* allocate_vmxon_region(){
	wdm::PHYSICALADDRESS_t max_addr;
	max_addr.quad_part = (wdm::Longlong)0xFFFFFFFFFFFFFFFF;

	return wdm::mm_allocate_contiguous_memory(4096, max_addr);
}