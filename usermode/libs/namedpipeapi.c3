module win32::pipe;

// Type Aliases & Callbacks
alias Lpvoid = void*;
alias Dword = CULong;
alias Lpoverlapped = Overlapped*;
alias Ulong = CULong;
alias Phandle = Handle*;
alias Lpwstr = Wchar*;
alias Lpdword = Dword*;
alias Handle = void*;
alias Winbool = int;
alias LpsecurityAttributes = SecurityAttributes*;
alias Lpcwstr = Wchar*;

struct Overlapped { void* _unused; }

struct Wchar { void* _unused; }

struct SecurityAttributes { void* _unused; }

// Functions
extern fn Winbool impersonate_named_pipe_client(void* h_named_pipe) @cname("ImpersonateNamedPipeClient");
extern fn Winbool create_pipe(Phandle h_read_pipe, Phandle h_write_pipe, LpsecurityAttributes lp_pipe_attributes, CULong n_size) @cname("CreatePipe");
extern fn Winbool connect_named_pipe(void* h_named_pipe, Lpoverlapped lp_overlapped) @cname("ConnectNamedPipe");
extern fn Winbool disconnect_named_pipe(void* h_named_pipe) @cname("DisconnectNamedPipe");
extern fn Winbool set_named_pipe_handle_state(void* h_named_pipe, Lpdword lp_mode, Lpdword lp_max_collection_count, Lpdword lp_collect_data_timeout) @cname("SetNamedPipeHandleState");
extern fn Winbool peek_named_pipe(void* h_named_pipe, void* lp_buffer, CULong n_buffer_size, Lpdword lp_bytes_read, Lpdword lp_total_bytes_avail, Lpdword lp_bytes_left_this_message) @cname("PeekNamedPipe");
extern fn Winbool transact_named_pipe(void* h_named_pipe, void* lp_in_buffer, CULong n_in_buffer_size, void* lp_out_buffer, CULong n_out_buffer_size, Lpdword lp_bytes_read, Lpoverlapped lp_overlapped) @cname("TransactNamedPipe");
extern fn Handle create_named_pipe_w(Lpcwstr lp_name, CULong dw_open_mode, CULong dw_pipe_mode, CULong n_max_instances, CULong n_out_buffer_size, CULong n_in_buffer_size, CULong n_default_time_out, LpsecurityAttributes lp_security_attributes) @cname("CreateNamedPipeW");
extern fn Winbool wait_named_pipe_w(Lpcwstr lp_named_pipe_name, CULong n_time_out) @cname("WaitNamedPipeW");
extern fn Winbool get_named_pipe_client_computer_name_w(void* pipe, Lpwstr client_computer_name, CULong client_computer_name_length) @cname("GetNamedPipeClientComputerNameW");

