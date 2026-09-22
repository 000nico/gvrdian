module win32::cfgmgr;

// Type Aliases & Callbacks
alias Configret = int;
alias Pdevnode = Devnode*;
alias Pdevinst = Devnode*;
alias Devnodeid = int*;
alias PlogConf = LogConf*;
alias PresDes = ResDes*;
alias Presourceid = Resourceid*;
alias Ppriority = Priority*;
alias PrangeList = RangeList*;
alias PrangeElement = RangeElement*;
alias Phmachine = Hmachine*;
alias PconflictList = ConflictList*;
alias PconflictDetailsA = ConflictDetailsA*;
alias PconflictDetailsW = ConflictDetailsW*;
alias ConflictDetails = ConflictDetailsA;
alias PconflictDetails = PconflictDetailsA;
alias MemRange = MemRangeS;
alias PmemRange = MemRangeS*;
alias MemDes = MemDesS;
alias PmemDes = MemDesS*;
alias MemResource = MemResourceS;
alias PmemResource = MemResourceS*;
alias MemLargeRange = MemLargeRangeS;
alias PmemLargeRange = MemLargeRangeS*;
alias MemLargeDes = MemLargeDesS;
alias PmemLargeDes = MemLargeDesS*;
alias MemLargeResource = MemLargeResourceS;
alias PmemLargeResource = MemLargeResourceS*;
alias IoRange = IoRangeS;
alias PioRange = IoRangeS*;
alias IoDes = IoDesS;
alias PioDes = IoDesS*;
alias IoResource = IoResourceS;
alias PioResource = IoResourceS*;
alias DmaRange = DmaRangeS;
alias PdmaRange = DmaRangeS*;
alias DmaDes = DmaDesS;
alias PdmaDes = DmaDesS*;
alias DmaResource = DmaResourceS;
alias PdmaResource = DmaResourceS*;
alias IrqRange = IrqRangeS;
alias PirqRange = IrqRangeS*;
alias IrqDes32 = IrqDes32S;
alias PirqDes32 = IrqDes32S*;
alias IrqDes64 = IrqDes64S;
alias PirqDes64 = IrqDes64S*;
alias IrqDes = IrqDes64;
alias PirqDes = PirqDes64;
alias IrqResource32 = IrqResource32S;
alias PirqResource32 = IrqResource32S*;
alias IrqResource64 = IrqResource64S;
alias PirqResource64 = IrqResource64S*;
alias IrqResource = IrqResource64;
alias PirqResource = PirqResource64;
alias DevprivateRange = DevprivateRangeS;
alias PdevprivateRange = DevprivateRangeS*;
alias DevprivateDes = DevprivateDesS;
alias PdevprivateDes = DevprivateDesS*;
alias DevprivateResource = DevprivateResourceS;
alias PdevprivateResource = DevprivateResourceS*;
alias CsDes = CsDesS;
alias PcsDes = CsDesS*;
alias CsResource = CsResourceS;
alias PcsResource = CsResourceS*;
alias PccardDes = PccardDesS;
alias PpccardDes = PccardDesS*;
alias PccardResource = PccardResourceS;
alias PpccardResource = PccardResourceS*;
alias MfcardDes = MfcardDesS;
alias PmfcardDes = MfcardDesS*;
alias MfcardResource = MfcardResourceS;
alias PmfcardResource = MfcardResourceS*;
alias BusnumberRange = BusnumberRangeS;
alias PbusnumberRange = BusnumberRangeS*;
alias BusnumberDes = BusnumberDesS;
alias PbusnumberDes = BusnumberDesS*;
alias BusnumberResource = BusnumberResourceS;
alias PbusnumberResource = BusnumberResourceS*;
alias ConnectionDes = ConnectionDesS;
alias PconnectionDes = ConnectionDesS*;
alias ConnectionResource = ConnectionResourceS;
alias PconnectionResource = ConnectionResourceS*;
alias HwprofileinfoA = HwprofileinfoSa;
alias PhwprofileinfoA = HwprofileinfoSa*;
alias HwprofileinfoW = HwprofileinfoSw;
alias PhwprofileinfoW = HwprofileinfoSw*;
alias Hwprofileinfo = HwprofileinfoA;
alias Phwprofileinfo = PhwprofileinfoA;
alias PcmNotifyFilterType = CmNotifyFilterType*;
alias PcmNotifyFilter = CmNotifyFilter*;
alias PcmNotifyAction = CmNotifyAction*;
alias PcmNotifyEventData = CmNotifyEventData*;

enum CmNotifyFilterType
{
	CM_NOTIFY_FILTER_TYPE_DEVICEINTERFACE,
	CM_NOTIFY_FILTER_TYPE_DEVICEHANDLE,
	CM_NOTIFY_FILTER_TYPE_DEVICEINSTANCE,
	CM_NOTIFY_FILTER_TYPE_MAX
}

enum CmNotifyAction
{
	CM_NOTIFY_ACTION_DEVICEINTERFACEARRIVAL,
	CM_NOTIFY_ACTION_DEVICEINTERFACEREMOVAL,
	CM_NOTIFY_ACTION_DEVICEQUERYREMOVE,
	CM_NOTIFY_ACTION_DEVICEQUERYREMOVEFAILED,
	CM_NOTIFY_ACTION_DEVICEREMOVEPENDING,
	CM_NOTIFY_ACTION_DEVICEREMOVECOMPLETE,
	CM_NOTIFY_ACTION_DEVICECUSTOMEVENT,
	CM_NOTIFY_ACTION_DEVICEINSTANCEENUMERATED,
	CM_NOTIFY_ACTION_DEVICEINSTANCESTARTED,
	CM_NOTIFY_ACTION_DEVICEINSTANCEREMOVED,
	CM_NOTIFY_ACTION_MAX
}

struct ConflictDetailsA { void* _unused; }

struct ConflictDetailsW { void* _unused; }

struct MemRangeS { void* _unused; }

struct MemDesS { void* _unused; }

struct MemResourceS { void* _unused; }

struct MemLargeRangeS { void* _unused; }

struct MemLargeDesS { void* _unused; }

struct MemLargeResourceS { void* _unused; }

struct IoRangeS { void* _unused; }

struct IoDesS { void* _unused; }

struct IoResourceS { void* _unused; }

struct DmaRangeS { void* _unused; }

struct DmaDesS { void* _unused; }

struct DmaResourceS { void* _unused; }

struct IrqRangeS { void* _unused; }

struct IrqDes32S { void* _unused; }

struct IrqDes64S { void* _unused; }

struct IrqResource32S { void* _unused; }

struct IrqResource64S { void* _unused; }

struct DevprivateRangeS { void* _unused; }

struct DevprivateDesS { void* _unused; }

struct DevprivateResourceS { void* _unused; }

struct CsDesS { void* _unused; }

struct CsResourceS { void* _unused; }

struct PccardDesS { void* _unused; }

struct PccardResourceS { void* _unused; }

struct MfcardDesS { void* _unused; }

struct MfcardResourceS { void* _unused; }

struct BusnumberRangeS { void* _unused; }

struct BusnumberDesS { void* _unused; }

struct BusnumberResourceS { void* _unused; }

struct ConnectionDesS { void* _unused; }

struct ConnectionResourceS { void* _unused; }

struct HwprofileinfoSa { void* _unused; }

struct HwprofileinfoSw { void* _unused; }

struct CmNotifyFilter { void* _unused; }

struct CmNotifyEventData { void* _unused; }

struct Devnode { void* _unused; }

struct LogConf { void* _unused; }

struct ResDes { void* _unused; }

struct Resourceid { void* _unused; }

struct Priority { void* _unused; }

struct RangeList { void* _unused; }

struct RangeElement { void* _unused; }

struct Hmachine { void* _unused; }

struct ConflictList { void* _unused; }

// Functions
extern fn Configret cm_apply_power_scheme(int arg0) @cname("CM_Apply_PowerScheme");
extern fn void winapi(int* arg0) @cname("WINAPI");

