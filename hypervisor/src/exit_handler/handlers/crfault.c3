module h_cr_fault;

import assembly;
import vmcs_fields;
import exit_handler;

fn void handler(GuestRegisters* registers) {
    ulong qualification;
    assembly::vm_read(vmcs_fields::EXIT_QUALIFICATION, &qualification);

    ulong cr_number   = qualification & 0xF;         // bits 3:0
    ulong access_type = (qualification >> 4) & 0x3;  // bits 5:4
    ulong gpr_index   = (qualification >> 8) & 0xF;  // bits 11:8

    if (access_type != 0) return;

    ulong new_value = get_gpr(registers, gpr_index);

    switch(cr_number) {
        case 0: h_cr0_write(registers, new_value);
        case 4: h_cr4_write(registers, new_value);
    }
}

fn void h_cr0_write(GuestRegisters* registers, ulong new_value) {
    ulong real_cr0 = assembly::readcr0();
    ulong wp_bit   = (1UL << 16);

    ulong hw_value = (real_cr0 & wp_bit) | (new_value & ~wp_bit);
    assembly::writecr0(hw_value);

    assembly::vm_write(vmcs_fields::CR0_READ_SHADOW, new_value);
}

fn void h_cr4_write(GuestRegisters* registers, ulong new_value) {
    ulong real_cr4  = assembly::readcr4();
    ulong vmxe_bit  = (1UL << 13);

    ulong hw_value = (real_cr4 & vmxe_bit) | (new_value & ~vmxe_bit);
    assembly::writecr4(hw_value);

    assembly::vm_write(vmcs_fields::CR4_READ_SHADOW, new_value);
}

fn ulong get_gpr(GuestRegisters* registers, ulong index) {
    switch(index) {
        case 0:  return registers.rax;
        case 1:  return registers.rcx;
        case 2:  return registers.rdx;
        case 3:  return registers.rbx;
        case 4:  return registers.rsp_dummy;
        case 5:  return registers.rbp;
        case 6:  return registers.rsi;
        case 7:  return registers.rdi;
        case 8:  return registers.r8;
        case 9:  return registers.r9;
        case 10: return registers.r10;
        case 11: return registers.r11;
        case 12: return registers.r12;
        case 13: return registers.r13;
        case 14: return registers.r14;
        case 15: return registers.r15;
        default: return 0;
    }
}