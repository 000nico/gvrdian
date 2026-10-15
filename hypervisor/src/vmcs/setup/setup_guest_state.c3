module setup_guest_state;

import vmcs_fields;
import assembly;
import segments;

fn void write_segment(ulong gdt_base, ushort selector, ulong base_field, ulong limit_field, ulong access_field, ulong selector_field) {
	assembly::vm_write(selector_field, selector);
	assembly::vm_write(base_field, segments::get_base(gdt_base, selector));
	assembly::vm_write(limit_field, segments::get_limit(gdt_base, selector));
	assembly::vm_write(access_field, segments::get_access_rights(gdt_base, selector));
}

fn void setup_register_state() {
	assembly::vm_write(vmcs_fields::GUEST_CR0, assembly::read_cr0());
	assembly::vm_write(vmcs_fields::GUEST_CR3, assembly::read_cr3());
	assembly::vm_write(vmcs_fields::GUEST_CR4, assembly::read_cr4());

	assembly::vm_write(vmcs_fields::GUEST_DR7, assembly::read_dr7());

	assembly::vm_write(vmcs_fields::GUEST_RSP, assembly::read_rsp());
	assembly::vm_write(vmcs_fields::GUEST_RIP, assembly::read_rip());
	assembly::vm_write(vmcs_fields::GUEST_RFLAGS, assembly::read_rflags());

	ulong gdt_base = assembly::read_gdt_base();

	write_segment(gdt_base, assembly::read_cs(), vmcs_fields::GUEST_CS_BASE, vmcs_fields::GUEST_CS_LIMIT, vmcs_fields::GUEST_CS_AR_BYTES, vmcs_fields::GUEST_CS_SELECTOR);
	write_segment(gdt_base, assembly::read_ss(), vmcs_fields::GUEST_SS_BASE, vmcs_fields::GUEST_SS_LIMIT, vmcs_fields::GUEST_SS_AR_BYTES, vmcs_fields::GUEST_SS_SELECTOR);
	write_segment(gdt_base, assembly::read_ds(), vmcs_fields::GUEST_DS_BASE, vmcs_fields::GUEST_DS_LIMIT, vmcs_fields::GUEST_DS_AR_BYTES, vmcs_fields::GUEST_DS_SELECTOR);
	write_segment(gdt_base, assembly::read_es(), vmcs_fields::GUEST_ES_BASE, vmcs_fields::GUEST_ES_LIMIT, vmcs_fields::GUEST_ES_AR_BYTES, vmcs_fields::GUEST_ES_SELECTOR);
	write_segment(gdt_base, assembly::read_tr(), vmcs_fields::GUEST_TR_BASE, vmcs_fields::GUEST_TR_LIMIT, vmcs_fields::GUEST_TR_AR_BYTES, vmcs_fields::GUEST_TR_SELECTOR);

	// FS & GS
	ushort fs_sel = assembly::read_fs();
	ushort gs_sel = assembly::read_gs();

	assembly::vm_write(vmcs_fields::GUEST_FS_SELECTOR, fs_sel);
	assembly::vm_write(vmcs_fields::GUEST_FS_LIMIT, segments::get_limit(gdt_base, fs_sel));
	assembly::vm_write(vmcs_fields::GUEST_FS_AR_BYTES, segments::get_access_rights(gdt_base, fs_sel));
	assembly::vm_write(vmcs_fields::GUEST_FS_BASE, assembly::read_msr(0xC0000100));

	assembly::vm_write(vmcs_fields::GUEST_GS_SELECTOR, gs_sel);
	assembly::vm_write(vmcs_fields::GUEST_GS_LIMIT, segments::get_limit(gdt_base, gs_sel));
	assembly::vm_write(vmcs_fields::GUEST_GS_AR_BYTES, segments::get_access_rights(gdt_base, gs_sel));
	assembly::vm_write(vmcs_fields::GUEST_GS_BASE, assembly::read_msr(0xC0000101));

	// gdtr, idtr
	assembly::vm_write(vmcs_fields::GUEST_GDTR_BASE, assembly::read_gdt_base());
	assembly::vm_write(vmcs_fields::GUEST_GDTR_LIMIT, assembly::read_gdt_limit());
	assembly::vm_write(vmcs_fields::GUEST_IDTR_BASE, assembly::read_idt_base());
	assembly::vm_write(vmcs_fields::GUEST_IDTR_LIMIT, assembly::read_idt_limit());

	assembly::vm_write(vmcs_fields::GUEST_IA32_DEBUGCTL, assembly::read_msr(0x1D9));
	assembly::vm_write(vmcs_fields::GUEST_SYSENTER_CS, assembly::read_msr(0x174));
	assembly::vm_write(vmcs_fields::GUEST_SYSENTER_ESP, assembly::read_msr(0x175));
	assembly::vm_write(vmcs_fields::GUEST_SYSENTER_EIP, assembly::read_msr(0x176));
	assembly::vm_write(vmcs_fields::GUEST_IA32_EFER, assembly::read_msr(0xC0000080));
	assembly::vm_write(vmcs_fields::GUEST_IA32_PAT, assembly::read_msr(0x277));
}

fn void setup_non_register_state() {
	assembly::vm_write(vmcs_fields::GUEST_ACTIVITY_STATE, 0);
	assembly::vm_write(vmcs_fields::GUEST_INTERRUPTIBILITY_INFO, 0);
	assembly::vm_write(vmcs_fields::GUEST_PENDING_DEBUG_EXCEPTIONS, 0);
	assembly::vm_write(vmcs_fields::VMCS_LINK_POINTER, 0xFFFFFFFFFFFFFFFF);

    assembly::vm_write(vmcs_fields::GUEST_LDTR_SELECTOR, 0);
    assembly::vm_write(vmcs_fields::GUEST_LDTR_BASE, 0);
    assembly::vm_write(vmcs_fields::GUEST_LDTR_LIMIT, 0);
    assembly::vm_write(vmcs_fields::GUEST_LDTR_AR_BYTES, 0x10000);
}