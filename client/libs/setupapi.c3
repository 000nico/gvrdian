module win32::setupapi;

// Type Aliases & Callbacks
alias Pinfcontext = Infcontext*;
alias PspInfInformation = SpInfInformation*;
alias PspAltplatformInfoV2 = SpAltplatformInfoV2*;
alias PspAltplatformInfoV1 = SpAltplatformInfoV1*;
alias SpAltplatformInfo = SpAltplatformInfoV2;
alias PspAltplatformInfo = PspAltplatformInfoV2;
alias PspOriginalFileInfoA = SpOriginalFileInfoA*;
alias PspOriginalFileInfoW = SpOriginalFileInfoW*;
alias SpOriginalFileInfo = SpOriginalFileInfoA;
alias PspOriginalFileInfo = PspOriginalFileInfoA;
alias PfilepathsA = FilepathsA*;
alias PfilepathsW = FilepathsW*;
alias Filepaths = FilepathsA;
alias Pfilepaths = PfilepathsA;
alias PfilepathsSignerinfoA = FilepathsSignerinfoA*;
alias PfilepathsSignerinfoW = FilepathsSignerinfoW*;
alias FilepathsSignerinfo = FilepathsSignerinfoA;
alias PfilepathsSignerinfo = PfilepathsSignerinfoA;
alias PsourceMediaA = SourceMediaA*;
alias PsourceMediaW = SourceMediaW*;
alias SourceMedia = SourceMediaA;
alias PsourceMedia = PsourceMediaA;
alias PcabinetInfoA = CabinetInfoA*;
alias PcabinetInfoW = CabinetInfoW*;
alias CabinetInfo = CabinetInfoA;
alias PcabinetInfo = PcabinetInfoA;
alias PfileInCabinetInfoA = FileInCabinetInfoA*;
alias PfileInCabinetInfoW = FileInCabinetInfoW*;
alias FileInCabinetInfo = FileInCabinetInfoA;
alias PfileInCabinetInfo = PfileInCabinetInfoA;
alias PspRegisterControlStatusa = SpRegisterControlStatusa*;
alias PspRegisterControlStatusw = SpRegisterControlStatusw*;
alias SpRegisterControlStatus = SpRegisterControlStatusa;
alias PspRegisterControlStatus = PspRegisterControlStatusa;
alias PspFileCopyParamsA = SpFileCopyParamsA*;
alias PspFileCopyParamsW = SpFileCopyParamsW*;
alias SpFileCopyParams = SpFileCopyParamsA;
alias PspFileCopyParams = PspFileCopyParamsA;
alias PspDevinfoData = SpDevinfoData*;
alias PspDeviceInterfaceData = SpDeviceInterfaceData*;
alias SpInterfaceDeviceData = SpDeviceInterfaceData;
alias PspInterfaceDeviceData = PspDeviceInterfaceData;
alias PspDeviceInterfaceDetailDataA = SpDeviceInterfaceDetailDataA*;
alias PspDeviceInterfaceDetailDataW = SpDeviceInterfaceDetailDataW*;
alias SpDeviceInterfaceDetailData = SpDeviceInterfaceDetailDataA;
alias PspDeviceInterfaceDetailData = PspDeviceInterfaceDetailDataA;
alias SpInterfaceDeviceDetailDataW = SpDeviceInterfaceDetailDataW;
alias PspInterfaceDeviceDetailDataW = PspDeviceInterfaceDetailDataW;
alias SpInterfaceDeviceDetailDataA = SpDeviceInterfaceDetailDataA;
alias PspInterfaceDeviceDetailDataA = PspDeviceInterfaceDetailDataA;
alias SpInterfaceDeviceDetailData = SpInterfaceDeviceDetailDataA;
alias PspInterfaceDeviceDetailData = PspInterfaceDeviceDetailDataA;
alias PspDevinfoListDetailDataA = SpDevinfoListDetailDataA*;
alias PspDevinfoListDetailDataW = SpDevinfoListDetailDataW*;
alias SpDevinfoListDetailData = SpDevinfoListDetailDataA;
alias PspDevinfoListDetailData = PspDevinfoListDetailDataA;
alias DiFunction = fn int(int*);
alias PspDevinstallParamsA = SpDevinstallParamsA*;
alias PspDevinstallParamsW = SpDevinstallParamsW*;
alias SpDevinstallParams = SpDevinstallParamsA;
alias PspDevinstallParams = PspDevinstallParamsA;
alias PspClassinstallHeader = SpClassinstallHeader*;
alias PspEnableclassParams = SpEnableclassParams*;
alias PspPropchangeParams = SpPropchangeParams*;
alias PspRemovedeviceParams = SpRemovedeviceParams*;
alias PspUnremovedeviceParams = SpUnremovedeviceParams*;
alias PspSelectdeviceParamsA = SpSelectdeviceParamsA*;
alias PspSelectdeviceParamsW = SpSelectdeviceParamsW*;
alias SpSelectdeviceParams = SpSelectdeviceParamsA;
alias PspSelectdeviceParams = PspSelectdeviceParamsA;
alias PspDetectdeviceParams = SpDetectdeviceParams*;
alias PspInstallwizardData = SpInstallwizardData*;
alias PspNewdevicewizardData = SpNewdevicewizardData*;
alias SpAddpropertypageData = SpNewdevicewizardData;
alias PspAddpropertypageData = PspNewdevicewizardData;
alias PspTroubleshooterParamsA = SpTroubleshooterParamsA*;
alias PspTroubleshooterParamsW = SpTroubleshooterParamsW*;
alias SpTroubleshooterParams = SpTroubleshooterParamsA;
alias PspTroubleshooterParams = PspTroubleshooterParamsA;
alias PspPowermessagewakeParamsA = SpPowermessagewakeParamsA*;
alias PspPowermessagewakeParamsW = SpPowermessagewakeParamsW*;
alias SpPowermessagewakeParams = SpPowermessagewakeParamsA;
alias PspPowermessagewakeParams = PspPowermessagewakeParamsA;
alias PspDrvinfoDataV2A = SpDrvinfoDataV2A*;
alias PspDrvinfoDataV2W = SpDrvinfoDataV2W*;
alias PspDrvinfoDataV1A = SpDrvinfoDataV1A*;
alias PspDrvinfoDataV1W = SpDrvinfoDataV1W*;
alias SpDrvinfoDataV1 = SpDrvinfoDataV1A;
alias PspDrvinfoDataV1 = PspDrvinfoDataV1A;
alias SpDrvinfoDataV2 = SpDrvinfoDataV2A;
alias PspDrvinfoDataV2 = PspDrvinfoDataV2A;
alias SpDrvinfoDataA = SpDrvinfoDataV2A;
alias PspDrvinfoDataA = PspDrvinfoDataV2A;
alias SpDrvinfoDataW = SpDrvinfoDataV2W;
alias PspDrvinfoDataW = PspDrvinfoDataV2W;
alias SpDrvinfoData = SpDrvinfoDataV2;
alias PspDrvinfoData = PspDrvinfoDataV2;
alias PspDrvinfoDetailDataA = SpDrvinfoDetailDataA*;
alias PspDrvinfoDetailDataW = SpDrvinfoDetailDataW*;
alias SpDrvinfoDetailData = SpDrvinfoDetailDataA;
alias PspDrvinfoDetailData = PspDrvinfoDetailDataA;
alias PspDrvinstallParams = SpDrvinstallParams*;
alias PcoinstallerContextData = CoinstallerContextData*;
alias PspClassimagelistData = SpClassimagelistData*;
alias PspPropsheetpageRequest = SpPropsheetpageRequest*;
alias PspBackupQueueParamsV2A = SpBackupQueueParamsV2A*;
alias PspBackupQueueParamsV2W = SpBackupQueueParamsV2W*;
alias PspBackupQueueParamsV1A = SpBackupQueueParamsV1A*;
alias PspBackupQueueParamsV1W = SpBackupQueueParamsV1W*;
alias SpBackupQueueParamsV1 = SpBackupQueueParamsV1A;
alias PspBackupQueueParamsV1 = PspBackupQueueParamsV1A;
alias SpBackupQueueParamsV2 = SpBackupQueueParamsV2A;
alias PspBackupQueueParamsV2 = PspBackupQueueParamsV2A;
alias SpBackupQueueParamsA = SpBackupQueueParamsV2A;
alias PspBackupQueueParamsA = PspBackupQueueParamsV2A;
alias SpBackupQueueParamsW = SpBackupQueueParamsV2W;
alias PspBackupQueueParamsW = PspBackupQueueParamsV2W;
alias SpBackupQueueParams = SpBackupQueueParamsV2;
alias PspBackupQueueParams = PspBackupQueueParamsV2;
alias PspInfSignerInfoA = SpInfSignerInfoA*;
alias PspInfSignerInfoW = SpInfSignerInfoW*;
alias SpInfSignerInfo = SpInfSignerInfoA;
alias PspInfSignerInfo = PspInfSignerInfoA;

enum SetupFileLogInfo
{
	SETUPFILELOGSOURCEFILENAME,
	SETUPFILELOGCHECKSUM,
	SETUPFILELOGDISKTAGFILE,
	SETUPFILELOGDISKDESCRIPTION,
	SETUPFILELOGOTHERINFO,
	SETUPFILELOGMAX
}

struct Infcontext { void* _unused; }

struct SpInfInformation { void* _unused; }

struct SpAltplatformInfoV2 { void* _unused; }

struct SpAltplatformInfoV1 { void* _unused; }

struct SpOriginalFileInfoA { void* _unused; }

struct SpOriginalFileInfoW { void* _unused; }

struct FilepathsA { void* _unused; }

struct FilepathsW { void* _unused; }

struct FilepathsSignerinfoA { void* _unused; }

struct FilepathsSignerinfoW { void* _unused; }

struct SourceMediaA { void* _unused; }

struct SourceMediaW { void* _unused; }

struct CabinetInfoA { void* _unused; }

struct CabinetInfoW { void* _unused; }

struct FileInCabinetInfoA { void* _unused; }

struct FileInCabinetInfoW { void* _unused; }

struct SpRegisterControlStatusa { void* _unused; }

struct SpRegisterControlStatusw { void* _unused; }

struct SpFileCopyParamsA { void* _unused; }

struct SpFileCopyParamsW { void* _unused; }

struct SpDevinfoData { void* _unused; }

struct SpDeviceInterfaceData { void* _unused; }

struct SpDeviceInterfaceDetailDataA { void* _unused; }

struct SpDeviceInterfaceDetailDataW { void* _unused; }

struct SpDevinfoListDetailDataA { void* _unused; }

struct SpDevinfoListDetailDataW { void* _unused; }

struct SpDevinstallParamsA { void* _unused; }

struct SpDevinstallParamsW { void* _unused; }

struct SpClassinstallHeader { void* _unused; }

struct SpEnableclassParams { void* _unused; }

struct SpPropchangeParams { void* _unused; }

struct SpRemovedeviceParams { void* _unused; }

struct SpUnremovedeviceParams { void* _unused; }

struct SpSelectdeviceParamsA { void* _unused; }

struct SpSelectdeviceParamsW { void* _unused; }

struct SpDetectdeviceParams { void* _unused; }

struct SpInstallwizardData { void* _unused; }

struct SpNewdevicewizardData { void* _unused; }

struct SpTroubleshooterParamsA { void* _unused; }

struct SpTroubleshooterParamsW { void* _unused; }

struct SpPowermessagewakeParamsA { void* _unused; }

struct SpPowermessagewakeParamsW { void* _unused; }

struct SpDrvinfoDataV2A { void* _unused; }

struct SpDrvinfoDataV2W { void* _unused; }

struct SpDrvinfoDataV1A { void* _unused; }

struct SpDrvinfoDataV1W { void* _unused; }

struct SpDrvinfoDetailDataA { void* _unused; }

struct SpDrvinfoDetailDataW { void* _unused; }

struct SpDrvinstallParams { void* _unused; }

struct CoinstallerContextData { void* _unused; }

struct SpClassimagelistData { void* _unused; }

struct SpPropsheetpageRequest { void* _unused; }

struct SpBackupQueueParamsV2A { void* _unused; }

struct SpBackupQueueParamsV2W { void* _unused; }

struct SpBackupQueueParamsV1A { void* _unused; }

struct SpBackupQueueParamsV1W { void* _unused; }

struct SpInfSignerInfoA { void* _unused; }

struct SpInfSignerInfoW { void* _unused; }

