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
	assembly::vm_write(vmcs_fields::GUEST_CR0, assembly::readcr0());
	assembly::vm_write(vmcs_fields::GUEST_CR3, assembly::readcr3());
	assembly::vm_write(vmcs_fields::GUEST_CR4, assembly::readcr4());

	assembly::vm_write(vmcs_fields::GUEST_DR7, assembly::readdr7());

	assembly::vm_write(vmcs_fields::GUEST_RSP, assembly::readrsp());
	assembly::vm_write(vmcs_fields::GUEST_RIP, assembly::readrip());
	assembly::vm_write(vmcs_fields::GUEST_RFLAGS, assembly::readrflags());

	ulong gdt_base = assembly::readgdtbase();

	write_segment(gdt_base, assembly::readcs(), vmcs_fields::GUEST_CS_BASE, vmcs_fields::GUEST_CS_LIMIT, vmcs_fields::GUEST_CS_AR_BYTES, vmcs_fields::GUEST_CS_SELECTOR);
	write_segment(gdt_base, assembly::readss(), vmcs_fields::GUEST_SS_BASE, vmcs_fields::GUEST_SS_LIMIT, vmcs_fields::GUEST_SS_AR_BYTES, vmcs_fields::GUEST_SS_SELECTOR);
	write_segment(gdt_base, assembly::readds(), vmcs_fields::GUEST_DS_BASE, vmcs_fields::GUEST_DS_LIMIT, vmcs_fields::GUEST_DS_AR_BYTES, vmcs_fields::GUEST_DS_SELECTOR);
	write_segment(gdt_base, assembly::reades(), vmcs_fields::GUEST_ES_BASE, vmcs_fields::GUEST_ES_LIMIT, vmcs_fields::GUEST_ES_AR_BYTES, vmcs_fields::GUEST_ES_SELECTOR);
	write_segment(gdt_base, assembly::readtr(), vmcs_fields::GUEST_TR_BASE, vmcs_fields::GUEST_TR_LIMIT, vmcs_fields::GUEST_TR_AR_BYTES, vmcs_fields::GUEST_TR_SELECTOR);

	// FS & GS
	ushort fs_sel = assembly::readfs();
	ushort gs_sel = assembly::readgs();

	assembly::vm_write(vmcs_fields::GUEST_FS_SELECTOR, fs_sel);
	assembly::vm_write(vmcs_fields::GUEST_FS_LIMIT, segment_descriptor::get_limit(gdt_base, fs_sel));
	assembly::vm_write(vmcs_fields::GUEST_FS_AR_BYTES, segment_descriptor::get_access_rights(gdt_base, fs_sel));
	assembly::vm_write(vmcs_fields::GUEST_FS_BASE, assembly::readmsr(0xC0000100));

	assembly::vm_write(vmcs_fields::GUEST_GS_SELECTOR, gs_sel);
	assembly::vm_write(vmcs_fields::GUEST_GS_LIMIT, segment_descriptor::get_limit(gdt_base, gs_sel));
	assembly::vm_write(vmcs_fields::GUEST_GS_AR_BYTES, segment_descriptor::get_access_rights(gdt_base, gs_sel));
	assembly::vm_write(vmcs_fields::GUEST_GS_BASE, assembly::readmsr(0xC0000101));

	// gdtr, idtr
	assembly::vm_write(vmcs_fields::GUEST_GDTR_BASE, assembly::readgdtbase());
	assembly::vm_write(vmcs_fields::GUEST_GDTR_LIMIT, assembly::readgdtlimit());
	assembly::vm_write(vmcs_fields::GUEST_IDTR_BASE, assembly::readidtbase());
	assembly::vm_write(vmcs_fields::GUEST_IDTR_LIMIT, assembly::readidtlimit());

	assembly::vm_write(vmcs_fields::GUEST_IA32_DEBUGCTL, assembly::readmsr(0x1D9));
	assembly::vm_write(vmcs_fields::GUEST_SYSENTER_CS, assembly::readmsr(0x174));
	assembly::vm_write(vmcs_fields::GUEST_SYSENTER_ESP, assembly::readmsr(0x175));
	assembly::vm_write(vmcs_fields::GUEST_SYSENTER_EIP, assembly::readmsr(0x176));
	assembly::vm_write(vmcs_fields::GUEST_IA32_EFER, assembly::readmsr(0xC0000080));
}

fn void setup_non_register_state() {
assembly::vm_write(vmcs_fields::GUEST_ACTIVITY_STATE, 0);
assembly::vm_write(vmcs_fields::GUEST_INTERRUPTIBILITY_INFO, 0);
assembly::vm_write(vmcs_fields::GUEST_PENDING_DEBUG_EXCEPTIONS, 0);
assembly::vm_write(vmcs_fields::VMCS_LINK_POINTER, 0xFFFFFFFFFFFFFFFF);
}