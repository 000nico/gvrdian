module win32::mem;

// Type Aliases & Callbacks
alias Pwin32MemoryRangeEntry = Win32MemoryRangeEntry*;
alias BadMemoryCallbackRoutine = fn void();
alias PbadMemoryCallbackRoutine = fn void();
alias Uint = uint;
alias SizeT = ulong;
alias Dword = CULong;
alias PulongPtr = ulong*;
alias Ulong = CULong;
alias PsecurityAttributes = SecurityAttributes*;
alias Lpcwstr = Wchar*;
alias PmemoryBasicInformation = MemoryBasicInformation*;
alias UlongPtr = ulong;
alias Lpdword = Dword*;
alias Handle = void*;
alias Pvoid = void*;
alias Pdword = Dword*;
alias LpsecurityAttributes = SecurityAttributes*;
alias PsizeT = UlongPtr*;
alias PcfgCallTargetInfo = CfgCallTargetInfo*;
alias Lpvoid = void*;
alias Pbool = Winbool*;
alias Pcwstr = Wchar*;
alias Pulong = Ulong*;
alias Winbool = int;
alias Lpcvoid = void*;
alias UlongVT = ulong;

enum MemoryResourceNotificationType
{
	LOWMEMORYRESOURCENOTIFICATION,
	HIGHMEMORYRESOURCENOTIFICATION
}

enum Win32MemoryInformationClass
{
	MEMORYREGIONINFO
}

constdef OfferPriority : int
{
	VMOFFERPRIORITYVERYLOW = 1,
	VMOFFERPRIORITYLOW = 2,
	VMOFFERPRIORITYBELOWNORMAL = 3,
	VMOFFERPRIORITYNORMAL = 4
}

struct Win32MemoryRangeEntry
{
	void* virtual_address;
	ulong number_of_bytes;
}

struct Win32MemoryRegionInformation
{
	void* allocation_base;
	CULong allocation_protect;
	void* _field3;
	ulong region_size;
	ulong commit_size;
}

struct SecurityAttributes
{
	CULong n_length;
	void* lp_security_descriptor;
	int b_inherit_handle;
}

struct MemExtendedParameter
{
	void* _field2;
	void* _field6;
}

struct Wchar { void* _unused; }

struct MemoryBasicInformation { void* _unused; }

struct CfgCallTargetInfo { void* _unused; }

// Functions
extern fn Winbool virtual_free(void* lp_address, ulong dw_size, CULong dw_free_type) @cname("VirtualFree");
extern fn Lpvoid virtual_alloc(void* lp_address, ulong dw_size, CULong fl_allocation_type, CULong fl_protect) @cname("VirtualAlloc");
extern fn Lpvoid virtual_alloc_ex(void* h_process, void* lp_address, ulong dw_size, CULong fl_allocation_type, CULong fl_protect) @cname("VirtualAllocEx");
extern fn SizeT virtual_query(void* lp_address, PmemoryBasicInformation lp_buffer, ulong dw_length) @cname("VirtualQuery");
extern fn Winbool flush_view_of_file(void* lp_base_address, ulong dw_number_of_bytes_to_flush) @cname("FlushViewOfFile");
extern fn Winbool unmap_view_of_file(void* lp_base_address) @cname("UnmapViewOfFile");
extern fn Winbool unmap_view_of_file2(void* process, void* base_address, CULong unmap_flags) @cname("UnmapViewOfFile2");
extern fn Handle create_file_mapping_from_app(void* h_file, PsecurityAttributes security_attributes, CULong page_protection, ulong maximum_size, Pcwstr name) @cname("CreateFileMappingFromApp");
extern fn Pvoid map_view_of_file_from_app(void* h_file_mapping_object, CULong desired_access, ulong file_offset, ulong number_of_bytes_to_map) @cname("MapViewOfFileFromApp");
extern fn Winbool virtual_unlock_ex(void* process, void* address, ulong size) @cname("VirtualUnlockEx");
extern fn Winbool set_process_valid_call_targets(void* h_process, void* virtual_address, ulong region_size, CULong number_of_offsets, PcfgCallTargetInfo offset_information) @cname("SetProcessValidCallTargets");
extern fn Winbool set_process_valid_call_targets_for_mapped_view(void* process, void* virtual_address, ulong region_size, CULong number_of_offsets, PcfgCallTargetInfo offset_information, void* section, ulong expected_file_offset) @cname("SetProcessValidCallTargetsForMappedView");
extern fn Pvoid virtual_alloc_from_app(void* base_address, ulong size, CULong allocation_type, CULong protection) @cname("VirtualAllocFromApp");
extern fn Winbool virtual_protect_from_app(void* lp_address, ulong dw_size, CULong fl_new_protect, Pulong lpfl_old_protect) @cname("VirtualProtectFromApp");
extern fn Handle open_file_mapping_from_app(CULong desired_access, int inherit_handle, Pcwstr name) @cname("OpenFileMappingFromApp");
extern fn Pvoid virtual_alloc2_from_app(void* process, void* base_address, ulong size, CULong allocation_type, CULong page_protection, MemExtendedParameter* extended_parameters, CULong parameter_count) @cname("VirtualAlloc2FromApp");
extern fn Pvoid map_view_of_file3_from_app(void* file_mapping, void* process, void* base_address, ulong offset, ulong view_size, CULong allocation_type, CULong page_protection, MemExtendedParameter* extended_parameters, CULong parameter_count) @cname("MapViewOfFile3FromApp");
extern fn Winbool virtual_protect(void* lp_address, ulong dw_size, CULong fl_new_protect, Pdword lpfl_old_protect) @cname("VirtualProtect");
extern fn Winbool virtual_protect_ex(void* h_process, void* lp_address, ulong dw_size, CULong fl_new_protect, Pdword lpfl_old_protect) @cname("VirtualProtectEx");
extern fn SizeT virtual_query_ex(void* h_process, void* lp_address, PmemoryBasicInformation lp_buffer, ulong dw_length) @cname("VirtualQueryEx");
extern fn Winbool read_process_memory(void* h_process, void* lp_base_address, void* lp_buffer, ulong n_size, SizeT* lp_number_of_bytes_read) @cname("ReadProcessMemory");
extern fn Winbool write_process_memory(void* h_process, void* lp_base_address, void* lp_buffer, ulong n_size, SizeT* lp_number_of_bytes_written) @cname("WriteProcessMemory");
extern fn Handle create_file_mapping_w(void* h_file, LpsecurityAttributes lp_file_mapping_attributes, CULong fl_protect, CULong dw_maximum_size_high, CULong dw_maximum_size_low, Lpcwstr lp_name) @cname("CreateFileMappingW");
extern fn Handle open_file_mapping_w(CULong dw_desired_access, int b_inherit_handle, Lpcwstr lp_name) @cname("OpenFileMappingW");
extern fn Lpvoid map_view_of_file(void* h_file_mapping_object, CULong dw_desired_access, CULong dw_file_offset_high, CULong dw_file_offset_low, ulong dw_number_of_bytes_to_map) @cname("MapViewOfFile");
extern fn Lpvoid map_view_of_file_ex(void* h_file_mapping_object, CULong dw_desired_access, CULong dw_file_offset_high, CULong dw_file_offset_low, ulong dw_number_of_bytes_to_map, void* lp_base_address) @cname("MapViewOfFileEx");
extern fn Winbool virtual_lock(void* lp_address, ulong dw_size) @cname("VirtualLock");
extern fn Winbool virtual_unlock(void* lp_address, ulong dw_size) @cname("VirtualUnlock");
extern fn Handle create_memory_resource_notification(MemoryResourceNotificationType notification_type) @cname("CreateMemoryResourceNotification");
extern fn Winbool query_memory_resource_notification(void* resource_notification_handle, Pbool resource_state) @cname("QueryMemoryResourceNotification");
extern fn Winbool get_system_file_cache_size(PsizeT lp_minimum_file_cache_size, PsizeT lp_maximum_file_cache_size, Pdword lp_flags) @cname("GetSystemFileCacheSize");
extern fn Winbool set_system_file_cache_size(ulong minimum_file_cache_size, ulong maximum_file_cache_size, CULong flags) @cname("SetSystemFileCacheSize");
extern fn Winbool allocate_user_physical_pages(void* h_process, ulong* number_of_pages, ulong* page_array) @cname("AllocateUserPhysicalPages");
extern fn Winbool free_user_physical_pages(void* h_process, ulong* number_of_pages, ulong* page_array) @cname("FreeUserPhysicalPages");
extern fn Winbool map_user_physical_pages(void* virtual_address, ulong number_of_pages, ulong* page_array) @cname("MapUserPhysicalPages");
extern fn Winbool allocate_user_physical_pages_numa(void* h_process, ulong* number_of_pages, ulong* page_array, CULong nnd_preferred) @cname("AllocateUserPhysicalPagesNuma");
extern fn Handle create_file_mapping_numa_w(void* h_file, LpsecurityAttributes lp_file_mapping_attributes, CULong fl_protect, CULong dw_maximum_size_high, CULong dw_maximum_size_low, Lpcwstr lp_name, CULong nnd_preferred) @cname("CreateFileMappingNumaW");
extern fn Lpvoid virtual_alloc_ex_numa(void* h_process, void* lp_address, ulong dw_size, CULong fl_allocation_type, CULong fl_protect, CULong nnd_preferred) @cname("VirtualAllocExNuma");
extern fn Winbool get_memory_error_handling_capabilities(Pulong capabilities) @cname("GetMemoryErrorHandlingCapabilities");
extern fn Winbool prefetch_virtual_memory(void* h_process, ulong number_of_entries, Pwin32MemoryRangeEntry virtual_addresses, CULong flags) @cname("PrefetchVirtualMemory");
extern fn Pvoid register_bad_memory_notification(PbadMemoryCallbackRoutine callback) @cname("RegisterBadMemoryNotification");
extern fn Winbool unregister_bad_memory_notification(void* registration_handle) @cname("UnregisterBadMemoryNotification");
extern fn Winbool query_virtual_memory_information(void* process, void* virtual_address, Win32MemoryInformationClass memory_information_class, void* memory_information, ulong memory_information_size, PsizeT return_size) @cname("QueryVirtualMemoryInformation");
extern fn Pvoid map_view_of_file_numa2(void* file_mapping_handle, void* process_handle, ulong offset, void* base_address, ulong view_size, CULong allocation_type, CULong page_protection, CULong preferred_node) @cname("MapViewOfFileNuma2");
extern fn Pvoid map_view_of_file2(void* file_mapping_handle, void* process_handle, ulong offset, void* base_address, ulong view_size, CULong allocation_type, CULong page_protection) @cname("MapViewOfFile2");
extern fn Pvoid virtual_alloc2(void* process, void* base_address, ulong size, CULong allocation_type, CULong page_protection, MemExtendedParameter* extended_parameters, CULong parameter_count) @cname("VirtualAlloc2");
extern fn Pvoid map_view_of_file3(void* file_mapping, void* process, void* base_address, ulong offset, ulong view_size, CULong allocation_type, CULong page_protection, MemExtendedParameter* extended_parameters, CULong parameter_count) @cname("MapViewOfFile3");
extern fn Handle create_file_mapping2(void* file, SecurityAttributes* security_attributes, CULong desired_access, CULong page_protection, CULong allocation_attributes, ulong maximum_size, Pcwstr name, MemExtendedParameter* extended_parameters, CULong parameter_count) @cname("CreateFileMapping2");
extern fn SizeT get_large_page_minimum() @cname("GetLargePageMinimum");
extern fn Winbool get_process_working_set_size_ex(void* h_process, PsizeT lp_minimum_working_set_size, PsizeT lp_maximum_working_set_size, Pdword flags) @cname("GetProcessWorkingSetSizeEx");
extern fn Winbool set_process_working_set_size_ex(void* h_process, ulong dw_minimum_working_set_size, ulong dw_maximum_working_set_size, CULong flags) @cname("SetProcessWorkingSetSizeEx");
extern fn Uint get_write_watch(CULong dw_flags, void* lp_base_address, ulong dw_region_size, Pvoid* lp_addresses, UlongPtr* lpdw_count, Lpdword lpdw_granularity) @cname("GetWriteWatch");
extern fn Uint reset_write_watch(void* lp_base_address, ulong dw_region_size) @cname("ResetWriteWatch");
extern fn Winbool virtual_free_ex(void* h_process, void* lp_address, ulong dw_size, CULong dw_free_type) @cname("VirtualFreeEx");
extern fn Dword discard_virtual_memory(void* virtual_address, ulong size) @cname("DiscardVirtualMemory");
extern fn Dword offer_virtual_memory(void* virtual_address, ulong size, OfferPriority priority) @cname("OfferVirtualMemory");
extern fn Dword reclaim_virtual_memory(void* virtual_address, ulong size) @cname("ReclaimVirtualMemory");
extern fn Winbool unmap_view_of_file_ex(void* base_address, CULong unmap_flags) @cname("UnmapViewOfFileEx");

