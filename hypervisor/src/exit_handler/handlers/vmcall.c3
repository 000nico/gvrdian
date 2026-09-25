module h_vmcall;

import assembly;
import exit_handler;
import gvrdian;
import global;

// rcx = opcode
// rdx = arg 1
// r8  = arg 2
// r9  = arg 3
// rax = return value
fn void handler(GuestRegisters* registers) {
	ulong opcode    = registers.rcx;
	ulong arg1      = registers.rdx;
	ulong arg2      = registers.r8;
	ulong arg3      = registers.r9;
	ulong ret_value = registers.rax;

	switch(opcode) {
		case 0x1: // ping
			ret_value = 0x999;
		
		case 0x2: // unload
			ret_value = 1;
			gvrdian::driver_unload(global::driver_object);
			
		default:
			ret_value = -1;
	}


	registers.rax = ret_value;
}