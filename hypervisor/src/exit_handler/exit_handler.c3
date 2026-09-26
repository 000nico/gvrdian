module exit_handler;

import assembly;
import vmcs_fields;
import wdm;
import event_injector;

import h_cpuid;
import h_vmcall;
import h_rdmsr;

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
	ulong tsc_start = assembly::read_tsc();

	ulong reason;
	assembly::vm_read(vmcs_fields::VM_EXIT_REASON, &reason);
	wdm::dbg_print("Entering exit handler, reason: %d", reason);
	
	bool advance_rip = dispatcher(reason, regs);

	if(advance_rip) {
		ulong rip, instr_len;
		assembly::vm_read(vmcs_fields::GUEST_RIP, &rip);
		assembly::vm_read(vmcs_fields::VM_EXIT_INSTRUCTION_LEN, &instr_len);
		assembly::vm_write(vmcs_fields::GUEST_RIP, rip + instr_len);
	}

	ulong tsc_end = assembly::read_tsc();
	ulong exit_cost = tsc_end - tsc_start;

	ulong current_offset;
	assembly::vm_read(vmcs_fields::TSC_OFFSET, &current_offset);
	assembly::vm_write(vmcs_fields::TSC_OFFSET, current_offset - exit_cost);
}

// if 1 -> advances rip, if 0 -> does not advance rip
fn bool dispatcher(ulong reason, GuestRegisters* regs) {
	switch(reason & 0xFFFF) {
		case 10: 
			h_cpuid::handler(regs);
			return true;
		case 18: 
			h_vmcall::handler(regs);
			return true;

		// vmx, and others that fall on UD no advance rip
		case 19: // vmclear
        case 20: // vmlaunch
        case 21: // vmptrld
        case 22: // vmptrst
        case 23: // vmread
        case 24: // vmresume
        case 25: // vmwrite
        case 26: // vmxoff
        case 27: // vmxon
        case 50: // invept
        case 53: // invvpid
        case 11: // getsec
        case 13: // invd
        case 74: // seamcall
        case 77: // tdcall
			event_injector::inject_ud();
			return true;

		case 31:
			rdmsr::handler(regs);
			return true;

		case 28: // MOV CRx, RAX fault
			h_cr_fault::handler(regs);
			return true;
			
		default: // unhandled
			wdm::dbg_print("Unhandled exit reason %d", reason);
			return true;
	}
}