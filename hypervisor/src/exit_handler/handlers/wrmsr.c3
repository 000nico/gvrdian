module h_wrmsr;

import bit;
import assembly;
import exit_handler;

// input = ecx
// output edx:eax
fn void handler(exit_handler::GuestRegisters* regs) {
    ulong msr = regs.rcx & 0xFFFFFFFF;
    ulong value = (regs.rdx << 32) | (regs.rax & 0xFFFFFFFF);
    assembly::write_msr((uint)msr, value);
}