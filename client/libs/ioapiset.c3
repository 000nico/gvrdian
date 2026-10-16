module win32::io;

// Type Aliases & Callbacks
alias Lpvoid = void*;
alias PulongPtr = ulong*;
alias Dword = CULong;
alias Lpoverlapped = Overlapped*;
alias Ulong = CULong;
alias UlongPtr = ulong;
alias Pulong = Ulong*;
alias LpoverlappedEntry = OverlappedEntry*;
alias Lpdword = Dword*;
alias Handle = void*;
alias Winbool = int;

struct Overlapped { void* _unused; }

struct OverlappedEntry { void* _unused; }

// Functions
extern fn Winbool get_overlapped_result(void* h_file, Lpoverlapped lp_overlapped, Lpdword lp_number_of_bytes_transferred, int b_wait) @cname("GetOverlappedResult");
extern fn Handle create_io_completion_port(void* file_handle, void* existing_completion_port, ulong completion_key, CULong number_of_concurrent_threads) @cname("CreateIoCompletionPort");
extern fn Winbool get_queued_completion_status(void* completion_port, Lpdword lp_number_of_bytes_transferred, ulong* lp_completion_key, Lpoverlapped* lp_overlapped, CULong dw_milliseconds) @cname("GetQueuedCompletionStatus");
extern fn Winbool post_queued_completion_status(void* completion_port, CULong dw_number_of_bytes_transferred, ulong dw_completion_key, Lpoverlapped lp_overlapped) @cname("PostQueuedCompletionStatus");
extern fn Winbool device_io_control(void* h_device, CULong dw_io_control_code, void* lp_in_buffer, CULong n_in_buffer_size, void* lp_out_buffer, CULong n_out_buffer_size, Lpdword lp_bytes_returned, Lpoverlapped lp_overlapped) @cname("DeviceIoControl");
extern fn Winbool cancel_io(void* h_file) @cname("CancelIo");
extern fn Winbool get_overlapped_result_ex(void* h_file, Lpoverlapped lp_overlapped, Lpdword lp_number_of_bytes_transferred, CULong dw_milliseconds, int b_alertable) @cname("GetOverlappedResultEx");
extern fn Winbool get_queued_completion_status_ex(void* completion_port, LpoverlappedEntry lp_completion_port_entries, CULong ul_count, Pulong ul_num_entries_removed, CULong dw_milliseconds, int f_alertable) @cname("GetQueuedCompletionStatusEx");
extern fn Winbool cancel_io_ex(void* h_file, Lpoverlapped lp_overlapped) @cname("CancelIoEx");
extern fn Winbool cancel_synchronous_io(void* h_thread) @cname("CancelSynchronousIo");

