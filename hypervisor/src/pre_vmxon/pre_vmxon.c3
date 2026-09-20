module pre_vmxon;

import std::core::cpudetect;
import assembly;
import bit;

fn bool isVmxSupported(){
	CpuId regs = cpudetect::x86_cpuid(1, 0);
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
	PHYSICALADDRESS_t max_addr;
	max_addr.QuadPart = 0xFFFFFFFFFFFFFFFF;

	return wdm::mm_allocate_contiguous_memory(4096, max_addr);
}