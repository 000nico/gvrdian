module h_rdmsr;

import bit;
import assembly;

// input = ecx
// output edx:eax
fn void handler(GuestRegisters* registers) {
	uint msr_index = (uint)registers.rcx;

	ulong value = assembly::read_msr(msr_index);
	regsisters.rax = value & 0xFFFFFFFF; // bits 0-31
	regsisters.rdx = (value >> 32) & 0xFFFFFFFF; // bits 32-63

	switch(msr_index) {
		case 0x3A: // IA32_FEATURE_CONTROL
			regsisters.rax = bit::set(registers.rax, 0);
			regsisters.rax = bit::clear(registers.rax, 1);
			regsisters.rax = bit::clear(registers.rax, 2);
			
		default: // pass-through is already done
			break;
	}
}