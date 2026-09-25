module exit_handler;

import assembly;
import vmcs_fields;
import wdm;

import h_cpuid;
import h_vmcall;

struct GuestRegisters {
	ulong rax;
	ulong rbx;
	ulong rcx;
	ulong rdx;
	ulong rsp_dummy;  // push rbp
	ulong rbp;
	ulong rsi;
	ulong rdi;
	ulong r8;
	ulong r9;
	ulong r10;
	ulong r11;
	ulong r12;
	ulong r13;
	ulong r14;
	ulong r15;
}

fn void exit_handler(GuestRegisters* regs) @export("exit_handler_dispatch") {
	ulong reason;
	assembly::vm_read(vmcs_fields::VM_EXIT_REASON, &reason);
	wdm::dbg_print("Entering exit handler, reason: %d", reason);
	
	dispatcher(reason, regs);

	// advance rip
	ulong rip, instr_len;
	assembly::vm_read(vmcs_fields::GUEST_RIP, &rip);
	assembly::vm_read(vmcs_fields::VM_EXIT_INSTRUCTION_LEN, &instr_len);
	assembly::vm_write(vmcs_fields::GUEST_RIP, rip + instr_len);
}

fn void dispatcher(ulong reason, GuestRegisters* regs) {
	switch(reason & 0xFFFF) {
		case 10: h_cpuid::handler(regs);
		case 18: h_vmcall::handler(regs);
		default: // unhandled
	}
}