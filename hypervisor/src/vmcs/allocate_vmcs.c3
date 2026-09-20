module allocate_vmcs;

import wdm;

fn void* allocate_vmcs() {
	wdm::PHYSICALADDRESS_t max_addr;
	max_addr.quad_part = (wdm::Longlong)0xFFFFFFFFFFFFFFFF;

	return wdm::mm_allocate_contiguous_memory(4096, max_addr);
}