module setup_host_state;

import vmcs_fields;
import assembly;
import wdm;
import segments;

fn void setup_host_state() {
	// control registers
	assembly::vm_write(vmcs_fields::HOST_CR0, assembly::read_cr0());
	assembly::vm_write(vmcs_fields::HOST_CR3, assembly::read_cr3());
	assembly::vm_write(vmcs_fields::HOST_CR4, assembly::read_cr4());

	// stack
	wdm::PHYSICALADDRESS_t max_addr;
	max_addr.quad_part = (wdm::Longlong)0xFFFFFFFFFFFFFFFF;
	void* host_stack = wdm::mm_allocate_contiguous_memory(0x6000, max_addr);
	ulong host_rsp = (ulong)host_stack + 0x6000;
	assembly::vm_write(vmcs_fields::HOST_RSP, host_rsp);
	assembly::vm_write(vmcs_fields::HOST_RIP, assembly::get_exit_handler_address());

	assembly::vm_write(vmcs_fields::HOST_CS_SELECTOR, assembly::read_cs() & 0xFFF8);
	assembly::vm_write(vmcs_fields::HOST_SS_SELECTOR, assembly::read_ss() & 0xFFF8);
	assembly::vm_write(vmcs_fields::HOST_DS_SELECTOR, assembly::read_ds() & 0xFFF8);
	assembly::vm_write(vmcs_fields::HOST_ES_SELECTOR, assembly::read_es() & 0xFFF8);
	assembly::vm_write(vmcs_fields::HOST_FS_SELECTOR, assembly::read_fs() & 0xFFF8);
	assembly::vm_write(vmcs_fields::HOST_GS_SELECTOR, assembly::read_gs() & 0xFFF8);
	assembly::vm_write(vmcs_fields::HOST_TR_SELECTOR, assembly::read_tr() & 0xFFF8);

	// bases
	assembly::vm_write(vmcs_fields::HOST_FS_BASE,   assembly::read_msr(0xC0000100));
	assembly::vm_write(vmcs_fields::HOST_GS_BASE,   assembly::read_msr(0xC0000101));
	assembly::vm_write(vmcs_fields::HOST_TR_BASE,   segments::get_base(assembly::read_gdt_base(), assembly::read_tr()));
	assembly::vm_write(vmcs_fields::HOST_GDTR_BASE, assembly::read_gdt_base());
	assembly::vm_write(vmcs_fields::HOST_IDTR_BASE, assembly::read_idt_base());

	// MSRs
	assembly::vm_write(vmcs_fields::HOST_IA32_SYSENTER_CS,  assembly::read_msr(0x174));
	assembly::vm_write(vmcs_fields::HOST_IA32_SYSENTER_ESP, assembly::read_msr(0x175));
	assembly::vm_write(vmcs_fields::HOST_IA32_SYSENTER_EIP, assembly::read_msr(0x176));
	assembly::vm_write(vmcs_fields::HOST_IA32_EFER,         assembly::read_msr(0xC0000080));
	assembly::vm_write(vmcs_fields::HOST_IA32_PAT,          assembly::read_msr(0x277));
}