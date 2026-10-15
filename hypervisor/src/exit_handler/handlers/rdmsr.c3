module h_rdmsr;

import bit;
import assembly;
import exit_handler;

// input = ecx
// output edx:eax
fn void handler(exit_handler::GuestRegisters* registers) {
	uint msr_index = (uint)registers.rcx;

	ulong value = assembly::read_msr(msr_index);
	registers.rax = value & 0xFFFFFFFF; // bits 0-31
	registers.rdx = (value >> 32) & 0xFFFFFFFF; // bits 32-63

	switch(msr_index) {
		case 0x3A: // IA32_FEATURE_CONTROL
			registers.rax = bit::bit_set(registers.rax, 0);
			registers.rax = bit::bit_clear(registers.rax, 1);
			registers.rax = bit::bit_clear(registers.rax, 2);
			
		default: // pass-through is already done
			break;
	}
}