module win32::err;

// Type Aliases & Callbacks
alias PtopLevelExceptionFilter = fn Long(ExceptionPointers*);
alias LptopLevelExceptionFilter = fn Long(ExceptionPointers*);
alias Dword = CULong;
alias Long = CLong;
alias UlongPtr = ulong;
alias Ulong = CULong;
alias PexceptionRecord = ExceptionRecord*;
alias PvectoredExceptionHandler = void*;
alias Pvoid = void*;
alias Pcontext = Context*;
alias Uint = uint;

struct ExceptionPointers
{
	PexceptionRecord exception_record;
	Pcontext context_record;
}

struct ExceptionRecord { void* _unused; }

struct Context { void* _unused; }

// Functions
extern fn LptopLevelExceptionFilter set_unhandled_exception_filter(LptopLevelExceptionFilter lp_top_level_exception_filter) @cname("SetUnhandledExceptionFilter");
extern fn Long unhandled_exception_filter(ExceptionPointers* exception_info) @cname("UnhandledExceptionFilter");
extern fn Pvoid add_vectored_exception_handler(CULong first, PvectoredExceptionHandler handler) @cname("AddVectoredExceptionHandler");
extern fn Ulong remove_vectored_exception_handler(void* handle) @cname("RemoveVectoredExceptionHandler");
extern fn Pvoid add_vectored_continue_handler(CULong first, PvectoredExceptionHandler handler) @cname("AddVectoredContinueHandler");
extern fn Ulong remove_vectored_continue_handler(void* handle) @cname("RemoveVectoredContinueHandler");
extern fn Uint get_error_mode() @cname("GetErrorMode");
extern fn void raise_exception(CULong dw_exception_code, CULong dw_exception_flags, CULong n_number_of_arguments, UlongPtr* lp_arguments) @cname("RaiseException");
extern fn Uint set_error_mode(uint u_mode) @cname("SetErrorMode");
extern fn Dword get_last_error() @cname("GetLastError");
extern fn void set_last_error(CULong dw_err_code) @cname("SetLastError");

