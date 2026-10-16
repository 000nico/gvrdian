module win32::base;

// Type Aliases & Callbacks
alias PfiberStartRoutine = fn void(Lpvoid*);
alias LpfiberStartRoutine = fn void(Lpvoid*);
alias LpldtEntry = fn int(int*);
alias Lpcommprop = Commprop*;
alias Lpcomstat = Comstat*;
alias Lpdcb = Dcb*;
alias Lpcommtimeouts = Commtimeouts*;
alias Lpcommconfig = Commconfig*;
alias Lpmemorystatus = Memorystatus*;
alias LpjitDebugInfo = JitDebugInfo*;
alias JitDebugInfo32 = JitDebugInfo;
alias LpjitDebugInfo32 = JitDebugInfo*;
alias JitDebugInfo64 = JitDebugInfo;
alias LpjitDebugInfo64 = JitDebugInfo*;
alias LpexceptionRecord = PexceptionRecord;
alias LpexceptionPointers = PexceptionPointers;
alias Lpofstruct = Ofstruct*;
alias Pofstruct = Ofstruct*;
alias PumsContext = void*;
alias PumsCompletionList = void*;
alias UmsThreadInfoClass = RtlUmsThreadInfoClass;
alias PumsThreadInfoClass = RtlUmsThreadInfoClass*;
alias UmsSchedulerReason = RtlUmsSchedulerReason;
alias PumsSchedulerEntryPoint = fn void(RtlUmsSchedulerReason, UlongPtr, Pvoid);
alias PumsSchedulerStartupInfo = UmsSchedulerStartupInfo*;
alias PumsSystemThreadInformation = UmsSystemThreadInformation*;
alias PowerRequestContext = ReasonContext;
alias PpowerRequestContext = ReasonContext*;
alias LppowerRequestContext = ReasonContext*;
alias Lpwin32StreamId = Win32StreamId*;
alias Lpstartupinfoexa = Startupinfoexa*;
alias Lpstartupinfoexw = Startupinfoexw*;
alias Startupinfoex = Startupinfoexa;
alias Lpstartupinfoex = Lpstartupinfoexa;
alias PprocessCreationSveVectorLength = ProcessCreationSveVectorLength*;
alias PgetSystemWow64DirectoryA = fn Uint(Lpstr, Uint);
alias PgetSystemWow64DirectoryW = fn Uint(Lpwstr, Uint);
alias Pcopyfile2ProgressRoutine = fn Copyfile2MessageAction(Copyfile2Message*, Pvoid);
alias Pcopyfile2CreateOplockKeys = Copyfile2CreateOplockKeys*;
alias Pwin32FindStreamData = Win32FindStreamData*;
alias LpeventlogFullInformation = EventlogFullInformation*;
alias OperationId = CULong;
alias PoperationStartParameters = OperationStartParameters*;
alias PoperationEndParameters = OperationEndParameters*;
alias HwProfileInfoa = TaghwProfileInfoa;
alias LphwProfileInfoa = TaghwProfileInfoa*;
alias HwProfileInfow = TaghwProfileInfow;
alias LphwProfileInfow = TaghwProfileInfow*;
alias HwProfileInfo = HwProfileInfoa;
alias LphwProfileInfo = LphwProfileInfoa;
alias LpsystemPowerStatus = SystemPowerStatus*;
alias BadMemoryCallbackRoutine = fn void();
alias PbadMemoryCallbackRoutine = fn void();
alias Actctxa = TagACTCTXA;
alias Pactctxa = TagACTCTXA*;
alias Actctxw = TagACTCTXW;
alias Pactctxw = TagACTCTXW*;
alias Actctx = Actctxa;
alias Pactctx = Pactctxa;
alias Pcactctxa = Actctxa*;
alias Pcactctxw = Actctxw*;
alias Pcactctx = Pcactctxa;
alias PactctxSectionKeyedData2600 = TagactctxSectionKeyedData2600*;
alias PcactctxSectionKeyedData2600 = ActctxSectionKeyedData2600*;
alias PactctxSectionKeyedDataAssemblyMetadata = TagactctxSectionKeyedDataAssemblyMetadata*;
alias PcactctxSectionKeyedDataAssemblyMetadata = ActctxSectionKeyedDataAssemblyMetadata*;
alias PactctxSectionKeyedData = TagactctxSectionKeyedData*;
alias PcactctxSectionKeyedData = ActctxSectionKeyedData*;
alias PactivationContextBasicInformation = ActivationContextBasicInformation*;
alias PcactivationContextBasicInformation = ActivationContextBasicInformation*;
alias PqueryactctxwFunc = fn Winbool(Dword*, Handle, Pvoid, Ulong, Pvoid, SizeT, SizeT*);
alias PfileBasicInfo = FileBasicInfo*;
alias PfileStandardInfo = FileStandardInfo*;
alias PfileNameInfo = FileNameInfo*;
alias PfileCaseSensitiveInfo = FileCaseSensitiveInfo*;
alias PfileRenameInfo = FileRenameInfo*;
alias PfileAllocationInfo = FileAllocationInfo*;
alias PfileEndOfFileInfo = FileEndOfFileInfo*;
alias PfileStreamInfo = FileStreamInfo*;
alias PfileCompressionInfo = FileCompressionInfo*;
alias PfileAttributeTagInfo = FileAttributeTagInfo*;
alias PfileDispositionInfo = FileDispositionInfo*;
alias PfileDispositionInfoEx = FileDispositionInfoEx*;
alias PfileIdBothDirInfo = FileIdBothDirInfo*;
alias PfileFullDirInfo = FileFullDirInfo*;
alias PfileIoPriorityHintInfo = FileIoPriorityHintInfo*;
alias PfileAlignmentInfo = FileAlignmentInfo*;
alias PfileStorageInfo = FileStorageInfo*;
alias PfileIdInfo = FileIdInfo*;
alias PfileIdExtdDirInfo = FileIdExtdDirInfo*;
alias PfileRemoteProtocolInfo = FileRemoteProtocolInfo*;
alias PfileIdType = FileIdType*;
alias LpfileIdDescriptor = FileIdDescriptor*;
alias Hmodule = Hinstance*;
alias Lposversioninfoexa = Osversioninfoexa*;
alias Phandle = Handle*;
alias Hfile = int;
alias Byte = char;
alias PsystemProcessorCycleTimeInformation = SystemProcessorCycleTimeInformation*;
alias Lpcwstr = Wchar*;
alias Farproc = void*;
alias Pwchar = Wchar*;
alias Lpoverlapped = Overlapped*;
alias UlongPtr = ulong;
alias PexceptionPointers = ExceptionPointers*;
alias PgenericMapping = GenericMapping*;
alias DwordPtr = ulong;
alias Ulonglong = ulong;
alias PexceptionRecord = ExceptionRecord*;
alias PsizeT = UlongPtr*;
alias Pdword = Dword*;
alias LpsecurityAttributes = SecurityAttributes*;
alias Hglobal = void*;
alias Hlocal = void*;
alias PprivilegeSet = PrivilegeSet*;
alias PtpCleanupGroupCancelCallback = void*;
alias Pulong = Ulong*;
alias Hresult = CLong;
alias Winbool = int;
alias DwordVT = ulong;
alias UlongVT = ulong;
alias Word = ushort;
alias Lpstartupinfoa = Startupinfoa*;
alias Pwstr = Wchar*;
alias Char = char;
alias Puchar = Uchar*;
alias SizeT = ulong;
alias Pulonglong = Ulonglong*;
alias Lpch = Char*;
alias Long = CLong;
alias Ulong = CULong;
alias Waitortimercallback = void*;
alias Enumreslangproca = void*;
alias Pacl = Acl*;
alias Lpcch = Char*;
alias Lpbyte = Byte*;
alias PobjectTypeList = ObjectTypeList*;
alias Lpword = Word*;
alias PtpCallbackEnviron = TpCallbackEnvironV3*;
alias Lpwstr = Wchar*;
alias Handle = void*;
alias PioCounters = IoCounters*;
alias Atom = ushort;
alias Enumrestypeproca = void*;
alias PquotaLimits = QuotaLimits*;
alias Int = int;
alias PtpCleanupGroup = TpCleanupGroup*;
alias Short = short;
alias Lpcvoid = void*;
alias PdwordPtr = UlongPtr*;
alias PreasonContext = ReasonContext*;
alias SecurityInformation = void*;
alias PprocessorNumber = ProcessorNumber*;
alias Boolean = char;
alias PsecurityDescriptor = void*;
alias Enumreslangprocw = void*;
alias Pluid = Luid*;
alias Pvoid = void*;
alias Lpdword = Dword*;
alias Pcontext = Context*;
alias PsidNameUse = SidNameUse*;
alias Pbool = Winbool*;
alias Lpstr = Char*;
alias Lpfiletime = Filetime*;
alias Pcwstr = Wchar*;
alias Psid = void*;
alias PdwordVT = ulong*;
alias UintPtr = ulong;
alias Uint = uint;
alias PulongPtr = ulong*;
alias Lpcstr = Char*;
alias Pushort = Ushort*;
alias LongPtr = long;
alias Lpstartupinfow = Startupinfow*;
alias Hinstance = void*;
alias Lposversioninfoexw = Osversioninfoexw*;
alias Enumresnameprocw = void*;
alias LpprocessInformation = ProcessInformation*;
alias Pwow64LdtEntry = Wow64LdtEntry*;
alias PrtlUmsSchedulerEntryPoint = RtlUmsSchedulerEntryPoint*;
alias Enumrestypeprocw = void*;
alias Lpbool = Winbool*;
alias PjobSetArray = JobSetArray*;
alias Lpctstr = Char*;
alias Pwow64Context = Wow64Context*;
alias Lpint = int*;
alias Enumresnameproca = void*;
alias Ushort = ushort;
alias PfirmwareType = FirmwareType*;
alias Hrsrc = void*;
alias PsecureMemoryCacheCallback = void*;
alias Dwordlong = ulong;
alias Uchar = char;
alias PtpPool = TpPool*;

enum FileWriteFlags
{
	FILE_WRITE_FLAGS_NONE,
	FILE_WRITE_FLAGS_WRITE_THROUGH
}

enum FileFlushMode
{
	FILE_FLUSH_DEFAULT,
	FILE_FLUSH_DATA,
	FILE_FLUSH_MIN_METADATA,
	FILE_FLUSH_NO_SYNC
}

enum ThreadInformationClass
{
	THREADMEMORYPRIORITY,
	THREADABSOLUTECPUPRIORITY,
	THREADDYNAMICCODEPOLICY,
	THREADPOWERTHROTTLING,
	THREADINFORMATIONCLASSMAX
}

enum DepSystemPolicyType
{
	DEPPOLICYALWAYSOFF,
	DEPPOLICYALWAYSON,
	DEPPOLICYOPTIN,
	DEPPOLICYOPTOUT,
	DEPTOTALPOLICYCOUNT
}

constdef ProcThreadAttributeNum : int
{
	PROCTHREADATTRIBUTEPARENTPROCESS = 0,
	PROCTHREADATTRIBUTEHANDLELIST = 2,
	PROCTHREADATTRIBUTEGROUPAFFINITY = 3,
	PROCTHREADATTRIBUTEPREFERREDNODE = 4,
	PROCTHREADATTRIBUTEIDEALPROCESSOR = 5,
	PROCTHREADATTRIBUTEUMSTHREAD = 6,
	PROCTHREADATTRIBUTEMITIGATIONPOLICY = 7,
	PROCTHREADATTRIBUTESECURITYCAPABILITIES = 9,
	PROCTHREADATTRIBUTEPROTECTIONLEVEL = 11,
	PROCTHREADATTRIBUTEJOBLIST = 13,
	PROCTHREADATTRIBUTECHILDPROCESSPOLICY = 14,
	PROCTHREADATTRIBUTEALLAPPLICATIONPACKAGESPOLICY = 15,
	PROCTHREADATTRIBUTEWIN32KFILTER = 16,
	PROCTHREADATTRIBUTESAFEOPENPROMPTORIGINCLAIM = 17,
	PROCTHREADATTRIBUTEDESKTOPAPPPOLICY = 18,
	PROCTHREADATTRIBUTEPSEUDOCONSOLE = 22,
	PROCTHREADATTRIBUTEMITIGATIONAUDITPOLICY = 24,
	PROCTHREADATTRIBUTEMACHINETYPE = 25,
	PROCTHREADATTRIBUTECOMPONENTFILTER = 26,
	PROCTHREADATTRIBUTEENABLEOPTIONALXSTATEFEATURES = 27,
	PROCTHREADATTRIBUTETRUSTEDAPP = 29,
	PROCTHREADATTRIBUTESVEVECTORLENGTH = 30
}

enum Copyfile2MessageType
{
	COPYFILE2_CALLBACK_NONE,
	COPYFILE2_CALLBACK_CHUNK_STARTED,
	COPYFILE2_CALLBACK_CHUNK_FINISHED,
	COPYFILE2_CALLBACK_STREAM_STARTED,
	COPYFILE2_CALLBACK_STREAM_FINISHED,
	COPYFILE2_CALLBACK_POLL_CONTINUE,
	COPYFILE2_CALLBACK_ERROR,
	COPYFILE2_CALLBACK_MAX
}

enum Copyfile2MessageAction
{
	COPYFILE2_PROGRESS_CONTINUE,
	COPYFILE2_PROGRESS_CANCEL,
	COPYFILE2_PROGRESS_STOP,
	COPYFILE2_PROGRESS_QUIET,
	COPYFILE2_PROGRESS_PAUSE
}

enum Copyfile2CopyPhase
{
	COPYFILE2_PHASE_NONE,
	COPYFILE2_PHASE_PREPARE_SOURCE,
	COPYFILE2_PHASE_PREPARE_DEST,
	COPYFILE2_PHASE_READ_SOURCE,
	COPYFILE2_PHASE_WRITE_DESTINATION,
	COPYFILE2_PHASE_SERVER_COPY,
	COPYFILE2_PHASE_NAMEGRAFT_COPY,
	COPYFILE2_PHASE_MAX
}

enum StreamInfoLevels
{
	FINDSTREAMINFOSTANDARD,
	FINDSTREAMINFOMAXINFOLEVEL
}

enum PriorityHint
{
	IOPRIORITYHINTVERYLOW,
	IOPRIORITYHINTLOW,
	IOPRIORITYHINTNORMAL,
	MAXIMUMIOPRIORITYHINTTYPE
}

enum FileIdType
{
	FILEIDTYPE,
	OBJECTIDTYPE,
	EXTENDEDFILEIDTYPE,
	MAXIMUMFILEIDTYPE
}

enum AuditEventType
{
	AUDITEVENTOBJECTACCESS,
	AUDITEVENTDIRECTORYSERVICEACCESS
}

enum FileInfoByNameClass
{
	FILESTATBYNAMEINFO,
	FILESTATLXBYNAMEINFO,
	FILECASESENSITIVEBYNAMEINFO,
	FILESTATBASICBYNAMEINFO,
	MAXIMUMFILEINFOBYNAMECLASS
}

enum ComputerNameFormat
{
	COMPUTERNAMENETBIOS,
	COMPUTERNAMEDNSHOSTNAME,
	COMPUTERNAMEDNSDOMAIN,
	COMPUTERNAMEDNSFULLYQUALIFIED,
	COMPUTERNAMEPHYSICALNETBIOS,
	COMPUTERNAMEPHYSICALDNSHOSTNAME,
	COMPUTERNAMEPHYSICALDNSDOMAIN,
	COMPUTERNAMEPHYSICALDNSFULLYQUALIFIED,
	COMPUTERNAMEMAX
}

constdef Jobobjectinfoclass : int
{
	JOBOBJECTBASICACCOUNTINGINFORMATION = 1,
	JOBOBJECTBASICLIMITINFORMATION = 2,
	JOBOBJECTBASICPROCESSIDLIST = 3,
	JOBOBJECTBASICUIRESTRICTIONS = 4,
	JOBOBJECTSECURITYLIMITINFORMATION = 5,
	JOBOBJECTENDOFJOBTIMEINFORMATION = 6,
	JOBOBJECTASSOCIATECOMPLETIONPORTINFORMATION = 7,
	JOBOBJECTBASICANDIOACCOUNTINGINFORMATION = 8,
	JOBOBJECTEXTENDEDLIMITINFORMATION = 9,
	JOBOBJECTJOBSETINFORMATION = 10,
	JOBOBJECTGROUPINFORMATION = 11,
	JOBOBJECTNOTIFICATIONLIMITINFORMATION = 12,
	JOBOBJECTLIMITVIOLATIONINFORMATION = 13,
	JOBOBJECTGROUPINFORMATIONEX = 14,
	JOBOBJECTCPURATECONTROLINFORMATION = 15,
	JOBOBJECTCOMPLETIONFILTER = 16,
	JOBOBJECTCOMPLETIONCOUNTER = 17,
	JOBOBJECTRESERVED1INFORMATION = 18,
	JOBOBJECTRESERVED2INFORMATION = 19,
	JOBOBJECTRESERVED3INFORMATION = 20,
	JOBOBJECTRESERVED4INFORMATION = 21,
	JOBOBJECTRESERVED5INFORMATION = 22,
	JOBOBJECTRESERVED6INFORMATION = 23,
	JOBOBJECTRESERVED7INFORMATION = 24,
	JOBOBJECTRESERVED8INFORMATION = 25,
	JOBOBJECTRESERVED9INFORMATION = 26,
	JOBOBJECTRESERVED10INFORMATION = 27,
	JOBOBJECTRESERVED11INFORMATION = 28,
	JOBOBJECTRESERVED12INFORMATION = 29,
	JOBOBJECTRESERVED13INFORMATION = 30,
	JOBOBJECTRESERVED14INFORMATION = 31,
	JOBOBJECTNETRATECONTROLINFORMATION = 32,
	JOBOBJECTNOTIFICATIONLIMITINFORMATION2 = 33,
	JOBOBJECTLIMITVIOLATIONINFORMATION2 = 34,
	JOBOBJECTCREATESILO = 35,
	JOBOBJECTSILOBASICINFORMATION = 36,
	JOBOBJECTRESERVED15INFORMATION = 37,
	JOBOBJECTRESERVED16INFORMATION = 38,
	JOBOBJECTRESERVED17INFORMATION = 39,
	JOBOBJECTRESERVED18INFORMATION = 40,
	JOBOBJECTRESERVED19INFORMATION = 41,
	JOBOBJECTRESERVED20INFORMATION = 42,
	JOBOBJECTRESERVED21INFORMATION = 43,
	JOBOBJECTRESERVED22INFORMATION = 44,
	JOBOBJECTRESERVED23INFORMATION = 45,
	JOBOBJECTRESERVED24INFORMATION = 46,
	JOBOBJECTRESERVED25INFORMATION = 47,
	MAXJOBOBJECTINFOCLASS = 48
}

enum GetFileexInfoLevels
{
	GETFILEEXINFOSTANDARD,
	GETFILEEXMAXINFOLEVEL
}

constdef TpCallbackPriority : int
{
	TP_CALLBACK_PRIORITY_HIGH = 0,
	TP_CALLBACK_PRIORITY_NORMAL = 1,
	TP_CALLBACK_PRIORITY_LOW = 2,
	TP_CALLBACK_PRIORITY_INVALID = 3,
	TP_CALLBACK_PRIORITY_COUNT = 3
}

enum RtlUmsThreadInfoClass
{
	UMSTHREADINVALIDINFOCLASS,
	UMSTHREADUSERCONTEXT,
	UMSTHREADPRIORITY,
	UMSTHREADAFFINITY,
	UMSTHREADTEB,
	UMSTHREADISSUSPENDED,
	UMSTHREADISTERMINATED,
	UMSTHREADMAXINFOCLASS
}

enum RtlUmsSchedulerReason
{
	UMSSCHEDULERSTARTUP,
	UMSSCHEDULERTHREADBLOCKED,
	UMSSCHEDULERTHREADYIELD
}

enum PowerRequestType
{
	POWERREQUESTDISPLAYREQUIRED,
	POWERREQUESTSYSTEMREQUIRED,
	POWERREQUESTAWAYMODEREQUIRED,
	POWERREQUESTEXECUTIONREQUIRED
}

struct Commprop { void* _unused; }

struct Comstat { void* _unused; }

struct Dcb { void* _unused; }

struct Commtimeouts { void* _unused; }

struct Commconfig { void* _unused; }

struct Memorystatus { void* _unused; }

struct JitDebugInfo { void* _unused; }

struct Ofstruct
{
	char c_bytes;
	char f_fixed_disk;
	ushort n_err_code;
	ushort reserved1;
	ushort reserved2;
	Char[128] sz_path_name;
}

struct UmsSchedulerStartupInfo
{
	CULong ums_version;
	void* completion_list;
	PumsSchedulerEntryPoint scheduler_proc;
	void* scheduler_param;
}

struct UmsSystemThreadInformation
{
	CULong ums_version;
	void* _field2;
}

struct Win32StreamId { void* _unused; }

struct Startupinfoexa { void* _unused; }

struct Startupinfoexw { void* _unused; }

union ProcessCreationSveVectorLength
{
	CULong data;
	void* _field2;
}

struct Copyfile2Message { void* _unused; }

struct Copyfile2ExtendedParameters { void* _unused; }

struct Copyfile2CreateOplockKeys
{
	Guid parent_oplock_key;
	Guid target_oplock_key;
}

struct Copyfile2ExtendedParametersV2 { void* _unused; }

struct Win32FindStreamData { void* _unused; }

struct EventlogFullInformation { void* _unused; }

struct OperationStartParameters
{
	CULong version;
	CULong operation_id;
	CULong flags;
}

struct OperationEndParameters
{
	CULong version;
	CULong operation_id;
	CULong flags;
}

struct TaghwProfileInfoa { void* _unused; }

struct TaghwProfileInfow { void* _unused; }

struct SystemPowerStatus { void* _unused; }

struct TagACTCTXA { void* _unused; }

struct TagACTCTXW { void* _unused; }

struct TagactctxSectionKeyedData2600
{
	CULong cb_size;
	CULong ul_data_format_version;
	void* lp_data;
	CULong ul_length;
	void* lp_section_global_data;
	CULong ul_section_global_data_length;
	void* lp_section_base;
	CULong ul_section_total_length;
	void* h_act_ctx;
	CULong ul_assembly_roster_index;
}

struct ActctxSectionKeyedData2600
{
	CULong cb_size;
	CULong ul_data_format_version;
	void* lp_data;
	CULong ul_length;
	void* lp_section_global_data;
	CULong ul_section_global_data_length;
	void* lp_section_base;
	CULong ul_section_total_length;
	void* h_act_ctx;
	CULong ul_assembly_roster_index;
}

struct TagactctxSectionKeyedDataAssemblyMetadata
{
	void* lp_information;
	void* lp_section_base;
	CULong ul_section_length;
	void* lp_section_global_data_base;
	CULong ul_section_global_data_length;
}

struct ActctxSectionKeyedDataAssemblyMetadata
{
	void* lp_information;
	void* lp_section_base;
	CULong ul_section_length;
	void* lp_section_global_data_base;
	CULong ul_section_global_data_length;
}

struct TagactctxSectionKeyedData
{
	CULong cb_size;
	CULong ul_data_format_version;
	void* lp_data;
	CULong ul_length;
	void* lp_section_global_data;
	CULong ul_section_global_data_length;
	void* lp_section_base;
	CULong ul_section_total_length;
	void* h_act_ctx;
	CULong ul_assembly_roster_index;
	CULong ul_flags;
	ActctxSectionKeyedDataAssemblyMetadata assembly_metadata;
}

struct ActctxSectionKeyedData
{
	CULong cb_size;
	CULong ul_data_format_version;
	void* lp_data;
	CULong ul_length;
	void* lp_section_global_data;
	CULong ul_section_global_data_length;
	void* lp_section_base;
	CULong ul_section_total_length;
	void* h_act_ctx;
	CULong ul_assembly_roster_index;
	CULong ul_flags;
	ActctxSectionKeyedDataAssemblyMetadata assembly_metadata;
}

struct ActivationContextBasicInformation { void* _unused; }

struct FileBasicInfo { void* _unused; }

struct FileStandardInfo { void* _unused; }

struct FileNameInfo { void* _unused; }

struct FileCaseSensitiveInfo
{
	CULong flags;
}

struct FileRenameInfo { void* _unused; }

struct FileAllocationInfo { void* _unused; }

struct FileEndOfFileInfo { void* _unused; }

struct FileStreamInfo { void* _unused; }

struct FileCompressionInfo { void* _unused; }

struct FileAttributeTagInfo { void* _unused; }

struct FileDispositionInfo
{
	char delete_file_a;
}

struct FileDispositionInfoEx { void* _unused; }

struct FileIdBothDirInfo { void* _unused; }

struct FileFullDirInfo { void* _unused; }

struct FileIoPriorityHintInfo
{
	PriorityHint priority_hint;
}

struct FileAlignmentInfo
{
	CULong alignment_requirement;
}

struct FileStorageInfo
{
	CULong logical_bytes_per_sector;
	CULong physical_bytes_per_sector_for_atomicity;
	CULong physical_bytes_per_sector_for_performance;
	CULong file_system_effective_physical_bytes_per_sector_for_atomicity;
	CULong flags;
	CULong byte_offset_for_sector_alignment;
	CULong byte_offset_for_partition_alignment;
}

struct FileIdInfo
{
	ulong volume_serial_number;
	FileId128 file_id;
}

struct FileIdExtdDirInfo { void* _unused; }

struct FileRemoteProtocolInfo
{
	ushort structure_version;
	ushort structure_size;
	CULong protocol;
	ushort protocol_major_version;
	ushort protocol_minor_version;
	ushort protocol_revision;
	ushort reserved;
	CULong flags;
	void* generic_reserved;
	void* protocol_specific;
}

struct FileIdDescriptor { void* _unused; }

struct Guid
{
	CULong data1;
	ushort data2;
	ushort data3;
	char[8] data4;
}

struct FileId128
{
	Byte[16] identifier;
}

struct Dword { void* _unused; }

struct Lpvoid { void* _unused; }

struct LatencyTime { void* _unused; }

struct Wow64Context { void* _unused; }

struct Filetime { void* _unused; }

struct LpprogressRoutine { void* _unused; }

struct ApplicationRecoveryCallback { void* _unused; }

struct ReasonContext { void* _unused; }

struct Osversioninfoexa { void* _unused; }

struct SystemProcessorCycleTimeInformation { void* _unused; }

struct Wchar { void* _unused; }

struct Overlapped { void* _unused; }

struct ExceptionPointers { void* _unused; }

struct GenericMapping { void* _unused; }

struct ExceptionRecord { void* _unused; }

struct SecurityAttributes { void* _unused; }

struct PrivilegeSet { void* _unused; }

struct Startupinfoa { void* _unused; }

struct Acl { void* _unused; }

struct ObjectTypeList { void* _unused; }

struct TpCallbackEnvironV3 { void* _unused; }

struct IoCounters { void* _unused; }

struct QuotaLimits { void* _unused; }

struct TpCleanupGroup { void* _unused; }

struct ProcessorNumber { void* _unused; }

struct Luid { void* _unused; }

struct Context { void* _unused; }

struct SidNameUse { void* _unused; }

struct Startupinfow { void* _unused; }

struct Osversioninfoexw { void* _unused; }

struct ProcessInformation { void* _unused; }

struct Wow64LdtEntry { void* _unused; }

struct RtlUmsSchedulerEntryPoint { void* _unused; }

struct JobSetArray { void* _unused; }

struct FirmwareType { void* _unused; }

struct TpPool { void* _unused; }

// Functions
extern fn CLong _interlocked_and(Long* destination, CLong value) @cname("_InterlockedAnd");
extern fn CLong _interlocked_or(Long* destination, CLong value) @cname("_InterlockedOr");
extern fn CLong _interlocked_xor(Long* destination, CLong value) @cname("_InterlockedXor");
extern fn char _interlocked_and8(char* destination, char value) @cname("_InterlockedAnd8");
extern fn char _interlocked_or8(char* destination, char value) @cname("_InterlockedOr8");
extern fn char _interlocked_xor8(char* destination, char value) @cname("_InterlockedXor8");
extern fn short _interlocked_and16(Short* destination, short value) @cname("_InterlockedAnd16");
extern fn short _interlocked_or16(Short* destination, short value) @cname("_InterlockedOr16");
extern fn short _interlocked_xor16(Short* destination, short value) @cname("_InterlockedXor16");
extern fn Hlocal local_alloc(uint u_flags, ulong u_bytes) @cname("LocalAlloc");
extern fn Hlocal local_free(void* h_mem) @cname("LocalFree");
extern fn int win_main(Hinstance h_instance, Hinstance h_prev_instance, Lpstr lp_cmd_line, int n_show_cmd) @cname("WinMain");
extern fn int w_win_main(Hinstance h_instance, Hinstance h_prev_instance, Lpwstr lp_cmd_line, int n_show_cmd) @cname("wWinMain");
extern fn Uint global_flags(void* h_mem) @cname("GlobalFlags");
extern fn Hglobal global_handle(void* p_mem) @cname("GlobalHandle");
extern fn SizeT global_compact(Dword* dw_min_free) @cname("GlobalCompact");
extern fn void global_fix(void* h_mem) @cname("GlobalFix");
extern fn void global_unfix(void* h_mem) @cname("GlobalUnfix");
extern fn Winbool global_un_wire(void* h_mem) @cname("GlobalUnWire");
extern fn void global_memory_status(Lpmemorystatus lp_buffer) @cname("GlobalMemoryStatus");
extern fn Hlocal local_handle(void* p_mem) @cname("LocalHandle");
extern fn Winbool local_unlock(void* h_mem) @cname("LocalUnlock");
extern fn SizeT local_size(void* h_mem) @cname("LocalSize");
extern fn Uint local_flags(void* h_mem) @cname("LocalFlags");
extern fn SizeT local_shrink(void* h_mem, uint cb_new_size) @cname("LocalShrink");
extern fn SizeT local_compact(uint u_min_free) @cname("LocalCompact");
extern fn Winbool get_processor_system_cycle_time(ushort group, PsystemProcessorCycleTimeInformation buffer, Pdword returned_length) @cname("GetProcessorSystemCycleTime");
extern fn Winbool get_physically_installed_system_memory(Pulonglong total_memory_in_kilobytes) @cname("GetPhysicallyInstalledSystemMemory");
extern fn Winbool get_binary_type_a(Lpcstr lp_application_name, Lpdword lp_binary_type) @cname("GetBinaryTypeA");
extern fn Winbool get_binary_type_w(Lpcwstr lp_application_name, Lpdword lp_binary_type) @cname("GetBinaryTypeW");
extern fn Winbool get_process_io_counters(void* h_process, PioCounters lp_io_counters) @cname("GetProcessIoCounters");
extern fn Winbool get_process_working_set_size(void* h_process, PsizeT lp_minimum_working_set_size, PsizeT lp_maximum_working_set_size) @cname("GetProcessWorkingSetSize");
extern fn Winbool set_process_working_set_size(void* h_process, ulong dw_minimum_working_set_size, ulong dw_maximum_working_set_size) @cname("SetProcessWorkingSetSize");
extern fn void fatal_exit(int exit_code) @cname("FatalExit");
extern fn Winbool set_environment_strings_a(Lpch new_environment) @cname("SetEnvironmentStringsA");
extern fn Hglobal global_alloc(uint u_flags, ulong dw_bytes) @cname("GlobalAlloc");
extern fn Hglobal global_re_alloc(void* h_mem, ulong dw_bytes, uint u_flags) @cname("GlobalReAlloc");
extern fn SizeT global_size(void* h_mem) @cname("GlobalSize");
extern fn Winbool global_unlock(void* h_mem) @cname("GlobalUnlock");
extern fn Hglobal global_free(void* h_mem) @cname("GlobalFree");
extern fn Hlocal local_re_alloc(void* h_mem, ulong u_bytes, uint u_flags) @cname("LocalReAlloc");
extern fn Winbool get_process_affinity_mask(void* h_process, PdwordPtr lp_process_affinity_mask, PdwordPtr lp_system_affinity_mask) @cname("GetProcessAffinityMask");
extern fn Winbool set_process_affinity_mask(void* h_process, ulong dw_process_affinity_mask) @cname("SetProcessAffinityMask");
extern fn DwordPtr set_thread_affinity_mask(void* h_thread, ulong dw_thread_affinity_mask) @cname("SetThreadAffinityMask");
extern fn void raise_fail_fast_exception(PexceptionRecord p_exception_record, Pcontext p_context_record, Dword* dw_flags) @cname("RaiseFailFastException");
extern fn void delete_fiber(Lpvoid* lp_fiber) @cname("DeleteFiber");
extern fn void switch_to_fiber(Lpvoid* lp_fiber) @cname("SwitchToFiber");
extern fn Winbool convert_fiber_to_thread() @cname("ConvertFiberToThread");
extern fn Winbool create_ums_completion_list(PumsCompletionList* ums_completion_list) @cname("CreateUmsCompletionList");
extern fn Winbool dequeue_ums_completion_list_items(void* ums_completion_list, Dword* wait_time_out, PumsContext* ums_thread_list) @cname("DequeueUmsCompletionListItems");
extern fn Winbool get_ums_completion_list_event(void* ums_completion_list, Phandle ums_completion_event) @cname("GetUmsCompletionListEvent");
extern fn Winbool execute_ums_thread(void* ums_thread) @cname("ExecuteUmsThread");
extern fn Winbool ums_thread_yield(void* scheduler_param) @cname("UmsThreadYield");
extern fn Winbool delete_ums_completion_list(void* ums_completion_list) @cname("DeleteUmsCompletionList");
extern fn PumsContext get_current_ums_thread() @cname("GetCurrentUmsThread");
extern fn PumsContext get_next_ums_list_item(void* ums_context) @cname("GetNextUmsListItem");
extern fn Winbool query_ums_thread_information(void* ums_thread, UmsThreadInfoClass ums_thread_info_class, void* ums_thread_information, CULong ums_thread_information_length, Pulong return_length) @cname("QueryUmsThreadInformation");
extern fn Winbool set_ums_thread_information(void* ums_thread, UmsThreadInfoClass ums_thread_info_class, void* ums_thread_information, CULong ums_thread_information_length) @cname("SetUmsThreadInformation");
extern fn Winbool delete_ums_thread_context(void* ums_thread) @cname("DeleteUmsThreadContext");
extern fn Winbool create_ums_thread_context(PumsContext* lp_ums_thread) @cname("CreateUmsThreadContext");
extern fn Winbool enter_ums_scheduling_mode(PumsSchedulerStartupInfo scheduler_startup_info) @cname("EnterUmsSchedulingMode");
extern fn Winbool get_ums_system_thread_information(void* thread_handle, PumsSystemThreadInformation system_thread_info) @cname("GetUmsSystemThreadInformation");
extern fn Winbool get_thread_information(void* h_thread, ThreadInformationClass thread_information_class, Lpvoid* thread_information, Dword* thread_information_size) @cname("GetThreadInformation");
extern fn Winbool set_process_dep_policy(Dword* dw_flags) @cname("SetProcessDEPPolicy");
extern fn Winbool get_process_dep_policy(void* h_process, Lpdword lp_flags, Pbool lp_permanent) @cname("GetProcessDEPPolicy");
extern fn Winbool request_wakeup_latency(LatencyTime latency) @cname("RequestWakeupLatency");
extern fn Winbool is_system_resume_automatic() @cname("IsSystemResumeAutomatic");
extern fn Winbool get_thread_io_pending_flag(void* h_thread, Pbool lp_io_is_pending) @cname("GetThreadIOPendingFlag");
extern fn Winbool get_thread_selector_entry(void* h_thread, Dword* dw_selector, LpldtEntry* lp_selector_entry) @cname("GetThreadSelectorEntry");
extern fn Handle power_create_request(PreasonContext context) @cname("PowerCreateRequest");
extern fn Winbool power_set_request(void* power_request, PowerRequestType request_type) @cname("PowerSetRequest");
extern fn Winbool power_clear_request(void* power_request, PowerRequestType request_type) @cname("PowerClearRequest");
extern fn Winbool set_file_completion_notification_modes(void* file_handle, char flags) @cname("SetFileCompletionNotificationModes");
extern fn Winbool set_thread_information(void* h_thread, ThreadInformationClass thread_information_class, Lpvoid* thread_information, Dword* thread_information_size) @cname("SetThreadInformation");
extern fn Winbool set_file_io_overlapped_range(void* file_handle, Puchar overlapped_range_start, CULong length) @cname("SetFileIoOverlappedRange");
extern fn Winbool wow64_get_thread_context(void* h_thread, Pwow64Context lp_context) @cname("Wow64GetThreadContext");
extern fn Winbool wow64_set_thread_context(void* h_thread, Wow64Context* lp_context) @cname("Wow64SetThreadContext");
extern fn Winbool wow64_get_thread_selector_entry(void* h_thread, Dword* dw_selector, Pwow64LdtEntry lp_selector_entry) @cname("Wow64GetThreadSelectorEntry");
extern fn Winbool debug_set_process_kill_on_exit(int kill_on_exit) @cname("DebugSetProcessKillOnExit");
extern fn Winbool debug_break_process(void* process) @cname("DebugBreakProcess");
extern fn Winbool pulse_event(void* h_event) @cname("PulseEvent");
extern fn Atom global_delete_atom(ushort n_atom) @cname("GlobalDeleteAtom");
extern fn Winbool init_atom_table(Dword* n_size) @cname("InitAtomTable");
extern fn Atom delete_atom(ushort n_atom) @cname("DeleteAtom");
extern fn Uint set_handle_count(uint u_number) @cname("SetHandleCount");
extern fn Winbool request_device_wakeup(void* h_device) @cname("RequestDeviceWakeup");
extern fn Winbool cancel_device_wakeup_request(void* h_device) @cname("CancelDeviceWakeupRequest");
extern fn Winbool get_device_power_state(void* h_device, Winbool* pf_on) @cname("GetDevicePowerState");
extern fn Winbool set_message_waiting_indicator(void* h_msg_indicator, CULong ul_msg_count) @cname("SetMessageWaitingIndicator");
extern fn Winbool set_file_short_name_a(void* h_file, Lpcstr lp_short_name) @cname("SetFileShortNameA");
extern fn Winbool set_file_short_name_w(void* h_file, Lpcwstr lp_short_name) @cname("SetFileShortNameW");
extern fn Uint win_exec(Lpcstr lp_cmd_line, uint u_cmd_show) @cname("WinExec");
extern fn DepSystemPolicyType get_system_dep_policy() @cname("GetSystemDEPPolicy");
extern fn Winbool get_system_registry_quota(Pdword pdw_quota_allowed, Pdword pdw_quota_used) @cname("GetSystemRegistryQuota");
extern fn Winbool file_time_to_dos_date_time(Filetime* lp_file_time, Lpword lp_fat_date, Lpword lp_fat_time) @cname("FileTimeToDosDateTime");
extern fn Winbool dos_date_time_to_file_time(ushort w_fat_date, ushort w_fat_time, Lpfiletime lp_file_time) @cname("DosDateTimeToFileTime");
extern fn Winbool set_system_time_adjustment(Dword* dw_time_adjustment, int b_time_adjustment_disabled) @cname("SetSystemTimeAdjustment");
extern fn Winbool set_thread_error_mode(Dword* dw_new_mode, Lpdword lp_old_mode) @cname("SetThreadErrorMode");
extern fn Winbool clear_comm_break(void* h_file) @cname("ClearCommBreak");
extern fn Winbool clear_comm_error(void* h_file, Lpdword lp_errors, Lpcomstat lp_stat) @cname("ClearCommError");
extern fn Winbool setup_comm(void* h_file, Dword* dw_in_queue, Dword* dw_out_queue) @cname("SetupComm");
extern fn Winbool escape_comm_function(void* h_file, Dword* dw_func) @cname("EscapeCommFunction");
extern fn Winbool get_comm_config(void* h_comm_dev, Lpcommconfig lp_cc, Lpdword lpdw_size) @cname("GetCommConfig");
extern fn Winbool get_comm_mask(void* h_file, Lpdword lp_evt_mask) @cname("GetCommMask");
extern fn Winbool get_comm_properties(void* h_file, Lpcommprop lp_comm_prop) @cname("GetCommProperties");
extern fn Winbool get_comm_modem_status(void* h_file, Lpdword lp_modem_stat) @cname("GetCommModemStatus");
extern fn Winbool get_comm_state(void* h_file, Lpdcb lp_dcb) @cname("GetCommState");
extern fn Winbool get_comm_timeouts(void* h_file, Lpcommtimeouts lp_comm_timeouts) @cname("GetCommTimeouts");
extern fn Winbool purge_comm(void* h_file, Dword* dw_flags) @cname("PurgeComm");
extern fn Winbool set_comm_break(void* h_file) @cname("SetCommBreak");
extern fn Winbool set_comm_config(void* h_comm_dev, Lpcommconfig lp_cc, Dword* dw_size) @cname("SetCommConfig");
extern fn Winbool set_comm_mask(void* h_file, Dword* dw_evt_mask) @cname("SetCommMask");
extern fn Winbool set_comm_state(void* h_file, Lpdcb lp_dcb) @cname("SetCommState");
extern fn Winbool set_comm_timeouts(void* h_file, Lpcommtimeouts lp_comm_timeouts) @cname("SetCommTimeouts");
extern fn Winbool transmit_comm_char(void* h_file, char c_char) @cname("TransmitCommChar");
extern fn Winbool wait_comm_event(void* h_file, Lpdword lp_evt_mask, Lpoverlapped lp_overlapped) @cname("WaitCommEvent");
extern fn Handle open_comm_port(CULong u_port_number, Dword* dw_desired_access, Dword* dw_flags_and_attributes) @cname("OpenCommPort");
extern fn Ulong get_comm_ports(Pulong lp_port_numbers, CULong u_port_numbers_count, Pulong pu_port_numbers_found) @cname("GetCommPorts");
extern fn Winbool get_process_priority_boost(void* h_process, Pbool p_disable_priority_boost) @cname("GetProcessPriorityBoost");
extern fn Winbool set_process_priority_boost(void* h_process, int b_disable_priority_boost) @cname("SetProcessPriorityBoost");
extern fn int mul_div(int n_number, int n_numerator, int n_denominator) @cname("MulDiv");
extern fn Winbool get_named_pipe_info(void* h_named_pipe, Lpdword lp_flags, Lpdword lp_out_buffer_size, Lpdword lp_in_buffer_size, Lpdword lp_max_instances) @cname("GetNamedPipeInfo");
extern fn Handle create_mailslot_a(Lpcstr lp_name, Dword* n_max_message_size, Dword* l_read_timeout, LpsecurityAttributes lp_security_attributes) @cname("CreateMailslotA");
extern fn Handle create_mailslot_w(Lpcwstr lp_name, Dword* n_max_message_size, Dword* l_read_timeout, LpsecurityAttributes lp_security_attributes) @cname("CreateMailslotW");
extern fn Winbool get_mailslot_info(void* h_mailslot, Lpdword lp_max_message_size, Lpdword lp_next_size, Lpdword lp_message_count, Lpdword lp_read_timeout) @cname("GetMailslotInfo");
extern fn Winbool set_mailslot_info(void* h_mailslot, Dword* l_read_timeout) @cname("SetMailslotInfo");
extern fn Winbool encrypt_file_a(Lpcstr lp_file_name) @cname("EncryptFileA");
extern fn Winbool encrypt_file_w(Lpcwstr lp_file_name) @cname("EncryptFileW");
extern fn Winbool decrypt_file_a(Lpcstr lp_file_name, Dword* dw_reserved) @cname("DecryptFileA");
extern fn Winbool decrypt_file_w(Lpcwstr lp_file_name, Dword* dw_reserved) @cname("DecryptFileW");
extern fn Winbool file_encryption_status_a(Lpcstr lp_file_name, Lpdword lp_status) @cname("FileEncryptionStatusA");
extern fn Winbool file_encryption_status_w(Lpcwstr lp_file_name, Lpdword lp_status) @cname("FileEncryptionStatusW");
extern fn void close_encrypted_file_raw(void* pv_context) @cname("CloseEncryptedFileRaw");
extern fn int lstrcmp_a(Lpcstr lp_string1, Lpcstr lp_string2) @cname("lstrcmpA");
extern fn int lstrcmp_w(Lpcwstr lp_string1, Lpcwstr lp_string2) @cname("lstrcmpW");
extern fn int lstrcmpi_a(Lpcstr lp_string1, Lpcstr lp_string2) @cname("lstrcmpiA");
extern fn int lstrcmpi_w(Lpcwstr lp_string1, Lpcwstr lp_string2) @cname("lstrcmpiW");
extern fn Lpstr lstrcpyn_a(Lpstr lp_string1, Lpcstr lp_string2, int i_max_length) @cname("lstrcpynA");
extern fn Lpwstr lstrcpyn_w(Lpwstr lp_string1, Lpcwstr lp_string2, int i_max_length) @cname("lstrcpynW");
extern fn Lpstr lstrcpy_a(Lpstr lp_string1, Lpcstr lp_string2) @cname("lstrcpyA");
extern fn Lpwstr lstrcpy_w(Lpwstr lp_string1, Lpcwstr lp_string2) @cname("lstrcpyW");
extern fn Lpstr lstrcat_a(Lpstr lp_string1, Lpcstr lp_string2) @cname("lstrcatA");
extern fn Lpwstr lstrcat_w(Lpwstr lp_string1, Lpcwstr lp_string2) @cname("lstrcatW");
extern fn int lstrlen_a(Lpcstr lp_string) @cname("lstrlenA");
extern fn int lstrlen_w(Lpcwstr lp_string) @cname("lstrlenW");
extern fn Hfile open_file(Lpcstr lp_file_name, Lpofstruct lp_re_open_buff, uint u_style) @cname("OpenFile");
extern fn Hfile _lopen(Lpcstr lp_path_name, int i_read_write) @cname("_lopen");
extern fn Hfile _lcreat(Lpcstr lp_path_name, int i_attribute) @cname("_lcreat");
extern fn Uint _lread(int h_file, Lpvoid* lp_buffer, uint u_bytes) @cname("_lread");
extern fn Uint _lwrite(int h_file, Lpcch lp_buffer, uint u_bytes) @cname("_lwrite");
extern fn CLong _hread(int h_file, Lpvoid* lp_buffer, CLong l_bytes) @cname("_hread");
extern fn CLong _hwrite(int h_file, Lpcch lp_buffer, CLong l_bytes) @cname("_hwrite");
extern fn Hfile _lclose(int h_file) @cname("_lclose");
extern fn Long _llseek(int h_file, CLong l_offset, int i_origin) @cname("_llseek");
extern fn Winbool is_text_unicode(void* lpv, int i_size, int* lpi_result) @cname("IsTextUnicode");
extern fn Winbool backup_read(void* h_file, Lpbyte lp_buffer, Dword* n_number_of_bytes_to_read, Lpdword lp_number_of_bytes_read, int b_abort, int b_process_security, Lpvoid* lp_context) @cname("BackupRead");
extern fn Winbool backup_seek(void* h_file, Dword* dw_low_bytes_to_seek, Dword* dw_high_bytes_to_seek, Lpdword lpdw_low_byte_seeked, Lpdword lpdw_high_byte_seeked, Lpvoid* lp_context) @cname("BackupSeek");
extern fn Winbool backup_write(void* h_file, Lpbyte lp_buffer, Dword* n_number_of_bytes_to_write, Lpdword lp_number_of_bytes_written, int b_abort, int b_process_security, Lpvoid* lp_context) @cname("BackupWrite");
extern fn Winbool get_system_times(Lpfiletime lp_idle_time, Lpfiletime lp_kernel_time, Lpfiletime lp_user_time) @cname("GetSystemTimes");
extern fn Handle create_semaphore_w(LpsecurityAttributes lp_semaphore_attributes, CLong l_initial_count, CLong l_maximum_count, Lpcwstr lp_name) @cname("CreateSemaphoreW");
extern fn Handle create_waitable_timer_w(LpsecurityAttributes lp_timer_attributes, int b_manual_reset, Lpcwstr lp_timer_name) @cname("CreateWaitableTimerW");
extern fn Hmodule load_library_w(Lpcwstr lp_lib_file_name) @cname("LoadLibraryW");
extern fn Hmodule load_library_a(Lpcstr lp_lib_file_name) @cname("LoadLibraryA");
extern fn Handle open_mutex_a(Dword* dw_desired_access, int b_inherit_handle, Lpcstr lp_name) @cname("OpenMutexA");
extern fn Handle open_semaphore_a(Dword* dw_desired_access, int b_inherit_handle, Lpcstr lp_name) @cname("OpenSemaphoreA");
extern fn Handle create_waitable_timer_a(LpsecurityAttributes lp_timer_attributes, int b_manual_reset, Lpcstr lp_timer_name) @cname("CreateWaitableTimerA");
extern fn Handle open_waitable_timer_a(Dword* dw_desired_access, int b_inherit_handle, Lpcstr lp_timer_name) @cname("OpenWaitableTimerA");
extern fn Handle create_file_mapping_a(void* h_file, LpsecurityAttributes lp_file_mapping_attributes, Dword* fl_protect, Dword* dw_maximum_size_high, Dword* dw_maximum_size_low, Lpcstr lp_name) @cname("CreateFileMappingA");
extern fn Handle create_waitable_timer_ex_a(LpsecurityAttributes lp_timer_attributes, Lpcstr lp_timer_name, Dword* dw_flags, Dword* dw_desired_access) @cname("CreateWaitableTimerExA");
extern fn Handle create_file_mapping_numa_a(void* h_file, LpsecurityAttributes lp_file_mapping_attributes, Dword* fl_protect, Dword* dw_maximum_size_high, Dword* dw_maximum_size_low, Lpcstr lp_name, Dword* nnd_preferred) @cname("CreateFileMappingNumaA");
extern fn Handle open_file_mapping_a(Dword* dw_desired_access, int b_inherit_handle, Lpcstr lp_name) @cname("OpenFileMappingA");
extern fn Handle create_semaphore_a(LpsecurityAttributes lp_semaphore_attributes, CLong l_initial_count, CLong l_maximum_count, Lpcstr lp_name) @cname("CreateSemaphoreA");
extern fn Handle create_semaphore_ex_a(LpsecurityAttributes lp_semaphore_attributes, CLong l_initial_count, CLong l_maximum_count, Lpcstr lp_name, Dword* dw_flags, Dword* dw_desired_access) @cname("CreateSemaphoreExA");
extern fn Hmodule load_packaged_library(Lpcwstr lpw_lib_file_name, Dword* reserved) @cname("LoadPackagedLibrary");
extern fn Winbool query_full_process_image_name_a(void* h_process, Dword* dw_flags, Lpstr lp_exe_name, Pdword lpdw_size) @cname("QueryFullProcessImageNameA");
extern fn Winbool query_full_process_image_name_w(void* h_process, Dword* dw_flags, Lpwstr lp_exe_name, Pdword lpdw_size) @cname("QueryFullProcessImageNameW");
extern fn Winbool get_process_shutdown_parameters(Lpdword lpdw_level, Lpdword lpdw_flags) @cname("GetProcessShutdownParameters");
extern fn void fatal_app_exit_a(uint u_action, Lpcstr lp_message_text) @cname("FatalAppExitA");
extern fn void fatal_app_exit_w(uint u_action, Lpcwstr lp_message_text) @cname("FatalAppExitW");
extern fn void get_startup_info_a(Lpstartupinfoa lp_startup_info) @cname("GetStartupInfoA");
extern fn Hrsrc find_resource_a(Hmodule h_module, Lpcstr lp_name, Lpcstr lp_type) @cname("FindResourceA");
extern fn Hrsrc find_resource_ex_a(Hmodule h_module, Lpcstr lp_type, Lpcstr lp_name, ushort w_language) @cname("FindResourceExA");
extern fn Winbool enum_resource_types_a(Hmodule h_module, Enumrestypeproca lp_enum_func, long l_param) @cname("EnumResourceTypesA");
extern fn Winbool enum_resource_types_w(Hmodule h_module, Enumrestypeprocw lp_enum_func, long l_param) @cname("EnumResourceTypesW");
extern fn Winbool enum_resource_names_a(Hmodule h_module, Lpcstr lp_type, Enumresnameproca lp_enum_func, long l_param) @cname("EnumResourceNamesA");
extern fn Winbool enum_resource_names_w(Hmodule h_module, Lpcwstr lp_type, Enumresnameprocw lp_enum_func, long l_param) @cname("EnumResourceNamesW");
extern fn Winbool enum_resource_languages_a(Hmodule h_module, Lpcstr lp_type, Lpcstr lp_name, Enumreslangproca lp_enum_func, long l_param) @cname("EnumResourceLanguagesA");
extern fn Winbool enum_resource_languages_w(Hmodule h_module, Lpcwstr lp_type, Lpcwstr lp_name, Enumreslangprocw lp_enum_func, long l_param) @cname("EnumResourceLanguagesW");
extern fn Handle begin_update_resource_a(Lpcstr p_file_name, int b_delete_existing_resources) @cname("BeginUpdateResourceA");
extern fn Handle begin_update_resource_w(Lpcwstr p_file_name, int b_delete_existing_resources) @cname("BeginUpdateResourceW");
extern fn Winbool update_resource_a(void* h_update, Lpcstr lp_type, Lpcstr lp_name, ushort w_language, Lpvoid* lp_data, Dword* cb) @cname("UpdateResourceA");
extern fn Winbool update_resource_w(void* h_update, Lpcwstr lp_type, Lpcwstr lp_name, ushort w_language, Lpvoid* lp_data, Dword* cb) @cname("UpdateResourceW");
extern fn Winbool end_update_resource_a(void* h_update, int f_discard) @cname("EndUpdateResourceA");
extern fn Winbool end_update_resource_w(void* h_update, int f_discard) @cname("EndUpdateResourceW");
extern fn Winbool get_firmware_type(PfirmwareType firmware_type) @cname("GetFirmwareType");
extern fn Winbool is_native_vhd_boot(Pbool native_vhd_boot) @cname("IsNativeVhdBoot");
extern fn Atom global_add_atom_a(Lpcstr lp_string) @cname("GlobalAddAtomA");
extern fn Atom global_add_atom_w(Lpcwstr lp_string) @cname("GlobalAddAtomW");
extern fn Atom global_add_atom_ex_a(Lpcstr lp_string, Dword* flags) @cname("GlobalAddAtomExA");
extern fn Atom global_add_atom_ex_w(Lpcwstr lp_string, Dword* flags) @cname("GlobalAddAtomExW");
extern fn Atom global_find_atom_a(Lpcstr lp_string) @cname("GlobalFindAtomA");
extern fn Atom global_find_atom_w(Lpcwstr lp_string) @cname("GlobalFindAtomW");
extern fn Uint global_get_atom_name_a(ushort n_atom, Lpstr lp_buffer, int n_size) @cname("GlobalGetAtomNameA");
extern fn Uint global_get_atom_name_w(ushort n_atom, Lpwstr lp_buffer, int n_size) @cname("GlobalGetAtomNameW");
extern fn Atom add_atom_a(Lpcstr lp_string) @cname("AddAtomA");
extern fn Atom add_atom_w(Lpcwstr lp_string) @cname("AddAtomW");
extern fn Atom find_atom_a(Lpcstr lp_string) @cname("FindAtomA");
extern fn Atom find_atom_w(Lpcwstr lp_string) @cname("FindAtomW");
extern fn Uint get_atom_name_a(ushort n_atom, Lpstr lp_buffer, int n_size) @cname("GetAtomNameA");
extern fn Uint get_atom_name_w(ushort n_atom, Lpwstr lp_buffer, int n_size) @cname("GetAtomNameW");
extern fn Uint get_profile_int_a(Lpcstr lp_app_name, Lpcstr lp_key_name, int n_default) @cname("GetProfileIntA");
extern fn Uint get_profile_int_w(Lpcwstr lp_app_name, Lpcwstr lp_key_name, int n_default) @cname("GetProfileIntW");
extern fn Winbool write_profile_string_a(Lpcstr lp_app_name, Lpcstr lp_key_name, Lpcstr lp_string) @cname("WriteProfileStringA");
extern fn Winbool write_profile_string_w(Lpcwstr lp_app_name, Lpcwstr lp_key_name, Lpcwstr lp_string) @cname("WriteProfileStringW");
extern fn Winbool write_profile_section_a(Lpcstr lp_app_name, Lpcstr lp_string) @cname("WriteProfileSectionA");
extern fn Winbool write_profile_section_w(Lpcwstr lp_app_name, Lpcwstr lp_string) @cname("WriteProfileSectionW");
extern fn Uint get_private_profile_int_a(Lpcstr lp_app_name, Lpcstr lp_key_name, int n_default, Lpcstr lp_file_name) @cname("GetPrivateProfileIntA");
extern fn Uint get_private_profile_int_w(Lpcwstr lp_app_name, Lpcwstr lp_key_name, int n_default, Lpcwstr lp_file_name) @cname("GetPrivateProfileIntW");
extern fn Winbool write_private_profile_string_a(Lpcstr lp_app_name, Lpcstr lp_key_name, Lpcstr lp_string, Lpcstr lp_file_name) @cname("WritePrivateProfileStringA");
extern fn Winbool write_private_profile_string_w(Lpcwstr lp_app_name, Lpcwstr lp_key_name, Lpcwstr lp_string, Lpcwstr lp_file_name) @cname("WritePrivateProfileStringW");
extern fn Winbool write_private_profile_section_a(Lpcstr lp_app_name, Lpcstr lp_string, Lpcstr lp_file_name) @cname("WritePrivateProfileSectionA");
extern fn Winbool write_private_profile_section_w(Lpcwstr lp_app_name, Lpcwstr lp_string, Lpcwstr lp_file_name) @cname("WritePrivateProfileSectionW");
extern fn Winbool get_private_profile_struct_a(Lpcstr lpsz_section, Lpcstr lpsz_key, Lpvoid* lp_struct, uint u_size_struct, Lpcstr sz_file) @cname("GetPrivateProfileStructA");
extern fn Winbool get_private_profile_struct_w(Lpcwstr lpsz_section, Lpcwstr lpsz_key, Lpvoid* lp_struct, uint u_size_struct, Lpcwstr sz_file) @cname("GetPrivateProfileStructW");
extern fn Winbool write_private_profile_struct_a(Lpcstr lpsz_section, Lpcstr lpsz_key, Lpvoid* lp_struct, uint u_size_struct, Lpcstr sz_file) @cname("WritePrivateProfileStructA");
extern fn Winbool write_private_profile_struct_w(Lpcwstr lpsz_section, Lpcwstr lpsz_key, Lpvoid* lp_struct, uint u_size_struct, Lpcwstr sz_file) @cname("WritePrivateProfileStructW");
extern fn Uint get_system_wow64directory_a(Lpstr lp_buffer, uint u_size) @cname("GetSystemWow64DirectoryA");
extern fn Uint get_system_wow64directory_w(Lpwstr lp_buffer, uint u_size) @cname("GetSystemWow64DirectoryW");
extern fn Boolean wow64_enable_wow64_fs_redirection(char wow64_fs_enable_redirection) @cname("Wow64EnableWow64FsRedirection");
extern fn Winbool set_search_path_mode(Dword* flags) @cname("SetSearchPathMode");
extern fn Winbool set_firmware_environment_variable_a(Lpcstr lp_name, Lpcstr lp_guid, void* p_value, Dword* n_size) @cname("SetFirmwareEnvironmentVariableA");
extern fn Winbool set_firmware_environment_variable_w(Lpcwstr lp_name, Lpcwstr lp_guid, void* p_value, Dword* n_size) @cname("SetFirmwareEnvironmentVariableW");
extern fn Winbool set_firmware_environment_variable_ex_a(Lpcstr lp_name, Lpcstr lp_guid, void* p_value, Dword* n_size, Dword* dw_attributes) @cname("SetFirmwareEnvironmentVariableExA");
extern fn Winbool set_firmware_environment_variable_ex_w(Lpcwstr lp_name, Lpcwstr lp_guid, void* p_value, Dword* n_size, Dword* dw_attributes) @cname("SetFirmwareEnvironmentVariableExW");
extern fn Winbool set_dll_directory_a(Lpcstr lp_path_name) @cname("SetDllDirectoryA");
extern fn Winbool set_dll_directory_w(Lpcwstr lp_path_name) @cname("SetDllDirectoryW");
extern fn Hrsrc find_resource_w(Hmodule h_module, Lpcwstr lp_name, Lpcwstr lp_type) @cname("FindResourceW");
extern fn Winbool create_directory_ex_a(Lpcstr lp_template_directory, Lpcstr lp_new_directory, LpsecurityAttributes lp_security_attributes) @cname("CreateDirectoryExA");
extern fn Winbool create_directory_ex_w(Lpcwstr lp_template_directory, Lpcwstr lp_new_directory, LpsecurityAttributes lp_security_attributes) @cname("CreateDirectoryExW");
extern fn Winbool create_directory_transacted_a(Lpcstr lp_template_directory, Lpcstr lp_new_directory, LpsecurityAttributes lp_security_attributes, void* h_transaction) @cname("CreateDirectoryTransactedA");
extern fn Winbool create_directory_transacted_w(Lpcwstr lp_template_directory, Lpcwstr lp_new_directory, LpsecurityAttributes lp_security_attributes, void* h_transaction) @cname("CreateDirectoryTransactedW");
extern fn Winbool remove_directory_transacted_a(Lpcstr lp_path_name, void* h_transaction) @cname("RemoveDirectoryTransactedA");
extern fn Winbool remove_directory_transacted_w(Lpcwstr lp_path_name, void* h_transaction) @cname("RemoveDirectoryTransactedW");
extern fn Winbool define_dos_device_a(Dword* dw_flags, Lpcstr lp_device_name, Lpcstr lp_target_path) @cname("DefineDosDeviceA");
extern fn Handle create_file_transacted_a(Lpcstr lp_file_name, Dword* dw_desired_access, Dword* dw_share_mode, LpsecurityAttributes lp_security_attributes, Dword* dw_creation_disposition, Dword* dw_flags_and_attributes, void* h_template_file, void* h_transaction, Pushort pus_mini_version, void* lp_extended_parameter) @cname("CreateFileTransactedA");
extern fn Handle create_file_transacted_w(Lpcwstr lp_file_name, Dword* dw_desired_access, Dword* dw_share_mode, LpsecurityAttributes lp_security_attributes, Dword* dw_creation_disposition, Dword* dw_flags_and_attributes, void* h_template_file, void* h_transaction, Pushort pus_mini_version, void* lp_extended_parameter) @cname("CreateFileTransactedW");
extern fn Handle re_open_file(void* h_original_file, Dword* dw_desired_access, Dword* dw_share_mode, Dword* dw_flags_and_attributes) @cname("ReOpenFile");
extern fn Winbool set_file_attributes_transacted_a(Lpcstr lp_file_name, Dword* dw_file_attributes, void* h_transaction) @cname("SetFileAttributesTransactedA");
extern fn Winbool set_file_attributes_transacted_w(Lpcwstr lp_file_name, Dword* dw_file_attributes, void* h_transaction) @cname("SetFileAttributesTransactedW");
extern fn Winbool get_file_attributes_transacted_a(Lpcstr lp_file_name, GetFileexInfoLevels f_info_level_id, Lpvoid* lp_file_information, void* h_transaction) @cname("GetFileAttributesTransactedA");
extern fn Winbool get_file_attributes_transacted_w(Lpcwstr lp_file_name, GetFileexInfoLevels f_info_level_id, Lpvoid* lp_file_information, void* h_transaction) @cname("GetFileAttributesTransactedW");
extern fn Winbool delete_file_transacted_a(Lpcstr lp_file_name, void* h_transaction) @cname("DeleteFileTransactedA");
extern fn Winbool delete_file_transacted_w(Lpcwstr lp_file_name, void* h_transaction) @cname("DeleteFileTransactedW");
extern fn Winbool copy_file_ex_a(Lpcstr lp_existing_file_name, Lpcstr lp_new_file_name, LpprogressRoutine lp_progress_routine, Lpvoid* lp_data, Lpbool pb_cancel, Dword* dw_copy_flags) @cname("CopyFileExA");
extern fn Winbool copy_file_ex_w(Lpcwstr lp_existing_file_name, Lpcwstr lp_new_file_name, LpprogressRoutine lp_progress_routine, Lpvoid* lp_data, Lpbool pb_cancel, Dword* dw_copy_flags) @cname("CopyFileExW");
extern fn Winbool check_name_legal_dos8dot3a(Lpcstr lp_name, Lpstr lp_oem_name, Dword* oem_name_size, Pbool pb_name_contains_spaces, Pbool pb_name_legal) @cname("CheckNameLegalDOS8Dot3A");
extern fn Winbool check_name_legal_dos8dot3w(Lpcwstr lp_name, Lpstr lp_oem_name, Dword* oem_name_size, Pbool pb_name_contains_spaces, Pbool pb_name_legal) @cname("CheckNameLegalDOS8Dot3W");
extern fn Winbool copy_file_transacted_a(Lpcstr lp_existing_file_name, Lpcstr lp_new_file_name, LpprogressRoutine lp_progress_routine, Lpvoid* lp_data, Lpbool pb_cancel, Dword* dw_copy_flags, void* h_transaction) @cname("CopyFileTransactedA");
extern fn Winbool copy_file_transacted_w(Lpcwstr lp_existing_file_name, Lpcwstr lp_new_file_name, LpprogressRoutine lp_progress_routine, Lpvoid* lp_data, Lpbool pb_cancel, Dword* dw_copy_flags, void* h_transaction) @cname("CopyFileTransactedW");
extern fn Winbool copy_file_a(Lpcstr lp_existing_file_name, Lpcstr lp_new_file_name, int b_fail_if_exists) @cname("CopyFileA");
extern fn Winbool copy_file_w(Lpcwstr lp_existing_file_name, Lpcwstr lp_new_file_name, int b_fail_if_exists) @cname("CopyFileW");
extern fn Hresult copy_file2(Pcwstr pwsz_existing_file_name, Pcwstr pwsz_new_file_name, Copyfile2ExtendedParameters* p_extended_parameters) @cname("CopyFile2");
extern fn Winbool move_file_a(Lpcstr lp_existing_file_name, Lpcstr lp_new_file_name) @cname("MoveFileA");
extern fn Winbool move_file_w(Lpcwstr lp_existing_file_name, Lpcwstr lp_new_file_name) @cname("MoveFileW");
extern fn Winbool move_file_ex_a(Lpcstr lp_existing_file_name, Lpcstr lp_new_file_name, Dword* dw_flags) @cname("MoveFileExA");
extern fn Winbool move_file_ex_w(Lpcwstr lp_existing_file_name, Lpcwstr lp_new_file_name, Dword* dw_flags) @cname("MoveFileExW");
extern fn Winbool move_file_with_progress_a(Lpcstr lp_existing_file_name, Lpcstr lp_new_file_name, LpprogressRoutine lp_progress_routine, Lpvoid* lp_data, Dword* dw_flags) @cname("MoveFileWithProgressA");
extern fn Winbool move_file_with_progress_w(Lpcwstr lp_existing_file_name, Lpcwstr lp_new_file_name, LpprogressRoutine lp_progress_routine, Lpvoid* lp_data, Dword* dw_flags) @cname("MoveFileWithProgressW");
extern fn Winbool move_file_transacted_a(Lpcstr lp_existing_file_name, Lpcstr lp_new_file_name, LpprogressRoutine lp_progress_routine, Lpvoid* lp_data, Dword* dw_flags, void* h_transaction) @cname("MoveFileTransactedA");
extern fn Winbool move_file_transacted_w(Lpcwstr lp_existing_file_name, Lpcwstr lp_new_file_name, LpprogressRoutine lp_progress_routine, Lpvoid* lp_data, Dword* dw_flags, void* h_transaction) @cname("MoveFileTransactedW");
extern fn Winbool get_named_pipe_client_computer_name_a(void* pipe, Lpstr client_computer_name, CULong client_computer_name_length) @cname("GetNamedPipeClientComputerNameA");
extern fn Winbool wait_named_pipe_a(Lpcstr lp_named_pipe_name, Dword* n_time_out) @cname("WaitNamedPipeA");
extern fn Winbool call_named_pipe_a(Lpcstr lp_named_pipe_name, Lpvoid* lp_in_buffer, Dword* n_in_buffer_size, Lpvoid* lp_out_buffer, Dword* n_out_buffer_size, Lpdword lp_bytes_read, Dword* n_time_out) @cname("CallNamedPipeA");
extern fn Winbool call_named_pipe_w(Lpcwstr lp_named_pipe_name, Lpvoid* lp_in_buffer, Dword* n_in_buffer_size, Lpvoid* lp_out_buffer, Dword* n_out_buffer_size, Lpdword lp_bytes_read, Dword* n_time_out) @cname("CallNamedPipeW");
extern fn Handle create_named_pipe_a(Lpcstr lp_name, Dword* dw_open_mode, Dword* dw_pipe_mode, Dword* n_max_instances, Dword* n_out_buffer_size, Dword* n_in_buffer_size, Dword* n_default_time_out, LpsecurityAttributes lp_security_attributes) @cname("CreateNamedPipeA");
extern fn Winbool get_named_pipe_handle_state_a(void* h_named_pipe, Lpdword lp_state, Lpdword lp_cur_instances, Lpdword lp_max_collection_count, Lpdword lp_collect_data_timeout, Lpstr lp_user_name, Dword* n_max_user_name_size) @cname("GetNamedPipeHandleStateA");
extern fn Winbool get_named_pipe_handle_state_w(void* h_named_pipe, Lpdword lp_state, Lpdword lp_cur_instances, Lpdword lp_max_collection_count, Lpdword lp_collect_data_timeout, Lpwstr lp_user_name, Dword* n_max_user_name_size) @cname("GetNamedPipeHandleStateW");
extern fn Winbool replace_file_a(Lpcstr lp_replaced_file_name, Lpcstr lp_replacement_file_name, Lpcstr lp_backup_file_name, Dword* dw_replace_flags, Lpvoid* lp_exclude, Lpvoid* lp_reserved) @cname("ReplaceFileA");
extern fn Winbool replace_file_w(Lpcwstr lp_replaced_file_name, Lpcwstr lp_replacement_file_name, Lpcwstr lp_backup_file_name, Dword* dw_replace_flags, Lpvoid* lp_exclude, Lpvoid* lp_reserved) @cname("ReplaceFileW");
extern fn Winbool create_hard_link_w(Lpcwstr lp_file_name, Lpcwstr lp_existing_file_name, LpsecurityAttributes lp_security_attributes) @cname("CreateHardLinkW");
extern fn Winbool create_hard_link_a(Lpcstr lp_file_name, Lpcstr lp_existing_file_name, LpsecurityAttributes lp_security_attributes) @cname("CreateHardLinkA");
extern fn Winbool create_hard_link_transacted_a(Lpcstr lp_file_name, Lpcstr lp_existing_file_name, LpsecurityAttributes lp_security_attributes, void* h_transaction) @cname("CreateHardLinkTransactedA");
extern fn Winbool create_hard_link_transacted_w(Lpcwstr lp_file_name, Lpcwstr lp_existing_file_name, LpsecurityAttributes lp_security_attributes, void* h_transaction) @cname("CreateHardLinkTransactedW");
extern fn Handle find_first_stream_w(Lpcwstr lp_file_name, StreamInfoLevels info_level, Lpvoid* lp_find_stream_data, Dword* dw_flags) @cname("FindFirstStreamW");
extern fn Winbool find_next_stream_w(void* h_find_stream, Lpvoid* lp_find_stream_data) @cname("FindNextStreamW");
extern fn Handle find_first_stream_transacted_w(Lpcwstr lp_file_name, StreamInfoLevels info_level, Lpvoid* lp_find_stream_data, Dword* dw_flags, void* h_transaction) @cname("FindFirstStreamTransactedW");
extern fn Handle find_first_file_name_w(Lpcwstr lp_file_name, Dword* dw_flags, Lpdword string_length, Pwstr link_name) @cname("FindFirstFileNameW");
extern fn Winbool find_next_file_name_w(void* h_find_stream, Lpdword string_length, Pwstr link_name) @cname("FindNextFileNameW");
extern fn Handle find_first_file_name_transacted_w(Lpcwstr lp_file_name, Dword* dw_flags, Lpdword string_length, Pwstr link_name, void* h_transaction) @cname("FindFirstFileNameTransactedW");
extern fn Winbool get_named_pipe_client_process_id(void* pipe, Pulong client_process_id) @cname("GetNamedPipeClientProcessId");
extern fn Winbool get_named_pipe_client_session_id(void* pipe, Pulong client_session_id) @cname("GetNamedPipeClientSessionId");
extern fn Winbool get_named_pipe_server_process_id(void* pipe, Pulong server_process_id) @cname("GetNamedPipeServerProcessId");
extern fn Winbool get_named_pipe_server_session_id(void* pipe, Pulong server_session_id) @cname("GetNamedPipeServerSessionId");
extern fn Winbool set_file_bandwidth_reservation(void* h_file, Dword* n_period_milliseconds, Dword* n_bytes_per_period, int b_discardable, Lpdword lp_transfer_size, Lpdword lp_num_outstanding_requests) @cname("SetFileBandwidthReservation");
extern fn Winbool get_file_bandwidth_reservation(void* h_file, Lpdword lp_period_milliseconds, Lpdword lp_bytes_per_period, Lpbool p_discardable, Lpdword lp_transfer_size, Lpdword lp_num_outstanding_requests) @cname("GetFileBandwidthReservation");
extern fn void set_file_apis_to_oem() @cname("SetFileApisToOEM");
extern fn void set_file_apis_to_ansi() @cname("SetFileApisToANSI");
extern fn Winbool are_file_apis_ansi() @cname("AreFileApisANSI");
extern fn Winbool clear_event_log_a(void* h_event_log, Lpcstr lp_backup_file_name) @cname("ClearEventLogA");
extern fn Winbool clear_event_log_w(void* h_event_log, Lpcwstr lp_backup_file_name) @cname("ClearEventLogW");
extern fn Winbool backup_event_log_a(void* h_event_log, Lpcstr lp_backup_file_name) @cname("BackupEventLogA");
extern fn Winbool backup_event_log_w(void* h_event_log, Lpcwstr lp_backup_file_name) @cname("BackupEventLogW");
extern fn Winbool close_event_log(void* h_event_log) @cname("CloseEventLog");
extern fn Winbool deregister_event_source(void* h_event_log) @cname("DeregisterEventSource");
extern fn Winbool notify_change_event_log(void* h_event_log, void* h_event) @cname("NotifyChangeEventLog");
extern fn Winbool get_number_of_event_log_records(void* h_event_log, Pdword number_of_records) @cname("GetNumberOfEventLogRecords");
extern fn Winbool get_oldest_event_log_record(void* h_event_log, Pdword oldest_record) @cname("GetOldestEventLogRecord");
extern fn Handle open_event_log_a(Lpcstr lp_unc_server_name, Lpcstr lp_source_name) @cname("OpenEventLogA");
extern fn Handle open_event_log_w(Lpcwstr lp_unc_server_name, Lpcwstr lp_source_name) @cname("OpenEventLogW");
extern fn Handle register_event_source_a(Lpcstr lp_unc_server_name, Lpcstr lp_source_name) @cname("RegisterEventSourceA");
extern fn Handle register_event_source_w(Lpcwstr lp_unc_server_name, Lpcwstr lp_source_name) @cname("RegisterEventSourceW");
extern fn Handle open_backup_event_log_a(Lpcstr lp_unc_server_name, Lpcstr lp_file_name) @cname("OpenBackupEventLogA");
extern fn Handle open_backup_event_log_w(Lpcwstr lp_unc_server_name, Lpcwstr lp_file_name) @cname("OpenBackupEventLogW");
extern fn Winbool read_event_log_a(void* h_event_log, Dword* dw_read_flags, Dword* dw_record_offset, Lpvoid* lp_buffer, Dword* n_number_of_bytes_to_read, Dword* pn_bytes_read, Dword* pn_min_number_of_bytes_needed) @cname("ReadEventLogA");
extern fn Winbool read_event_log_w(void* h_event_log, Dword* dw_read_flags, Dword* dw_record_offset, Lpvoid* lp_buffer, Dword* n_number_of_bytes_to_read, Dword* pn_bytes_read, Dword* pn_min_number_of_bytes_needed) @cname("ReadEventLogW");
extern fn Winbool report_event_a(void* h_event_log, ushort w_type, ushort w_category, Dword* dw_event_id, void* lp_user_sid, ushort w_num_strings, Dword* dw_data_size, Lpcstr* lp_strings, Lpvoid* lp_raw_data) @cname("ReportEventA");
extern fn Winbool report_event_w(void* h_event_log, ushort w_type, ushort w_category, Dword* dw_event_id, void* lp_user_sid, ushort w_num_strings, Dword* dw_data_size, Lpcwstr* lp_strings, Lpvoid* lp_raw_data) @cname("ReportEventW");
extern fn Winbool get_event_log_information(void* h_event_log, Dword* dw_info_level, Lpvoid* lp_buffer, Dword* cb_buf_size, Lpdword pcb_bytes_needed) @cname("GetEventLogInformation");
extern fn Winbool operation_start(OperationStartParameters* operation_start_params) @cname("OperationStart");
extern fn Winbool operation_end(OperationEndParameters* operation_end_params) @cname("OperationEnd");
extern fn Winbool get_volume_information_a(Lpcstr lp_root_path_name, Lpstr lp_volume_name_buffer, Dword* n_volume_name_size, Lpdword lp_volume_serial_number, Lpdword lp_maximum_component_length, Lpdword lp_file_system_flags, Lpstr lp_file_system_name_buffer, Dword* n_file_system_name_size) @cname("GetVolumeInformationA");
extern fn Winbool access_check_and_audit_alarm_a(Lpcstr subsystem_name, Lpvoid* handle_id, Lpstr object_type_name, Lpstr object_name, void* security_descriptor, Dword* desired_access, PgenericMapping generic_mapping, int object_creation, Lpdword granted_access, Lpbool access_status, Lpbool pf_generate_on_close) @cname("AccessCheckAndAuditAlarmA");
extern fn Winbool access_check_by_type_and_audit_alarm_a(Lpcstr subsystem_name, Lpvoid* handle_id, Lpcstr object_type_name, Lpcstr object_name, void* security_descriptor, void* principal_self_sid, Dword* desired_access, AuditEventType audit_type, Dword* flags, PobjectTypeList object_type_list, Dword* object_type_list_length, PgenericMapping generic_mapping, int object_creation, Lpdword granted_access, Lpbool access_status, Lpbool pf_generate_on_close) @cname("AccessCheckByTypeAndAuditAlarmA");
extern fn Winbool access_check_by_type_result_list_and_audit_alarm_a(Lpcstr subsystem_name, Lpvoid* handle_id, Lpcstr object_type_name, Lpcstr object_name, void* security_descriptor, void* principal_self_sid, Dword* desired_access, AuditEventType audit_type, Dword* flags, PobjectTypeList object_type_list, Dword* object_type_list_length, PgenericMapping generic_mapping, int object_creation, Lpdword granted_access, Lpdword access_status_list, Lpbool pf_generate_on_close) @cname("AccessCheckByTypeResultListAndAuditAlarmA");
extern fn Winbool access_check_by_type_result_list_and_audit_alarm_by_handle_a(Lpcstr subsystem_name, Lpvoid* handle_id, void* client_token, Lpcstr object_type_name, Lpcstr object_name, void* security_descriptor, void* principal_self_sid, Dword* desired_access, AuditEventType audit_type, Dword* flags, PobjectTypeList object_type_list, Dword* object_type_list_length, PgenericMapping generic_mapping, int object_creation, Lpdword granted_access, Lpdword access_status_list, Lpbool pf_generate_on_close) @cname("AccessCheckByTypeResultListAndAuditAlarmByHandleA");
extern fn Winbool object_open_audit_alarm_a(Lpcstr subsystem_name, Lpvoid* handle_id, Lpstr object_type_name, Lpstr object_name, void* p_security_descriptor, void* client_token, Dword* desired_access, Dword* granted_access, PprivilegeSet privileges, int object_creation, int access_granted, Lpbool generate_on_close) @cname("ObjectOpenAuditAlarmA");
extern fn Winbool object_privilege_audit_alarm_a(Lpcstr subsystem_name, Lpvoid* handle_id, void* client_token, Dword* desired_access, PprivilegeSet privileges, int access_granted) @cname("ObjectPrivilegeAuditAlarmA");
extern fn Winbool object_close_audit_alarm_a(Lpcstr subsystem_name, Lpvoid* handle_id, int generate_on_close) @cname("ObjectCloseAuditAlarmA");
extern fn Winbool object_delete_audit_alarm_a(Lpcstr subsystem_name, Lpvoid* handle_id, int generate_on_close) @cname("ObjectDeleteAuditAlarmA");
extern fn Winbool privileged_service_audit_alarm_a(Lpcstr subsystem_name, Lpcstr service_name, void* client_token, PprivilegeSet privileges, int access_granted) @cname("PrivilegedServiceAuditAlarmA");
extern fn Winbool set_file_security_a(Lpcstr lp_file_name, SecurityInformation* security_information, void* p_security_descriptor) @cname("SetFileSecurityA");
extern fn Winbool get_file_security_a(Lpcstr lp_file_name, SecurityInformation* requested_information, void* p_security_descriptor, Dword* n_length, Lpdword lpn_length_needed) @cname("GetFileSecurityA");
extern fn Winbool is_bad_read_ptr(void* lp, ulong ucb) @cname("IsBadReadPtr");
extern fn Winbool is_bad_write_ptr(Lpvoid* lp, ulong ucb) @cname("IsBadWritePtr");
extern fn Winbool is_bad_huge_read_ptr(void* lp, ulong ucb) @cname("IsBadHugeReadPtr");
extern fn Winbool is_bad_huge_write_ptr(Lpvoid* lp, ulong ucb) @cname("IsBadHugeWritePtr");
extern fn Winbool is_bad_code_ptr(Farproc lpfn) @cname("IsBadCodePtr");
extern fn Winbool is_bad_string_ptr_a(Lpcstr lpsz, ulong ucch_max) @cname("IsBadStringPtrA");
extern fn Winbool is_bad_string_ptr_w(Lpcwstr lpsz, ulong ucch_max) @cname("IsBadStringPtrW");
extern fn Winbool add_conditional_ace(Pacl p_acl, Dword* dw_ace_revision, Dword* ace_flags, char ace_type, Dword* access_mask, void* p_sid, Pwchar condition_str, Dword* return_length) @cname("AddConditionalAce");
extern fn Winbool lookup_account_name_local_a(Lpcstr lp_account_name, void* sid, Lpdword cb_sid, Lpstr referenced_domain_name, Lpdword cch_referenced_domain_name, PsidNameUse pe_use) @cname("LookupAccountNameLocalA");
extern fn Winbool lookup_account_name_local_w(Lpcwstr lp_account_name, void* sid, Lpdword cb_sid, Lpwstr referenced_domain_name, Lpdword cch_referenced_domain_name, PsidNameUse pe_use) @cname("LookupAccountNameLocalW");
extern fn Winbool lookup_account_sid_local_a(void* sid, Lpstr name, Lpdword cch_name, Lpstr referenced_domain_name, Lpdword cch_referenced_domain_name, PsidNameUse pe_use) @cname("LookupAccountSidLocalA");
extern fn Winbool lookup_account_sid_local_w(void* sid, Lpwstr name, Lpdword cch_name, Lpwstr referenced_domain_name, Lpdword cch_referenced_domain_name, PsidNameUse pe_use) @cname("LookupAccountSidLocalW");
extern fn Winbool build_comm_dcba(Lpcstr lp_def, Lpdcb lp_dcb) @cname("BuildCommDCBA");
extern fn Winbool build_comm_dcbw(Lpcwstr lp_def, Lpdcb lp_dcb) @cname("BuildCommDCBW");
extern fn Winbool build_comm_dcb_and_timeouts_a(Lpcstr lp_def, Lpdcb lp_dcb, Lpcommtimeouts lp_comm_timeouts) @cname("BuildCommDCBAndTimeoutsA");
extern fn Winbool build_comm_dcb_and_timeouts_w(Lpcwstr lp_def, Lpdcb lp_dcb, Lpcommtimeouts lp_comm_timeouts) @cname("BuildCommDCBAndTimeoutsW");
extern fn Winbool get_default_comm_config_a(Lpcstr lpsz_name, Lpcommconfig lp_cc, Lpdword lpdw_size) @cname("GetDefaultCommConfigA");
extern fn Winbool get_default_comm_config_w(Lpcwstr lpsz_name, Lpcommconfig lp_cc, Lpdword lpdw_size) @cname("GetDefaultCommConfigW");
extern fn Winbool set_default_comm_config_a(Lpcstr lpsz_name, Lpcommconfig lp_cc, Dword* dw_size) @cname("SetDefaultCommConfigA");
extern fn Winbool set_default_comm_config_w(Lpcwstr lpsz_name, Lpcommconfig lp_cc, Dword* dw_size) @cname("SetDefaultCommConfigW");
extern fn Winbool set_computer_name_a(Lpcstr lp_computer_name) @cname("SetComputerNameA");
extern fn Winbool set_computer_name_w(Lpcwstr lp_computer_name) @cname("SetComputerNameW");
extern fn Winbool set_computer_name_ex_a(ComputerNameFormat name_type, Lpctstr lp_buffer) @cname("SetComputerNameExA");
extern fn Winbool dns_hostname_to_computer_name_a(Lpcstr hostname, Lpstr computer_name, Lpdword n_size) @cname("DnsHostnameToComputerNameA");
extern fn Winbool dns_hostname_to_computer_name_w(Lpcwstr hostname, Lpwstr computer_name, Lpdword n_size) @cname("DnsHostnameToComputerNameW");
extern fn Winbool logon_user_a(Lpcstr lpsz_username, Lpcstr lpsz_domain, Lpcstr lpsz_password, Dword* dw_logon_type, Dword* dw_logon_provider, Phandle ph_token) @cname("LogonUserA");
extern fn Winbool logon_user_w(Lpcwstr lpsz_username, Lpcwstr lpsz_domain, Lpcwstr lpsz_password, Dword* dw_logon_type, Dword* dw_logon_provider, Phandle ph_token) @cname("LogonUserW");
extern fn Winbool logon_user_ex_a(Lpcstr lpsz_username, Lpcstr lpsz_domain, Lpcstr lpsz_password, Dword* dw_logon_type, Dword* dw_logon_provider, Phandle ph_token, Psid* pp_logon_sid, Pvoid* pp_profile_buffer, Lpdword pdw_profile_length, PquotaLimits p_quota_limits) @cname("LogonUserExA");
extern fn Winbool logon_user_ex_w(Lpcwstr lpsz_username, Lpcwstr lpsz_domain, Lpcwstr lpsz_password, Dword* dw_logon_type, Dword* dw_logon_provider, Phandle ph_token, Psid* pp_logon_sid, Pvoid* pp_profile_buffer, Lpdword pdw_profile_length, PquotaLimits p_quota_limits) @cname("LogonUserExW");
extern fn Winbool create_process_as_user_a(void* h_token, Lpcstr lp_application_name, Lpstr lp_command_line, LpsecurityAttributes lp_process_attributes, LpsecurityAttributes lp_thread_attributes, int b_inherit_handles, Dword* dw_creation_flags, Lpvoid* lp_environment, Lpcstr lp_current_directory, Lpstartupinfoa lp_startup_info, LpprocessInformation lp_process_information) @cname("CreateProcessAsUserA");
extern fn Winbool create_process_with_logon_w(Lpcwstr lp_username, Lpcwstr lp_domain, Lpcwstr lp_password, Dword* dw_logon_flags, Lpcwstr lp_application_name, Lpwstr lp_command_line, Dword* dw_creation_flags, Lpvoid* lp_environment, Lpcwstr lp_current_directory, Lpstartupinfow lp_startup_info, LpprocessInformation lp_process_information) @cname("CreateProcessWithLogonW");
extern fn Winbool create_process_with_token_w(void* h_token, Dword* dw_logon_flags, Lpcwstr lp_application_name, Lpwstr lp_command_line, Dword* dw_creation_flags, Lpvoid* lp_environment, Lpcwstr lp_current_directory, Lpstartupinfow lp_startup_info, LpprocessInformation lp_process_information) @cname("CreateProcessWithTokenW");
extern fn Winbool is_token_untrusted(void* token_handle) @cname("IsTokenUntrusted");
extern fn Winbool register_wait_for_single_object(Phandle ph_new_wait_object, void* h_object, Waitortimercallback callback, void* context, CULong dw_milliseconds, CULong dw_flags) @cname("RegisterWaitForSingleObject");
extern fn Winbool unregister_wait(void* wait_handle) @cname("UnregisterWait");
extern fn Handle set_timer_queue_timer(void* timer_queue, Waitortimercallback callback, void* parameter, Dword* due_time, Dword* period, int prefer_io) @cname("SetTimerQueueTimer");
extern fn Winbool cancel_timer_queue_timer(void* timer_queue, void* timer) @cname("CancelTimerQueueTimer");
extern fn Winbool delete_timer_queue(void* timer_queue) @cname("DeleteTimerQueue");
extern fn Winbool add_integrity_label_to_boundary_descriptor(Handle* boundary_descriptor, void* integrity_label) @cname("AddIntegrityLabelToBoundaryDescriptor");
extern fn Winbool get_current_hw_profile_a(LphwProfileInfoa lp_hw_profile_info) @cname("GetCurrentHwProfileA");
extern fn Winbool get_current_hw_profile_w(LphwProfileInfow lp_hw_profile_info) @cname("GetCurrentHwProfileW");
extern fn Winbool verify_version_info_a(Lposversioninfoexa lp_version_information, Dword* dw_type_mask, ulong dwl_condition_mask) @cname("VerifyVersionInfoA");
extern fn Winbool verify_version_info_w(Lposversioninfoexw lp_version_information, Dword* dw_type_mask, ulong dwl_condition_mask) @cname("VerifyVersionInfoW");
extern fn Winbool get_user_name_a(Lpstr lp_buffer, Lpdword pcb_buffer) @cname("GetUserNameA");
extern fn Winbool get_user_name_w(Lpwstr lp_buffer, Lpdword pcb_buffer) @cname("GetUserNameW");
extern fn Winbool lookup_account_name_a(Lpcstr lp_system_name, Lpcstr lp_account_name, void* sid, Lpdword cb_sid, Lpstr referenced_domain_name, Lpdword cch_referenced_domain_name, PsidNameUse pe_use) @cname("LookupAccountNameA");
extern fn Winbool lookup_account_name_w(Lpcwstr lp_system_name, Lpcwstr lp_account_name, void* sid, Lpdword cb_sid, Lpwstr referenced_domain_name, Lpdword cch_referenced_domain_name, PsidNameUse pe_use) @cname("LookupAccountNameW");
extern fn Winbool lookup_account_sid_a(Lpcstr lp_system_name, void* sid, Lpstr name, Lpdword cch_name, Lpstr referenced_domain_name, Lpdword cch_referenced_domain_name, PsidNameUse pe_use) @cname("LookupAccountSidA");
extern fn Winbool lookup_account_sid_w(Lpcwstr lp_system_name, void* sid, Lpwstr name, Lpdword cch_name, Lpwstr referenced_domain_name, Lpdword cch_referenced_domain_name, PsidNameUse pe_use) @cname("LookupAccountSidW");
extern fn Winbool lookup_privilege_display_name_a(Lpcstr lp_system_name, Lpcstr lp_name, Lpstr lp_display_name, Lpdword cch_display_name, Lpdword lp_language_id) @cname("LookupPrivilegeDisplayNameA");
extern fn Winbool lookup_privilege_display_name_w(Lpcwstr lp_system_name, Lpcwstr lp_name, Lpwstr lp_display_name, Lpdword cch_display_name, Lpdword lp_language_id) @cname("LookupPrivilegeDisplayNameW");
extern fn Winbool lookup_privilege_name_a(Lpcstr lp_system_name, Pluid lp_luid, Lpstr lp_name, Lpdword cch_name) @cname("LookupPrivilegeNameA");
extern fn Winbool lookup_privilege_name_w(Lpcwstr lp_system_name, Pluid lp_luid, Lpwstr lp_name, Lpdword cch_name) @cname("LookupPrivilegeNameW");
extern fn Winbool lookup_privilege_value_a(Lpcstr lp_system_name, Lpcstr lp_name, Pluid lp_luid) @cname("LookupPrivilegeValueA");
extern fn Winbool lookup_privilege_value_w(Lpcwstr lp_system_name, Lpcwstr lp_name, Pluid lp_luid) @cname("LookupPrivilegeValueW");
extern fn Winbool set_volume_label_a(Lpcstr lp_root_path_name, Lpcstr lp_volume_name) @cname("SetVolumeLabelA");
extern fn Handle create_private_namespace_a(LpsecurityAttributes lp_private_namespace_attributes, Lpvoid* lp_boundary_descriptor, Lpcstr lp_alias_prefix) @cname("CreatePrivateNamespaceA");
extern fn Handle open_private_namespace_a(Lpvoid* lp_boundary_descriptor, Lpcstr lp_alias_prefix) @cname("OpenPrivateNamespaceA");
extern fn Handle create_boundary_descriptor_a(Lpcstr name, CULong flags) @cname("CreateBoundaryDescriptorA");
extern fn Winbool set_volume_label_w(Lpcwstr lp_root_path_name, Lpcwstr lp_volume_name) @cname("SetVolumeLabelW");
extern fn Winbool get_computer_name_a(Lpstr lp_buffer, Lpdword n_size) @cname("GetComputerNameA");
extern fn Winbool get_computer_name_w(Lpwstr lp_buffer, Lpdword n_size) @cname("GetComputerNameW");
extern fn Winbool get_system_power_status(LpsystemPowerStatus lp_system_power_status) @cname("GetSystemPowerStatus");
extern fn Winbool set_system_power_state(int f_suspend, int f_force) @cname("SetSystemPowerState");
extern fn Pvoid register_bad_memory_notification(PbadMemoryCallbackRoutine callback) @cname("RegisterBadMemoryNotification");
extern fn Winbool unregister_bad_memory_notification(void* registration_handle) @cname("UnregisterBadMemoryNotification");
extern fn Winbool get_memory_error_handling_capabilities(Pulong capabilities) @cname("GetMemoryErrorHandlingCapabilities");
extern fn Winbool allocate_user_physical_pages(void* h_process, ulong* number_of_pages, ulong* page_array) @cname("AllocateUserPhysicalPages");
extern fn Winbool free_user_physical_pages(void* h_process, ulong* number_of_pages, ulong* page_array) @cname("FreeUserPhysicalPages");
extern fn Winbool map_user_physical_pages(void* virtual_address, ulong number_of_pages, ulong* page_array) @cname("MapUserPhysicalPages");
extern fn Winbool map_user_physical_pages_scatter(Pvoid* virtual_addresses, ulong number_of_pages, ulong* page_array) @cname("MapUserPhysicalPagesScatter");
extern fn Handle create_job_object_a(LpsecurityAttributes lp_job_attributes, Lpcstr lp_name) @cname("CreateJobObjectA");
extern fn Handle create_job_object_w(LpsecurityAttributes lp_job_attributes, Lpcwstr lp_name) @cname("CreateJobObjectW");
extern fn Handle open_job_object_a(Dword* dw_desired_access, int b_inherit_handle, Lpcstr lp_name) @cname("OpenJobObjectA");
extern fn Handle open_job_object_w(Dword* dw_desired_access, int b_inherit_handle, Lpcwstr lp_name) @cname("OpenJobObjectW");
extern fn Winbool assign_process_to_job_object(void* h_job, void* h_process) @cname("AssignProcessToJobObject");
extern fn Winbool terminate_job_object(void* h_job, uint u_exit_code) @cname("TerminateJobObject");
extern fn Winbool query_information_job_object(void* h_job, Jobobjectinfoclass job_object_information_class, Lpvoid* lp_job_object_information, Dword* cb_job_object_information_length, Lpdword lp_return_length) @cname("QueryInformationJobObject");
extern fn Winbool set_information_job_object(void* h_job, Jobobjectinfoclass job_object_information_class, Lpvoid* lp_job_object_information, Dword* cb_job_object_information_length) @cname("SetInformationJobObject");
extern fn Winbool create_job_set(CULong num_job, PjobSetArray user_job_set, CULong flags) @cname("CreateJobSet");
extern fn Handle find_first_volume_a(Lpstr lpsz_volume_name, Dword* cch_buffer_length) @cname("FindFirstVolumeA");
extern fn Winbool find_next_volume_a(void* h_find_volume, Lpstr lpsz_volume_name, Dword* cch_buffer_length) @cname("FindNextVolumeA");
extern fn Handle find_first_volume_mount_point_a(Lpcstr lpsz_root_path_name, Lpstr lpsz_volume_mount_point, Dword* cch_buffer_length) @cname("FindFirstVolumeMountPointA");
extern fn Handle find_first_volume_mount_point_w(Lpcwstr lpsz_root_path_name, Lpwstr lpsz_volume_mount_point, Dword* cch_buffer_length) @cname("FindFirstVolumeMountPointW");
extern fn Winbool find_next_volume_mount_point_a(void* h_find_volume_mount_point, Lpstr lpsz_volume_mount_point, Dword* cch_buffer_length) @cname("FindNextVolumeMountPointA");
extern fn Winbool find_next_volume_mount_point_w(void* h_find_volume_mount_point, Lpwstr lpsz_volume_mount_point, Dword* cch_buffer_length) @cname("FindNextVolumeMountPointW");
extern fn Winbool find_volume_mount_point_close(void* h_find_volume_mount_point) @cname("FindVolumeMountPointClose");
extern fn Winbool set_volume_mount_point_a(Lpcstr lpsz_volume_mount_point, Lpcstr lpsz_volume_name) @cname("SetVolumeMountPointA");
extern fn Winbool set_volume_mount_point_w(Lpcwstr lpsz_volume_mount_point, Lpcwstr lpsz_volume_name) @cname("SetVolumeMountPointW");
extern fn Winbool get_volume_name_for_volume_mount_point_a(Lpcstr lpsz_volume_mount_point, Lpstr lpsz_volume_name, Dword* cch_buffer_length) @cname("GetVolumeNameForVolumeMountPointA");
extern fn Winbool get_volume_path_name_a(Lpcstr lpsz_file_name, Lpstr lpsz_volume_path_name, Dword* cch_buffer_length) @cname("GetVolumePathNameA");
extern fn Winbool get_volume_path_names_for_volume_name_a(Lpcstr lpsz_volume_name, Lpch lpsz_volume_path_names, Dword* cch_buffer_length, Pdword lpcch_return_length) @cname("GetVolumePathNamesForVolumeNameA");
extern fn Winbool allocate_user_physical_pages_numa(void* h_process, ulong* number_of_pages, ulong* page_array, Dword* nnd_preferred) @cname("AllocateUserPhysicalPagesNuma");
extern fn Handle create_act_ctx_a(Pcactctxa p_act_ctx) @cname("CreateActCtxA");
extern fn Handle create_act_ctx_w(Pcactctxw p_act_ctx) @cname("CreateActCtxW");
extern fn void add_ref_act_ctx(void* h_act_ctx) @cname("AddRefActCtx");
extern fn void release_act_ctx(void* h_act_ctx) @cname("ReleaseActCtx");
extern fn Winbool zombify_act_ctx(void* h_act_ctx) @cname("ZombifyActCtx");
extern fn Winbool activate_act_ctx(void* h_act_ctx, UlongPtr* lp_cookie) @cname("ActivateActCtx");
extern fn Winbool deactivate_act_ctx(Dword* dw_flags, ulong ul_cookie) @cname("DeactivateActCtx");
extern fn Winbool get_current_act_ctx(Handle* lph_act_ctx) @cname("GetCurrentActCtx");
extern fn Winbool find_act_ctx_section_string_a(Dword* dw_flags, Guid* lp_extension_guid, CULong ul_section_id, Lpcstr lp_string_to_find, PactctxSectionKeyedData returned_data) @cname("FindActCtxSectionStringA");
extern fn Winbool find_act_ctx_section_string_w(Dword* dw_flags, Guid* lp_extension_guid, CULong ul_section_id, Lpcwstr lp_string_to_find, PactctxSectionKeyedData returned_data) @cname("FindActCtxSectionStringW");
extern fn Winbool find_act_ctx_section_guid(Dword* dw_flags, Guid* lp_extension_guid, CULong ul_section_id, Guid* lp_guid_to_find, PactctxSectionKeyedData returned_data) @cname("FindActCtxSectionGuid");
extern fn Winbool query_act_ctx_w(Dword* dw_flags, void* h_act_ctx, void* pv_sub_instance, CULong ul_info_class, void* pv_buffer, ulong cb_buffer, SizeT* pcb_written_or_required) @cname("QueryActCtxW");
extern fn Boolean wts_is_server_container() @cname("WTSIsServerContainer");
extern fn Winbool get_numa_processor_node(char processor, Puchar node_number) @cname("GetNumaProcessorNode");
extern fn Winbool get_numa_node_processor_mask(char node, Pulonglong processor_mask) @cname("GetNumaNodeProcessorMask");
extern fn Winbool get_numa_available_memory_node(char node, Pulonglong available_bytes) @cname("GetNumaAvailableMemoryNode");
extern fn Winbool get_numa_proximity_node(CULong proximity_id, Puchar node_number) @cname("GetNumaProximityNode");
extern fn Word get_active_processor_group_count() @cname("GetActiveProcessorGroupCount");
extern fn Word get_maximum_processor_group_count() @cname("GetMaximumProcessorGroupCount");
extern fn Winbool get_numa_node_number_from_handle(void* h_file, Pushort node_number) @cname("GetNumaNodeNumberFromHandle");
extern fn Winbool get_numa_processor_node_ex(PprocessorNumber processor, Pushort node_number) @cname("GetNumaProcessorNodeEx");
extern fn Winbool get_numa_available_memory_node_ex(ushort node, Pulonglong available_bytes) @cname("GetNumaAvailableMemoryNodeEx");
extern fn Winbool get_numa_proximity_node_ex(CULong proximity_id, Pushort node_number) @cname("GetNumaProximityNodeEx");
extern fn Hresult register_application_recovery_callback(ApplicationRecoveryCallback p_recovey_callback, void* pv_parameter, Dword* dw_ping_interval, Dword* dw_flags) @cname("RegisterApplicationRecoveryCallback");
extern fn Hresult unregister_application_recovery_callback() @cname("UnregisterApplicationRecoveryCallback");
extern fn Hresult register_application_restart(Pcwstr pwz_commandline, Dword* dw_flags) @cname("RegisterApplicationRestart");
extern fn Hresult unregister_application_restart() @cname("UnregisterApplicationRestart");
extern fn Hresult get_application_recovery_callback(void* h_process, ApplicationRecoveryCallback* p_recovery_callback, Pvoid* ppv_parameter, Pdword pdw_ping_interval, Pdword pdw_flags) @cname("GetApplicationRecoveryCallback");
extern fn Hresult get_application_restart_settings(void* h_process, Pwstr pwz_commandline, Pdword pcch_size, Pdword pdw_flags) @cname("GetApplicationRestartSettings");
extern fn Hresult application_recovery_in_progress(Pbool pb_cancelled) @cname("ApplicationRecoveryInProgress");
extern fn void application_recovery_finished(int b_success) @cname("ApplicationRecoveryFinished");
extern fn Winbool delete_volume_mount_point_a(Lpcstr lpsz_volume_mount_point) @cname("DeleteVolumeMountPointA");
extern fn Winbool get_file_information_by_name(Pcwstr file_name, FileInfoByNameClass file_information_class, void* file_info_buffer, CULong file_info_buffer_size) @cname("GetFileInformationByName");
extern fn Handle open_file_by_id(void* h_volume_hint, LpfileIdDescriptor lp_file_id, Dword* dw_desired_access, Dword* dw_share_mode, LpsecurityAttributes lp_security_attributes, Dword* dw_flags_and_attributes) @cname("OpenFileById");
extern fn Boolean create_symbolic_link_a(Lpcstr lp_symlink_file_name, Lpcstr lp_target_file_name, Dword* dw_flags) @cname("CreateSymbolicLinkA");
extern fn Boolean create_symbolic_link_w(Lpcwstr lp_symlink_file_name, Lpcwstr lp_target_file_name, Dword* dw_flags) @cname("CreateSymbolicLinkW");
extern fn Boolean create_symbolic_link_transacted_a(Lpcstr lp_symlink_file_name, Lpcstr lp_target_file_name, Dword* dw_flags, void* h_transaction) @cname("CreateSymbolicLinkTransactedA");
extern fn Boolean create_symbolic_link_transacted_w(Lpcwstr lp_symlink_file_name, Lpcwstr lp_target_file_name, Dword* dw_flags, void* h_transaction) @cname("CreateSymbolicLinkTransactedW");
extern fn Winbool query_act_ctx_settings_w(Dword* dw_flags, void* h_act_ctx, Pcwstr settings_name_space, Pcwstr setting_name, Pwstr pv_buffer, ulong dw_buffer, SizeT* pdw_written_or_required) @cname("QueryActCtxSettingsW");
extern fn Winbool replace_partition_unit(Pwstr target_partition, Pwstr spare_partition, CULong flags) @cname("ReplacePartitionUnit");
extern fn Winbool add_secure_memory_cache_callback(PsecureMemoryCacheCallback pfn_call_back) @cname("AddSecureMemoryCacheCallback");
extern fn Winbool remove_secure_memory_cache_callback(PsecureMemoryCacheCallback pfn_call_back) @cname("RemoveSecureMemoryCacheCallback");
extern fn Winbool copy_context(Pcontext destination, Dword* context_flags, Pcontext source) @cname("CopyContext");
extern fn Winbool initialize_context(void* buffer, Dword* context_flags, Pcontext* context, Pdword context_length) @cname("InitializeContext");
extern fn Winbool initialize_context2(void* buffer, Dword* context_flags, Pcontext* context, Pdword context_length, ulong x_state_compaction_mask) @cname("InitializeContext2");
extern fn DwordVT get_enabled_x_state_features() @cname("GetEnabledXStateFeatures");
extern fn Winbool get_x_state_features_mask(Pcontext context, ulong* feature_mask) @cname("GetXStateFeaturesMask");
extern fn Pvoid locate_x_state_feature(Pcontext context, Dword* feature_id, Pdword length) @cname("LocateXStateFeature");
extern fn Winbool set_x_state_features_mask(Pcontext context, ulong feature_mask) @cname("SetXStateFeaturesMask");
extern fn DwordVT get_thread_enabled_x_state_features() @cname("GetThreadEnabledXStateFeatures");
extern fn Winbool enable_process_optional_x_state_features(ulong features) @cname("EnableProcessOptionalXStateFeatures");
extern fn void initialize_threadpool_environment(PtpCallbackEnviron cbe) @cname("InitializeThreadpoolEnvironment");
extern fn void set_threadpool_callback_pool(PtpCallbackEnviron cbe, PtpPool pool) @cname("SetThreadpoolCallbackPool");
extern fn void set_threadpool_callback_cleanup_group(PtpCallbackEnviron cbe, PtpCleanupGroup cleanup_group, PtpCleanupGroupCancelCallback cleanup_group_cb) @cname("SetThreadpoolCallbackCleanupGroup");
extern fn void set_threadpool_callback_runs_long(PtpCallbackEnviron cbe) @cname("SetThreadpoolCallbackRunsLong");
extern fn void set_threadpool_callback_library(PtpCallbackEnviron cbe, void* h) @cname("SetThreadpoolCallbackLibrary");
extern fn void set_threadpool_callback_priority(PtpCallbackEnviron cbe, TpCallbackPriority prio) @cname("SetThreadpoolCallbackPriority");
extern fn void destroy_threadpool_environment(PtpCallbackEnviron cbe) @cname("DestroyThreadpoolEnvironment");
extern fn void set_threadpool_callback_persistent(PtpCallbackEnviron pcbe) @cname("SetThreadpoolCallbackPersistent");

