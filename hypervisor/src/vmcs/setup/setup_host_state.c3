module setup_host_state;

import vmcs_fields;
import assembly;
import wdm;
import segments;

fn void setup_host_state() {
	assembly::vm_write(vmcs_fields::HOST_CR0, assembly::readcr0());
	assembly::vm_write(vmcs_fields::HOST_CR3, assembly::readcr3());
	assembly::vm_write(vmcs_fields::HOST_CR4, assembly::readcr4());

	wdm::PHYSICALADDRESS_t max_addr;
	max_addr.quad_part = (wdm::Longlong)0xFFFFFFFFFFFFFFFF;
	void* host_stack = wdm::mm_allocate_contiguous_memory(0x6000, max_addr); 
	ulong host_rsp = (ulong)host_stack + 0x6000;
	assembly::vm_write(vmcs_fields::HOST_RSP, host_rsp);
	assembly::vm_write(vmcs_fields::HOST_RIP, assembly::get_exit_handler_address());

	assembly::vm_write(vmcs_fields::HOST_CS_SELECTOR, assembly::readcs());
	assembly::vm_write(vmcs_fields::HOST_SS_SELECTOR, assembly::readss());
	assembly::vm_write(vmcs_fields::HOST_DS_SELECTOR, assembly::readds());
	assembly::vm_write(vmcs_fields::HOST_ES_SELECTOR, assembly::reades());
	assembly::vm_write(vmcs_fields::HOST_FS_SELECTOR, assembly::readfs());
	assembly::vm_write(vmcs_fields::HOST_GS_SELECTOR, assembly::readgs());
	assembly::vm_write(vmcs_fields::HOST_TR_SELECTOR, assembly::readtr());

	assembly::vm_write(vmcs_fields::HOST_FS_BASE, assembly::readmsr(0xC0000100));
	assembly::vm_write(vmcs_fields::HOST_GS_BASE, assembly::readmsr(0xC0000101));
	assembly::vm_write(vmcs_fields::HOST_TR_BASE, segments::get_base(assembly::readgdtbase(), assembly::readtr()));
	assembly::vm_write(vmcs_fields::HOST_GDTR_BASE, assembly::readgdtbase());
	assembly::vm_write(vmcs_fields::HOST_IDTR_BASE, assembly::readidtbase());

	assembly::vm_write(vmcs_fields::HOST_IA32_SYSENTER_CS, assembly::readmsr(0x174));
	assembly::vm_write(vmcs_fields::HOST_IA32_SYSENTER_ESP, assembly::readmsr(0x175));
	assembly::vm_write(vmcs_fields::HOST_IA32_SYSENTER_EIP, assembly::readmsr(0x176));
}