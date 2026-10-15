module h_cpuid;

import exit_handler;
import assembly;
import bit;

const uint CPUID_HV_EBX = 0x7263694D; // "Micr"
const uint CPUID_HV_ECX = 0x666F736F; // "osof"
const uint CPUID_HV_EDX = 0x76682074; // "t hv"


fn void handler(exit_handler::GuestRegisters* regs) {
	uint leaf = (uint)regs.rax;
	uint subleaf = (uint)regs.rcx;

	uint out_eax, out_ebx, out_ecx, out_edx;
	assembly::CpuId registers;

	assembly::get_cpuid(leaf, subleaf, &registers);

	out_eax = registers.eax;
	out_ebx = registers.ebx;
	out_ecx = registers.ecx;
	out_edx = registers.edx;

	// handler
	switch(leaf) {
		case 1:
			out_ecx = (uint)bit::bit_clear(out_ecx, 31);
			out_ecx = (uint)bit::bit_clear(out_ecx, 5);

		case 0x40000000:
			out_eax = 0x40000000;
			out_ebx = CPUID_HV_EBX;
			out_ecx = CPUID_HV_ECX;
			out_edx = CPUID_HV_EDX;

		default:
			// i can't do nathan
	}

	// ret
	regs.rax = out_eax;
	regs.rbx = out_ebx;
	regs.rcx = out_ecx;
	regs.rdx = out_edx;

	// i hope they didn't touch the cpuid.. because i did stuff to it
}