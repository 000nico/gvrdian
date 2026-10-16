module vmcs;

import allocate_vmcs;
import setup_vmcs_identifier;
import setup_guest_state;
import setup_host_state;
import setup_execution_control_fields;
import setup_exit_control_fields;
import setup_entry_control_fields;
import setup_cr_shadow;
import wdm;
import assembly;

fn void setup_vmcs() {
	void* vmcs_virtual_addr = allocate_vmcs::allocate_vmcs();
	ulong vmcs_phys_addr = (ulong)wdm::mm_get_physical_address(vmcs_virtual_addr).quad_part;

	// configure the vmcs
	setup_vmcs_identifier::identifier(false, vmcs_phys_addr, vmcs_virtual_addr); // vmclear and vmptrld are executed here

	setup_cr_shadow::setup_cr_shadow();
	setup_guest_state::setup_register_state();
	setup_guest_state::setup_non_register_state();
	setup_host_state::setup_host_state();
	setup_execution_control_fields::setup_execution_control_fields();
	setup_exit_control_fields::setup_exit_control_fields();
	setup_entry_control_fields::setup_entry_control_fields();
}
