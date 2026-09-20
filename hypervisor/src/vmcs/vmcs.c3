module vmcs;

import allocate_vmcs;
import setup_vmcs_identifier;
import setup_guest_state;
import setup_host_state;
import setup_execution_control_fields;
import setup_exit_control_fields;
import setup_entry_control_fields;
import ntddk;
import assembly;

fn void setup_vmcs() {
	void* vmcs_virtual_addr = allocate_vmcs();
	void* vmcs_phys_addr = ntddk::mm_get_physical_address(vmcs_virtual_addr);

	// configurate vmcs
	setup_vmcs_identifier::identifier(0, vmcs_phys_addr, vmcs_virtual_addr); // vmclear and vmptrld are executed here

	setup_guest_state::setup_register_state();
	setup_guest_state::setup_non_register_state();
	setup_host_state::setup_host_state();
	setup_execution_control_fields::setup_execution_control_fields();
	setup_exit_control_fields::setup_exit_control_fields();
	setup_entry_control_fields::setup_entry_control_fields();
}