module allocate_vmcs;

import wdm;

fn void* allocate_vmcs() {
	PHYSICALADDRESS_t max_addr;
	max_addr.QuadPart = 0xFFFFFFFFFFFFFFFF;

	return wdm::mm_allocate_contiguous_memory(4096, max_addr);
}