module win32::sync;

// Type Aliases & Callbacks
alias Srwlock = RtlSrwlock;
alias Psrwlock = RtlSrwlock*;
alias InitOnce = RtlRunOnce;
alias PinitOnce = PrtlRunOnce;
alias LpinitOnce = PrtlRunOnce;
alias PinitOnceFn = fn Winbool(PinitOnce, Pvoid, Pvoid*);
alias ConditionVariable = RtlConditionVariable;
alias PconditionVariable = RtlConditionVariable*;
alias Ptimerapcroutine = fn void(Lpvoid, Dword, Dword);
alias SynchronizationBarrier = RtlBarrier;
alias PsynchronizationBarrier = PrtlBarrier;
alias LpsynchronizationBarrier = PrtlBarrier;
alias Lplong = CLong*;
alias PreasonContext = ReasonContext*;
alias PrtlBarrier = RtlBarrier*;
alias LpsecurityAttributes = SecurityAttributes*;
alias SizeT = ulong;
alias Lpvoid = void*;
alias Pbool = Winbool*;
alias Ulong = CULong;
alias Boolean = char;
alias PrtlRunOnce = RtlRunOnce*;
alias Longlong = long;
alias PcriticalSection = RtlCriticalSection*;
alias Lpcwstr = Wchar*;

union LargeInteger
{
	void* _field1;
	void* u;
	long quad_part;
}

struct RtlRunOnce
{
	void* ptr;
}

struct RtlBarrier
{
	CULong reserved1;
	CULong reserved2;
	UlongPtr[2] reserved3;
	CULong reserved4;
	CULong reserved5;
}

struct RtlConditionVariable
{
	void* ptr;
}

struct RtlSrwlock
{
	void* ptr;
}

struct UlongPtr { void* _unused; }

struct LpcriticalSection { void* _unused; }

struct Winbool { void* _unused; }

struct Dword { void* _unused; }

struct Handle { void* _unused; }

struct Lpcstr { void* _unused; }

struct Pvoid { void* _unused; }

struct ReasonContext { void* _unused; }

struct SecurityAttributes { void* _unused; }

struct RtlCriticalSection { void* _unused; }

struct Wchar { void* _unused; }

// Functions
extern fn void enter_critical_section(LpcriticalSection lp_critical_section) @cname("EnterCriticalSection");
extern fn void leave_critical_section(LpcriticalSection lp_critical_section) @cname("LeaveCriticalSection");
extern fn Winbool try_enter_critical_section(LpcriticalSection lp_critical_section) @cname("TryEnterCriticalSection");
extern fn void delete_critical_section(LpcriticalSection lp_critical_section) @cname("DeleteCriticalSection");
extern fn Winbool set_event(void* h_event) @cname("SetEvent");
extern fn Winbool reset_event(void* h_event) @cname("ResetEvent");
extern fn Winbool release_semaphore(void* h_semaphore, CLong l_release_count, CLong* lp_previous_count) @cname("ReleaseSemaphore");
extern fn Winbool release_mutex(void* h_mutex) @cname("ReleaseMutex");
extern fn Dword wait_for_single_object_ex(void* h_handle, CULong dw_milliseconds, int b_alertable) @cname("WaitForSingleObjectEx");
extern fn Dword wait_for_multiple_objects_ex(CULong n_count, Handle* lp_handles, int b_wait_all, CULong dw_milliseconds, int b_alertable) @cname("WaitForMultipleObjectsEx");
extern fn Handle open_mutex_w(CULong dw_desired_access, int b_inherit_handle, Lpcwstr lp_name) @cname("OpenMutexW");
extern fn Handle open_event_a(CULong dw_desired_access, int b_inherit_handle, Lpcstr lp_name) @cname("OpenEventA");
extern fn Handle open_event_w(CULong dw_desired_access, int b_inherit_handle, Lpcwstr lp_name) @cname("OpenEventW");
extern fn Handle open_semaphore_w(CULong dw_desired_access, int b_inherit_handle, Lpcwstr lp_name) @cname("OpenSemaphoreW");
extern fn Winbool wait_on_address(void* address, void* compare_address, ulong address_size, CULong dw_milliseconds) @cname("WaitOnAddress");
extern fn void wake_by_address_single(void* address) @cname("WakeByAddressSingle");
extern fn void wake_by_address_all(void* address) @cname("WakeByAddressAll");
extern fn void initialize_srw_lock(Psrwlock srw_lock) @cname("InitializeSRWLock");
extern fn void release_srw_lock_exclusive(Psrwlock srw_lock) @cname("ReleaseSRWLockExclusive");
extern fn void release_srw_lock_shared(Psrwlock srw_lock) @cname("ReleaseSRWLockShared");
extern fn void acquire_srw_lock_exclusive(Psrwlock srw_lock) @cname("AcquireSRWLockExclusive");
extern fn void acquire_srw_lock_shared(Psrwlock srw_lock) @cname("AcquireSRWLockShared");
extern fn Boolean try_acquire_srw_lock_exclusive(Psrwlock srw_lock) @cname("TryAcquireSRWLockExclusive");
extern fn Boolean try_acquire_srw_lock_shared(Psrwlock srw_lock) @cname("TryAcquireSRWLockShared");
extern fn Winbool initialize_critical_section_ex(LpcriticalSection lp_critical_section, CULong dw_spin_count, CULong flags) @cname("InitializeCriticalSectionEx");
extern fn void init_once_initialize(PinitOnce init_once) @cname("InitOnceInitialize");
extern fn Winbool init_once_execute_once(PinitOnce init_once, PinitOnceFn init_fn, void* parameter, Lpvoid* context) @cname("InitOnceExecuteOnce");
extern fn Winbool init_once_begin_initialize(LpinitOnce lp_init_once, CULong dw_flags, Pbool f_pending, Lpvoid* lp_context) @cname("InitOnceBeginInitialize");
extern fn Winbool init_once_complete(LpinitOnce lp_init_once, CULong dw_flags, void* lp_context) @cname("InitOnceComplete");
extern fn void initialize_condition_variable(PconditionVariable condition_variable) @cname("InitializeConditionVariable");
extern fn void wake_condition_variable(PconditionVariable condition_variable) @cname("WakeConditionVariable");
extern fn void wake_all_condition_variable(PconditionVariable condition_variable) @cname("WakeAllConditionVariable");
extern fn Winbool sleep_condition_variable_cs(PconditionVariable condition_variable, PcriticalSection critical_section, CULong dw_milliseconds) @cname("SleepConditionVariableCS");
extern fn Winbool sleep_condition_variable_srw(PconditionVariable condition_variable, Psrwlock srw_lock, CULong dw_milliseconds, CULong flags) @cname("SleepConditionVariableSRW");
extern fn Handle create_mutex_ex_a(LpsecurityAttributes lp_mutex_attributes, Lpcstr lp_name, CULong dw_flags, CULong dw_desired_access) @cname("CreateMutexExA");
extern fn Handle create_mutex_ex_w(LpsecurityAttributes lp_mutex_attributes, Lpcwstr lp_name, CULong dw_flags, CULong dw_desired_access) @cname("CreateMutexExW");
extern fn Handle create_event_ex_a(LpsecurityAttributes lp_event_attributes, Lpcstr lp_name, CULong dw_flags, CULong dw_desired_access) @cname("CreateEventExA");
extern fn Handle create_event_ex_w(LpsecurityAttributes lp_event_attributes, Lpcwstr lp_name, CULong dw_flags, CULong dw_desired_access) @cname("CreateEventExW");
extern fn Handle create_semaphore_ex_w(LpsecurityAttributes lp_semaphore_attributes, CLong l_initial_count, CLong l_maximum_count, Lpcwstr lp_name, CULong dw_flags, CULong dw_desired_access) @cname("CreateSemaphoreExW");
extern fn void initialize_critical_section(LpcriticalSection lp_critical_section) @cname("InitializeCriticalSection");
extern fn Winbool initialize_critical_section_and_spin_count(LpcriticalSection lp_critical_section, CULong dw_spin_count) @cname("InitializeCriticalSectionAndSpinCount");
extern fn Dword set_critical_section_spin_count(LpcriticalSection lp_critical_section, CULong dw_spin_count) @cname("SetCriticalSectionSpinCount");
extern fn Dword wait_for_single_object(void* h_handle, CULong dw_milliseconds) @cname("WaitForSingleObject");
extern fn Dword sleep_ex(CULong dw_milliseconds, int b_alertable) @cname("SleepEx");
extern fn Handle create_mutex_a(LpsecurityAttributes lp_mutex_attributes, int b_initial_owner, Lpcstr lp_name) @cname("CreateMutexA");
extern fn Handle create_mutex_w(LpsecurityAttributes lp_mutex_attributes, int b_initial_owner, Lpcwstr lp_name) @cname("CreateMutexW");
extern fn Handle create_event_a(LpsecurityAttributes lp_event_attributes, int b_manual_reset, int b_initial_state, Lpcstr lp_name) @cname("CreateEventA");
extern fn Handle create_event_w(LpsecurityAttributes lp_event_attributes, int b_manual_reset, int b_initial_state, Lpcwstr lp_name) @cname("CreateEventW");
extern fn Winbool set_waitable_timer(void* h_timer, LargeInteger* lp_due_time, CLong l_period, Ptimerapcroutine pfn_completion_routine, void* lp_arg_to_completion_routine, int f_resume) @cname("SetWaitableTimer");
extern fn Winbool cancel_waitable_timer(void* h_timer) @cname("CancelWaitableTimer");
extern fn Handle open_waitable_timer_w(CULong dw_desired_access, int b_inherit_handle, Lpcwstr lp_timer_name) @cname("OpenWaitableTimerW");
extern fn Winbool enter_synchronization_barrier(LpsynchronizationBarrier lp_barrier, CULong dw_flags) @cname("EnterSynchronizationBarrier");
extern fn Winbool initialize_synchronization_barrier(LpsynchronizationBarrier lp_barrier, CLong l_total_threads, CLong l_spin_count) @cname("InitializeSynchronizationBarrier");
extern fn Winbool delete_synchronization_barrier(LpsynchronizationBarrier lp_barrier) @cname("DeleteSynchronizationBarrier");
extern fn void sleep(CULong dw_milliseconds) @cname("Sleep");
extern fn Dword signal_object_and_wait(void* h_object_to_signal, void* h_object_to_wait_on, CULong dw_milliseconds, int b_alertable) @cname("SignalObjectAndWait");
extern fn Handle create_waitable_timer_ex_w(LpsecurityAttributes lp_timer_attributes, Lpcwstr lp_timer_name, CULong dw_flags, CULong dw_desired_access) @cname("CreateWaitableTimerExW");
extern fn Winbool set_waitable_timer_ex(void* h_timer, LargeInteger* lp_due_time, CLong l_period, Ptimerapcroutine pfn_completion_routine, void* lp_arg_to_completion_routine, PreasonContext wake_context, CULong tolerable_delay) @cname("SetWaitableTimerEx");

