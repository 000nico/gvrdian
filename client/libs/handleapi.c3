module win32::handle;

// Type Aliases & Callbacks
alias Lphandle = Handle*;
alias Dword = CULong;
alias Lpdword = Dword*;
alias Handle = void*;
alias Winbool = int;

// Functions
extern fn Winbool close_handle(void* h_object) @cname("CloseHandle");
extern fn Winbool duplicate_handle(void* h_source_process_handle, void* h_source_handle, void* h_target_process_handle, Lphandle lp_target_handle, CULong dw_desired_access, int b_inherit_handle, CULong dw_options) @cname("DuplicateHandle");
extern fn Winbool compare_object_handles(void* h_first_object_handle, void* h_second_object_handle) @cname("CompareObjectHandles");
extern fn Winbool get_handle_information(void* h_object, Lpdword lpdw_flags) @cname("GetHandleInformation");
extern fn Winbool set_handle_information(void* h_object, CULong dw_mask, CULong dw_flags) @cname("SetHandleInformation");

