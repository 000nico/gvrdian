module win32::process;

// Type Aliases & Callbacks
alias Lpstartupinfoa = Startupinfoa*;
alias Lpstartupinfow = Startupinfow*;
alias Startupinfo = Startupinfoa;
alias Lpstartupinfo = Lpstartupinfoa;
alias PprocessInformation = ProcessInformation*;
alias LpprocessInformation = ProcessInformation*;
alias PappMemoryInformation = AppMemoryInformation*;
alias PprocessMemoryExhaustionType = ProcessMemoryExhaustionType*;
alias PprocessMemoryExhaustionInfo = ProcessMemoryExhaustionInfo*;
alias PprocessPowerThrottlingState = ProcessPowerThrottlingState*;
alias PprocessLeapSecondInfo = ProcessLeapSecondInfo*;
alias PprocThreadAttributeList = ProcThreadAttributeList*;
alias LpprocThreadAttributeList = ProcThreadAttributeList*;
alias PmemoryPriorityInformation = MemoryPriorityInformation*;
alias PapcCallbackData = ApcCallbackData*;
alias UintSR = uint;
alias Phandle = Handle*;
alias PprocessorNumber = ProcessorNumber*;
alias Lpcwstr = Wchar*;
alias UlongPtr = ulong;
alias DwordPtr = ulong;
alias Lpdword = Dword*;
alias Pvoid = void*;
alias Pcontext = Context*;
alias LpsecurityAttributes = SecurityAttributes*;
alias Pdword = Dword*;
alias PsizeT = UlongPtr*;
alias Lpvoid = void*;
alias Pbool = Winbool*;
alias Lpstr = Char*;
alias Lpfiletime = Filetime*;
alias Pcwstr = Wchar*;
alias Pulong = Ulong*;
alias Hresult = CLong;
alias Winbool = int;
alias DwordVT = ulong;
alias UlongVT = ulong;
alias Word = ushort;
alias PsystemCpuSetInformation = SystemCpuSetInformation*;
alias Pwstr = Wchar*;
alias Uint = uint;
alias SizeT = ulong;
alias LpthreadStartRoutine = void*;
alias Lpcguid = Guid*;
alias Dword = CULong;
alias Papcfunc = void*;
alias PulongPtr = ulong*;
alias PprocessDynamicEhContinuationTarget = ProcessDynamicEhContinuationTarget*;
alias Ulong = CULong;
alias Lpcstr = Char*;
alias Pushort = Ushort*;
alias Lpbyte = Byte*;
alias Lpcontext = Context*;
alias Lpwstr = Wchar*;
alias Handle = void*;
alias PprocessDynamicEnforcedAddressRange = ProcessDynamicEnforcedAddressRange*;
alias PgroupAffinity = GroupAffinity*;
alias Ushort = ushort;
alias Lpcvoid = void*;

enum ProcessInformationClass
{
	PROCESSMEMORYPRIORITY,
	PROCESSMEMORYEXHAUSTIONINFO,
	PROCESSAPPMEMORYINFO,
	PROCESSINPRIVATEINFO,
	PROCESSPOWERTHROTTLING,
	PROCESSRESERVEDVALUE1,
	PROCESSTELEMETRYCOVERAGEINFO,
	PROCESSPROTECTIONLEVELINFO,
	PROCESSLEAPSECONDINFO,
	PROCESSMACHINETYPEINFO,
	PROCESSOVERRIDESUBSEQUENTPREFETCHPARAMETER,
	PROCESSMAXOVERRIDEPREFETCHPARAMETER,
	PROCESSINFORMATIONCLASSMAX
}

constdef MachineAttributes : int
{
	USERENABLED = 1,
	KERNELENABLED = 2,
	WOW64CONTAINER = 4
}

enum ProcessMemoryExhaustionType
{
	PMETYPEFAILFASTONCOMMITFAILURE,
	PMETYPEMAX
}

constdef QueueUserApcFlags : int
{
	QUEUE_USER_APC_FLAGS_NONE = 0,
	QUEUE_USER_APC_FLAGS_SPECIAL_USER_APC = 1,
	QUEUE_USER_APC_CALLBACK_DATA_CONTEXT = 65536
}

enum ProcessMitigationPolicy
{
	PROCESSDEPPOLICY,
	PROCESSASLRPOLICY,
	PROCESSDYNAMICCODEPOLICY,
	PROCESSSTRICTHANDLECHECKPOLICY,
	PROCESSSYSTEMCALLDISABLEPOLICY,
	PROCESSMITIGATIONOPTIONSMASK,
	PROCESSEXTENSIONPOINTDISABLEPOLICY,
	PROCESSCONTROLFLOWGUARDPOLICY,
	PROCESSSIGNATUREPOLICY,
	PROCESSFONTDISABLEPOLICY,
	PROCESSIMAGELOADPOLICY,
	PROCESSSYSTEMCALLFILTERPOLICY,
	PROCESSPAYLOADRESTRICTIONPOLICY,
	PROCESSCHILDPROCESSPOLICY,
	PROCESSSIDECHANNELISOLATIONPOLICY,
	PROCESSUSERSHADOWSTACKPOLICY,
	PROCESSREDIRECTIONTRUSTPOLICY,
	PROCESSUSERPOINTERAUTHPOLICY,
	PROCESSSEHOPPOLICY,
	MAXPROCESSMITIGATIONPOLICY
}

struct Startupinfoa
{
	CULong cb;
	Lpstr lp_reserved;
	Lpstr lp_desktop;
	Lpstr lp_title;
	CULong dw_x;
	CULong dw_y;
	CULong dw_x_size;
	CULong dw_y_size;
	CULong dw_x_count_chars;
	CULong dw_y_count_chars;
	CULong dw_fill_attribute;
	CULong dw_flags;
	ushort w_show_window;
	ushort cb_reserved2;
	Lpbyte lp_reserved2;
	void* h_std_input;
	void* h_std_output;
	void* h_std_error;
}

struct Startupinfow
{
	CULong cb;
	Lpwstr lp_reserved;
	Lpwstr lp_desktop;
	Lpwstr lp_title;
	CULong dw_x;
	CULong dw_y;
	CULong dw_x_size;
	CULong dw_y_size;
	CULong dw_x_count_chars;
	CULong dw_y_count_chars;
	CULong dw_fill_attribute;
	CULong dw_flags;
	ushort w_show_window;
	ushort cb_reserved2;
	Lpbyte lp_reserved2;
	void* h_std_input;
	void* h_std_output;
	void* h_std_error;
}

struct ProcessInformation
{
	void* h_process;
	void* h_thread;
	CULong dw_process_id;
	CULong dw_thread_id;
}

struct AppMemoryInformation
{
	ulong available_commit;
	ulong private_commit_usage;
	ulong peak_private_commit_usage;
	ulong total_commit_usage;
}

struct ProcessMachineInformation
{
	ushort process_machine;
	ushort res0;
	MachineAttributes machine_attributes;
}

struct OverridePrefetchParameter
{
	uint value;
}

struct ProcessMemoryExhaustionInfo
{
	ushort version;
	ushort reserved;
	ProcessMemoryExhaustionType type;
	ulong value;
}

struct ProcessPowerThrottlingState
{
	CULong version;
	CULong control_mask;
	CULong state_mask;
}

struct ProcessProtectionLevelInformation
{
	CULong protection_level;
}

struct ProcessLeapSecondInfo
{
	CULong flags;
	CULong reserved;
}

struct ProcThreadAttributeList { void* _unused; }

struct MemoryPriorityInformation
{
	CULong memory_priority;
}

struct ApcCallbackData
{
	ulong parameter;
	Pcontext context_record;
	ulong reserved0;
	ulong reserved1;
}

struct ThreadPowerThrottlingState
{
	CULong version;
	CULong control_mask;
	CULong state_mask;
}

struct Context
{
	ulong p1_home;
	ulong p2_home;
	ulong p3_home;
	ulong p4_home;
	ulong p5_home;
	ulong p6_home;
	CULong context_flags;
	CULong mx_csr;
	ushort seg_cs;
	ushort seg_ds;
	ushort seg_es;
	ushort seg_fs;
	ushort seg_gs;
	ushort seg_ss;
	CULong e_flags;
	ulong dr0;
	ulong dr1;
	ulong dr2;
	ulong dr3;
	ulong dr6;
	ulong dr7;
	ulong rax;
	ulong rcx;
	ulong rdx;
	ulong rbx;
	ulong rsp;
	ulong rbp;
	ulong rsi;
	ulong rdi;
	ulong r8;
	ulong r9;
	ulong r10;
	ulong r11;
	ulong r12;
	ulong r13;
	ulong r14;
	ulong r15;
	ulong rip;
	void* _field40;
	MQRXa[26] vector_register;
	ulong vector_control;
	ulong debug_control;
	ulong last_branch_to_rip;
	ulong last_branch_from_rip;
	ulong last_exception_to_rip;
	ulong last_exception_from_rip;
}

struct MQRXa
{
	ulong low;
	long high;
}

struct ProcessorNumber { void* _unused; }

struct Wchar { void* _unused; }

struct SecurityAttributes { void* _unused; }

struct Char { void* _unused; }

struct Filetime { void* _unused; }

struct SystemCpuSetInformation { void* _unused; }

struct Guid { void* _unused; }

struct ProcessDynamicEhContinuationTarget { void* _unused; }

struct Byte { void* _unused; }

struct ProcessDynamicEnforcedAddressRange { void* _unused; }

struct GroupAffinity { void* _unused; }

// Functions
extern fn Handle open_process(CULong dw_desired_access, int b_inherit_handle, CULong dw_process_id) @cname("OpenProcess");
extern fn Dword queue_user_apc(Papcfunc pfn_apc, void* h_thread, ulong dw_data) @cname("QueueUserAPC");
extern fn Winbool get_process_times(void* h_process, Lpfiletime lp_creation_time, Lpfiletime lp_exit_time, Lpfiletime lp_kernel_time, Lpfiletime lp_user_time) @cname("GetProcessTimes");
extern fn void exit_process(uint u_exit_code) @cname("ExitProcess");
extern fn Winbool get_exit_code_process(void* h_process, Lpdword lp_exit_code) @cname("GetExitCodeProcess");
extern fn Winbool switch_to_thread() @cname("SwitchToThread");
extern fn Handle open_thread(CULong dw_desired_access, int b_inherit_handle, CULong dw_thread_id) @cname("OpenThread");
extern fn Winbool set_thread_priority_boost(void* h_thread, int b_disable_priority_boost) @cname("SetThreadPriorityBoost");
extern fn Winbool get_thread_priority_boost(void* h_thread, Pbool p_disable_priority_boost) @cname("GetThreadPriorityBoost");
extern fn Winbool set_thread_token(Phandle thread, void* token) @cname("SetThreadToken");
extern fn Winbool open_process_token(void* process_handle, CULong desired_access, Phandle token_handle) @cname("OpenProcessToken");
extern fn Winbool open_thread_token(void* thread_handle, CULong desired_access, int open_as_self, Phandle token_handle) @cname("OpenThreadToken");
extern fn Winbool set_priority_class(void* h_process, CULong dw_priority_class) @cname("SetPriorityClass");
extern fn Dword get_priority_class(void* h_process) @cname("GetPriorityClass");
extern fn Dword get_process_id(void* process) @cname("GetProcessId");
extern fn Dword get_thread_id(void* thread) @cname("GetThreadId");
extern fn Winbool get_thread_context(void* h_thread, Lpcontext lp_context) @cname("GetThreadContext");
extern fn Winbool flush_instruction_cache(void* h_process, void* lp_base_address, ulong dw_size) @cname("FlushInstructionCache");
extern fn Winbool get_thread_times(void* h_thread, Lpfiletime lp_creation_time, Lpfiletime lp_exit_time, Lpfiletime lp_kernel_time, Lpfiletime lp_user_time) @cname("GetThreadTimes");
extern fn Dword get_current_processor_number() @cname("GetCurrentProcessorNumber");
extern fn Winbool terminate_process(void* h_process, uint u_exit_code) @cname("TerminateProcess");
extern fn Winbool get_process_information(void* h_process, ProcessInformationClass process_information_class, void* process_information, CULong process_information_size) @cname("GetProcessInformation");
extern fn Winbool set_process_information(void* h_process, ProcessInformationClass process_information_class, void* process_information, CULong process_information_size) @cname("SetProcessInformation");
extern fn Winbool get_system_cpu_set_information(PsystemCpuSetInformation information, CULong buffer_length, Pulong returned_length, void* process, CULong flags) @cname("GetSystemCpuSetInformation");
extern fn Winbool get_process_default_cpu_sets(void* process, Pulong cpu_set_ids, CULong cpu_set_id_count, Pulong required_id_count) @cname("GetProcessDefaultCpuSets");
extern fn Winbool set_process_default_cpu_sets(void* process, Ulong* cpu_set_ids, CULong cpu_set_id_count) @cname("SetProcessDefaultCpuSets");
extern fn Winbool get_thread_selected_cpu_sets(void* thread, Pulong cpu_set_ids, CULong cpu_set_id_count, Pulong required_id_count) @cname("GetThreadSelectedCpuSets");
extern fn Winbool set_thread_selected_cpu_sets(void* thread, Ulong* cpu_set_ids, CULong cpu_set_id_count) @cname("SetThreadSelectedCpuSets");
extern fn Hresult get_machine_type_attributes(ushort machine, MachineAttributes* machine_type_attributes) @cname("GetMachineTypeAttributes");
extern fn Winbool get_process_default_cpu_set_masks(void* process, PgroupAffinity cpu_set_masks, ushort cpu_set_mask_count, Pushort required_mask_count) @cname("GetProcessDefaultCpuSetMasks");
extern fn Winbool set_process_default_cpu_set_masks(void* process, PgroupAffinity cpu_set_masks, ushort cpu_set_mask_count) @cname("SetProcessDefaultCpuSetMasks");
extern fn Winbool get_thread_selected_cpu_set_masks(void* thread, PgroupAffinity cpu_set_masks, ushort cpu_set_mask_count, Pushort required_mask_count) @cname("GetThreadSelectedCpuSetMasks");
extern fn Winbool set_thread_selected_cpu_set_masks(void* thread, PgroupAffinity cpu_set_masks, ushort cpu_set_mask_count) @cname("SetThreadSelectedCpuSetMasks");
extern fn Handle create_remote_thread(void* h_process, LpsecurityAttributes lp_thread_attributes, ulong dw_stack_size, LpthreadStartRoutine lp_start_address, void* lp_parameter, CULong dw_creation_flags, Lpdword lp_thread_id) @cname("CreateRemoteThread");
extern fn Winbool terminate_thread(void* h_thread, CULong dw_exit_code) @cname("TerminateThread");
extern fn Winbool set_process_shutdown_parameters(CULong dw_level, CULong dw_flags) @cname("SetProcessShutdownParameters");
extern fn Dword get_process_version(CULong process_id) @cname("GetProcessVersion");
extern fn void get_startup_info_w(Lpstartupinfow lp_startup_info) @cname("GetStartupInfoW");
extern fn Winbool set_thread_stack_guarantee(Pulong stack_size_in_bytes) @cname("SetThreadStackGuarantee");
extern fn Winbool process_id_to_session_id(CULong dw_process_id, Dword* p_session_id) @cname("ProcessIdToSessionId");
extern fn Handle create_remote_thread_ex(void* h_process, LpsecurityAttributes lp_thread_attributes, ulong dw_stack_size, LpthreadStartRoutine lp_start_address, void* lp_parameter, CULong dw_creation_flags, LpprocThreadAttributeList lp_attribute_list, Lpdword lp_thread_id) @cname("CreateRemoteThreadEx");
extern fn Winbool set_thread_context(void* h_thread, Context* lp_context) @cname("SetThreadContext");
extern fn Winbool get_process_handle_count(void* h_process, Pdword pdw_handle_count) @cname("GetProcessHandleCount");
extern fn Winbool create_process_as_user_w(void* h_token, Lpcwstr lp_application_name, Lpwstr lp_command_line, LpsecurityAttributes lp_process_attributes, LpsecurityAttributes lp_thread_attributes, int b_inherit_handles, CULong dw_creation_flags, void* lp_environment, Lpcwstr lp_current_directory, Lpstartupinfow lp_startup_info, LpprocessInformation lp_process_information) @cname("CreateProcessAsUserW");
extern fn Dword get_process_id_of_thread(void* thread) @cname("GetProcessIdOfThread");
extern fn Winbool initialize_proc_thread_attribute_list(LpprocThreadAttributeList lp_attribute_list, CULong dw_attribute_count, CULong dw_flags, PsizeT lp_size) @cname("InitializeProcThreadAttributeList");
extern fn void delete_proc_thread_attribute_list(LpprocThreadAttributeList lp_attribute_list) @cname("DeleteProcThreadAttributeList");
extern fn Winbool set_process_affinity_update_mode(void* h_process, CULong dw_flags) @cname("SetProcessAffinityUpdateMode");
extern fn Winbool query_process_affinity_update_mode(void* h_process, Lpdword lpdw_flags) @cname("QueryProcessAffinityUpdateMode");
extern fn Winbool update_proc_thread_attribute(LpprocThreadAttributeList lp_attribute_list, CULong dw_flags, ulong attribute, void* lp_value, ulong cb_size, void* lp_previous_value, PsizeT lp_return_size) @cname("UpdateProcThreadAttribute");
extern fn Winbool set_process_mitigation_policy(ProcessMitigationPolicy mitigation_policy, void* lp_buffer, ulong dw_length) @cname("SetProcessMitigationPolicy");
extern fn Handle get_current_process_token() @cname("GetCurrentProcessToken");
extern fn Handle get_current_thread_token() @cname("GetCurrentThreadToken");
extern fn Handle get_current_thread_effective_token() @cname("GetCurrentThreadEffectiveToken");
extern fn Winbool is_process_critical(void* h_process, Pbool critical) @cname("IsProcessCritical");
extern fn Winbool set_protected_policy(Lpcguid policy_guid, ulong policy_value, ulong* old_policy_value) @cname("SetProtectedPolicy");
extern fn Winbool query_protected_policy(Lpcguid policy_guid, ulong* policy_value) @cname("QueryProtectedPolicy");
extern fn Winbool create_process_a(Lpcstr lp_application_name, Lpstr lp_command_line, LpsecurityAttributes lp_process_attributes, LpsecurityAttributes lp_thread_attributes, int b_inherit_handles, CULong dw_creation_flags, void* lp_environment, Lpcstr lp_current_directory, Lpstartupinfoa lp_startup_info, LpprocessInformation lp_process_information) @cname("CreateProcessA");
extern fn Winbool create_process_w(Lpcwstr lp_application_name, Lpwstr lp_command_line, LpsecurityAttributes lp_process_attributes, LpsecurityAttributes lp_thread_attributes, int b_inherit_handles, CULong dw_creation_flags, void* lp_environment, Lpcwstr lp_current_directory, Lpstartupinfow lp_startup_info, LpprocessInformation lp_process_information) @cname("CreateProcessW");
extern fn Winbool get_thread_ideal_processor_ex(void* h_thread, PprocessorNumber lp_ideal_processor) @cname("GetThreadIdealProcessorEx");
extern fn void get_current_processor_number_ex(PprocessorNumber proc_number) @cname("GetCurrentProcessorNumberEx");
extern fn void get_current_thread_stack_limits(ulong* low_limit, ulong* high_limit) @cname("GetCurrentThreadStackLimits");
extern fn Winbool get_process_mitigation_policy(void* h_process, ProcessMitigationPolicy mitigation_policy, void* lp_buffer, ulong dw_length) @cname("GetProcessMitigationPolicy");
extern fn Handle get_current_process() @cname("GetCurrentProcess");
extern fn Dword get_current_process_id() @cname("GetCurrentProcessId");
extern fn Handle get_current_thread() @cname("GetCurrentThread");
extern fn Dword get_current_thread_id() @cname("GetCurrentThreadId");
extern fn Winbool is_processor_feature_present(CULong processor_feature) @cname("IsProcessorFeaturePresent");
extern fn void flush_process_write_buffers() @cname("FlushProcessWriteBuffers");
extern fn Handle create_thread(LpsecurityAttributes lp_thread_attributes, ulong dw_stack_size, LpthreadStartRoutine lp_start_address, void* lp_parameter, CULong dw_creation_flags, Lpdword lp_thread_id) @cname("CreateThread");
extern fn Winbool set_thread_priority(void* h_thread, int n_priority) @cname("SetThreadPriority");
extern fn int get_thread_priority(void* h_thread) @cname("GetThreadPriority");
extern fn void exit_thread(CULong dw_exit_code) @cname("ExitThread");
extern fn Winbool get_exit_code_thread(void* h_thread, Lpdword lp_exit_code) @cname("GetExitCodeThread");
extern fn Lpvoid tls_get_value2(CULong dw_tls_index) @cname("TlsGetValue2");
extern fn Dword suspend_thread(void* h_thread) @cname("SuspendThread");
extern fn Dword resume_thread(void* h_thread) @cname("ResumeThread");
extern fn Dword tls_alloc() @cname("TlsAlloc");
extern fn Lpvoid tls_get_value(CULong dw_tls_index) @cname("TlsGetValue");
extern fn Winbool tls_set_value(CULong dw_tls_index, void* lp_tls_value) @cname("TlsSetValue");
extern fn Winbool tls_free(CULong dw_tls_index) @cname("TlsFree");
extern fn Winbool set_thread_ideal_processor_ex(void* h_thread, PprocessorNumber lp_ideal_processor, PprocessorNumber lp_previous_ideal_processor) @cname("SetThreadIdealProcessorEx");
extern fn Winbool set_process_dynamic_eh_continuation_targets(void* process, ushort number_of_targets, PprocessDynamicEhContinuationTarget targets) @cname("SetProcessDynamicEHContinuationTargets");
extern fn Winbool queue_user_apc2(Papcfunc apc_routine, void* thread, ulong data, QueueUserApcFlags flags) @cname("QueueUserAPC2");
extern fn Winbool set_process_dynamic_enforced_cet_compatible_ranges(void* process, ushort number_of_ranges, PprocessDynamicEnforcedAddressRange ranges) @cname("SetProcessDynamicEnforcedCetCompatibleRanges");
extern fn Hresult set_thread_description(void* h_thread, Pcwstr lp_thread_description) @cname("SetThreadDescription");
extern fn Hresult get_thread_description(void* h_thread, Pwstr* ppsz_thread_description) @cname("GetThreadDescription");

