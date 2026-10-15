module setup_cr_shadow;

import assembly;
import vmcs_fields;

fn void setup_cr_shadow() {
    ulong cr0_real = assembly::read_cr0();
    ulong cr4_real = assembly::read_cr4();

    // CR0 
	ulong wp_bit = (1UL << 16);
    assembly::vm_write(vmcs_fields::CR0_GUEST_HOST_MASK, wp_bit);
    assembly::vm_write(vmcs_fields::CR0_READ_SHADOW, cr0_real);
    
    // CR4 
    ulong vmxe_bit = (1UL << 13);
    assembly::vm_write(vmcs_fields::CR4_GUEST_HOST_MASK, vmxe_bit);
    assembly::vm_write(vmcs_fields::CR4_READ_SHADOW, cr4_real & ~vmxe_bit);
}