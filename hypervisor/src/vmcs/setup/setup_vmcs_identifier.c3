module setup_vmcs_identifier;

import wdm;
import bit;
import assembly;

fn void identifier(bool shadow_vmcs, ulong vmcs_region_physical, void* vmcs_region_virtual) {
	// bits 0 to 30
	ulong ia32_vmx_basic = assembly::read_msr(0x480);
	uint identifier = 0;

	for(uint i = 0; i < 31; i++) {
		if(bit::bit_get(ia32_vmx_basic, i)){
			identifier = (uint)bit::bit_set(identifier, i);
		} else {
			identifier = (uint)bit::bit_clear(identifier, i);		
		}
	}

	if (shadow_vmcs) {
		identifier = (uint)bit::bit_set(identifier, 31);
	} else {
		identifier = (uint)bit::bit_clear(identifier, 31);
	}

	wdm::rtl_zero_memory(vmcs_region_virtual, 4096);
	
	// uint because we write 32 bits
	uint* region_as_uint = (uint*)vmcs_region_virtual;
	*region_as_uint = identifier;

	// pass by reference because the asm derefs it with [rcx]
	if(!assembly::vm_clear(&vmcs_region_physical)) wdm::dbg_print("failed to execute vm_clear");
	if(!assembly::vm_ptrld(&vmcs_region_physical)) wdm::dbg_print("failed to execute vm_ptrld");
}