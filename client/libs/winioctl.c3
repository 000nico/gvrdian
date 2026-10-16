module win32::ioctl;

// Type Aliases & Callbacks
alias PstorageReadCapacity = StorageReadCapacity*;
alias PdeviceManageDataSetAttributes = DeviceManageDataSetAttributes*;
alias PdeviceDataSetRange = DeviceDataSetRange*;
alias PdeviceDsmNotificationParameters = DeviceDsmNotificationParameters*;
alias PstorageGetBcPropertiesOutput = StorageGetBcPropertiesOutput*;
alias PstorageAllocateBcStreamInput = StorageAllocateBcStreamInput*;
alias PstorageAllocateBcStreamOutput = StorageAllocateBcStreamOutput*;
alias PstoragePriorityHintSupport = StoragePriorityHintSupport*;
alias PstorageMediaSerialNumberData = StorageMediaSerialNumberData*;
alias PpersistentReserveCommand = PersistentReserveCommand*;
alias PstorageHotplugInfo = StorageHotplugInfo*;
alias PstorageDeviceNumber = StorageDeviceNumber*;
alias PstorageDeviceNumbers = StorageDeviceNumbers*;
alias PstorageDeviceNumberEx = StorageDeviceNumberEx*;
alias PstorageBusResetRequest = StorageBusResetRequest*;
alias PstorageBreakReservationRequest = StorageBreakReservationRequest*;
alias PpreventMediaRemoval = PreventMediaRemoval*;
alias PclassMediaChangeContext = ClassMediaChangeContext*;
alias PtapeStatistics = TapeStatistics*;
alias PtapeGetStatistics = TapeGetStatistics*;
alias PstorageMediaType = StorageMediaType*;
alias PstorageBusType = StorageBusType*;
alias PdeviceMediaInfo = DeviceMediaInfo*;
alias PgetMediaTypes = GetMediaTypes*;
alias PstoragePredictFailure = StoragePredictFailure*;
alias PstorageFailurePredictionConfig = StorageFailurePredictionConfig*;
alias PmediaType = MediaType*;
alias PformatParameters = FormatParameters*;
alias PformatExParameters = FormatExParameters*;
alias PdiskGeometry = DiskGeometry*;
alias PpartitionInformation = PartitionInformation*;
alias PsetPartitionInformation = SetPartitionInformation*;
alias PdriveLayoutInformation = DriveLayoutInformation*;
alias PverifyInformation = VerifyInformation*;
alias PreassignBlocks = ReassignBlocks*;
alias PreassignBlocksEx = ReassignBlocksEx*;
alias PpartitionInformationGpt = PartitionInformationGpt*;
alias PpartitionInformationMbr = PartitionInformationMbr*;
alias SetPartitionInformationMbr = SetPartitionInformation;
alias SetPartitionInformationGpt = PartitionInformationGpt;
alias PsetPartitionInformationEx = SetPartitionInformationEx*;
alias PcreateDiskGpt = CreateDiskGpt*;
alias PcreateDiskMbr = CreateDiskMbr*;
alias PcreateDisk = CreateDisk*;
alias PgetLengthInformation = GetLengthInformation*;
alias PpartitionInformationEx = PartitionInformationEx*;
alias PdriveLayoutInformationGpt = DriveLayoutInformationGpt*;
alias PdriveLayoutInformationMbr = DriveLayoutInformationMbr*;
alias PdriveLayoutInformationEx = DriveLayoutInformationEx*;
alias PdiskInt13Info = DiskInt13Info*;
alias PdiskExInt13Info = DiskExInt13Info*;
alias PdiskDetectionInfo = DiskDetectionInfo*;
alias PdiskPartitionInfo = DiskPartitionInfo*;
alias PdiskGeometryEx = DiskGeometryEx*;
alias PdiskControllerNumber = DiskControllerNumber*;
alias PdiskCacheInformation = DiskCacheInformation*;
alias PdiskGrowPartition = DiskGrowPartition*;
alias PhistogramBucket = HistogramBucket*;
alias PdiskHistogram = DiskHistogram*;
alias PdiskPerformance = DiskPerformance*;
alias PdiskRecord = DiskRecord*;
alias PdiskLogging = DiskLogging*;
alias PbinRange = BinRange*;
alias PperfBin = PerfBin*;
alias PbinCount = BinCount*;
alias PbinResults = BinResults*;
alias Pgetversioninparams = Getversioninparams*;
alias Lpgetversioninparams = Getversioninparams*;
alias Pideregs = Ideregs*;
alias Lpideregs = Ideregs*;
alias Psendcmdinparams = Sendcmdinparams*;
alias Lpsendcmdinparams = Sendcmdinparams*;
alias Pdriverstatus = Driverstatus*;
alias Lpdriverstatus = Driverstatus*;
alias Psendcmdoutparams = Sendcmdoutparams*;
alias Lpsendcmdoutparams = Sendcmdoutparams*;
alias PelementType = ElementType*;
alias PchangerElement = ChangerElement*;
alias PchangerElementList = ChangerElementList*;
alias PgetChangerParameters = GetChangerParameters*;
alias PchangerProductData = ChangerProductData*;
alias PchangerSetAccess = ChangerSetAccess*;
alias PchangerReadElementStatus = ChangerReadElementStatus*;
alias PchangerElementStatus = ChangerElementStatus*;
alias PchangerElementStatusEx = ChangerElementStatusEx*;
alias PchangerInitializeElementStatus = ChangerInitializeElementStatus*;
alias PchangerSetPosition = ChangerSetPosition*;
alias PchangerExchangeMedium = ChangerExchangeMedium*;
alias PchangerMoveMedium = ChangerMoveMedium*;
alias PchangerSendVolumeTagInformation = ChangerSendVolumeTagInformation*;
alias PreadElementAddressInfo = ReadElementAddressInfo*;
alias PchangerDeviceProblemType = ChangerDeviceProblemType*;
alias PpathnameBuffer = PathnameBuffer*;
alias PfsctlQueryFatBpbBuffer = FsctlQueryFatBpbBuffer*;
alias PntfsVolumeDataBuffer = Void*;
alias PntfsExtendedVolumeData = Void*;
alias PstartingLcnInputBuffer = Void*;
alias PvolumeBitmapBuffer = Void*;
alias PstartingVcnInputBuffer = Void*;
alias PretrievalPointersBuffer = RetrievalPointersBuffer*;
alias PntfsFileRecordInputBuffer = Void*;
alias PntfsFileRecordOutputBuffer = Void*;
alias PmoveFileData = Void*;
alias PmoveFileRecordData = MoveFileRecordData*;
alias PmoveFileData32 = MoveFileData32*;
alias PfindBySidData = Void*;
alias PfindBySidOutput = Void*;
alias PmftEnumData = Void*;
alias PcreateUsnJournalData = Void*;
alias PreadUsnJournalData = Void*;
alias PusnRecord = Void*;
alias PusnJournalData = Void*;
alias PdeleteUsnJournalData = Void*;
alias PmarkHandleInfo = Void*;
alias PmarkHandleInfo32 = Void*;
alias PbulkSecurityTestData = Void*;
alias PfilePrefetch = FilePrefetch*;
alias PfilePrefetchEx = FilePrefetchEx*;
alias PfilesystemStatistics = FilesystemStatistics*;
alias PfatStatistics = FatStatistics*;
alias PexfatStatistics = ExfatStatistics*;
alias PntfsStatistics = NtfsStatistics*;
alias PfileObjectidBuffer = FileObjectidBuffer*;
alias PfileSetSparseBuffer = FileSetSparseBuffer*;
alias PfileZeroDataInformation = FileZeroDataInformation*;
alias PfileAllocatedRangeBuffer = FileAllocatedRangeBuffer*;
alias PencryptionBuffer = EncryptionBuffer*;
alias PdecryptionStatusBuffer = DecryptionStatusBuffer*;
alias PrequestRawEncryptedData = RequestRawEncryptedData*;
alias PencryptedDataInfo = EncryptedDataInfo*;
alias PplexReadDataRequest = PlexReadDataRequest*;
alias PsiCopyfile = SiCopyfile*;
alias PstorageDescriptorHeader = StorageDescriptorHeader*;
alias PstoragePropertyId = StoragePropertyId*;
alias PstorageQueryType = StorageQueryType*;
alias PstorageSetType = StorageSetType*;
alias PstoragePropertyQuery = StoragePropertyQuery*;
alias PstoragePropertySet = StoragePropertySet*;
alias PstorageDeviceDescriptor = StorageDeviceDescriptor*;
alias PstorageAdapterDescriptor = StorageAdapterDescriptor*;
alias PstorageDeviceIdDescriptor = StorageDeviceIdDescriptor*;
alias PvolumeGetGptAttributesInformation = VolumeGetGptAttributesInformation*;
alias PdeviceSeekPenaltyDescriptor = DeviceSeekPenaltyDescriptor*;
alias PdeviceWriteAggregationDescriptor = DeviceWriteAggregationDescriptor*;
alias PdeviceTrimDescriptor = DeviceTrimDescriptor*;
alias PdeviceLbProvisioningDescriptor = DeviceLbProvisioningDescriptor*;
alias PstorageLbProvisioningMapResources = StorageLbProvisioningMapResources*;
alias PdevicePowerDescriptor = DevicePowerDescriptor*;
alias PdeviceCopyOffloadDescriptor = DeviceCopyOffloadDescriptor*;
alias PstorageDeviceResiliencyDescriptor = StorageDeviceResiliencyDescriptor*;
alias PstorageRpmbFrameType = StorageRpmbFrameType*;
alias PstorageRpmbDescriptor = StorageRpmbDescriptor*;
alias PstorageCryptoAlgorithmId = StorageCryptoAlgorithmId*;
alias PstorageCryptoKeySize = StorageCryptoKeySize*;
alias PstorageCryptoCapability = StorageCryptoCapability*;
alias PstorageCryptoDescriptor = StorageCryptoDescriptor*;
alias PstorageTierMediaType = StorageTierMediaType*;
alias PstorageTierClass = StorageTierClass*;
alias PstorageTier = StorageTier*;
alias PstorageDeviceTieringDescriptor = StorageDeviceTieringDescriptor*;
alias PstorageDeviceFaultDomainDescriptor = StorageDeviceFaultDomainDescriptor*;
alias PstorageProtocolType = StorageProtocolType*;
alias PstorageProtocolNvmeDataType = StorageProtocolNvmeDataType*;
alias PstorageProtocolAtaDataType = StorageProtocolAtaDataType*;
alias PstorageProtocolUfsDataType = StorageProtocolUfsDataType*;
alias PstorageProtocolDataSubvalueGetLogPage = StorageProtocolDataSubvalueGetLogPage*;
alias PstorageProtocolSpecificData = StorageProtocolSpecificData*;
alias PstorageProtocolSpecificDataExt = StorageProtocolSpecificDataExt*;
alias PstorageProtocolDataDescriptor = StorageProtocolDataDescriptor*;
alias PstorageProtocolDataDescriptorExt = StorageProtocolDataDescriptorExt*;
alias PstorageTemperatureInfo = StorageTemperatureInfo*;
alias PstorageTemperatureDataDescriptor = StorageTemperatureDataDescriptor*;
alias PstorageTemperatureThreshold = StorageTemperatureThreshold*;
alias PstorageProtocolCommand = StorageProtocolCommand*;
alias PfileLevelTrimRange = FileLevelTrimRange*;
alias PfileLevelTrim = FileLevelTrim*;
alias PfileLevelTrimOutput = FileLevelTrimOutput*;
alias PduplicateExtentsData = DuplicateExtentsData*;
alias PduplicateExtentsData32 = DuplicateExtentsData32*;
alias PduplicateExtentsDataEx = DuplicateExtentsDataEx*;
alias PduplicateExtentsDataEx32 = DuplicateExtentsDataEx32*;
alias PdiskExtent = DiskExtent*;
alias PvolumeDiskExtents = VolumeDiskExtents*;

constdef StorageMediaType : int
{
	DDS_4MM = 32,
	MINIQIC = 33,
	TRAVAN = 34,
	QIC = 35,
	MP_8MM = 36,
	AME_8MM = 37,
	AIT1_8MM = 38,
	DLT = 39,
	NCTP = 40,
	IBM_3480 = 41,
	IBM_3490E = 42,
	IBM_MAGSTAR_3590 = 43,
	IBM_MAGSTAR_MP = 44,
	STK_DATA_D3 = 45,
	SONY_DTF = 46,
	DV_6MM = 47,
	DMI = 48,
	SONY_D2 = 49,
	CLEANER_CARTRIDGE = 50,
	CD_ROM = 51,
	CD_R = 52,
	CD_RW = 53,
	DVD_ROM = 54,
	DVD_R = 55,
	DVD_RW = 56,
	MO_3_RW = 57,
	MO_5_WO = 58,
	MO_5_RW = 59,
	MO_5_LIMDOW = 60,
	PC_5_WO = 61,
	PC_5_RW = 62,
	PD_5_RW = 63,
	ABL_5_WO = 64,
	PINNACLE_APEX_5_RW = 65,
	SONY_12_WO = 66,
	PHILIPS_12_WO = 67,
	HITACHI_12_WO = 68,
	CYGNET_12_WO = 69,
	KODAK_14_WO = 70,
	MO_NFR_525 = 71,
	NIKON_12_RW = 72,
	IOMEGA_ZIP = 73,
	IOMEGA_JAZ = 74,
	SYQUEST_EZ135 = 75,
	SYQUEST_EZFLYER = 76,
	SYQUEST_SYJET = 77,
	AVATAR_F2 = 78,
	MP2_8MM = 79,
	DST_S = 80,
	DST_M = 81,
	DST_L = 82,
	VXATAPE_1 = 83,
	VXATAPE_2 = 84,
	STK_9840 = 85,
	LTO_ULTRIUM = 86,
	LTO_ACCELIS = 87,
	DVD_RAM = 88,
	AIT_8MM = 89,
	ADR_1 = 90,
	ADR_2 = 91,
	STK_9940 = 92,
	SAIT = 93,
	VXATAPE = 94
}

constdef StorageBusType : int
{
	BUSTYPEUNKNOWN = 0,
	BUSTYPESCSI = 1,
	BUSTYPEATAPI = 2,
	BUSTYPEATA = 3,
	BUSTYPE1394 = 4,
	BUSTYPESSA = 5,
	BUSTYPEFIBRE = 6,
	BUSTYPEUSB = 7,
	BUSTYPERAID = 8,
	BUSTYPEMAX = 9,
	BUSTYPEMAXRESERVED = 127
}

enum MediaType
{
	UNKNOWN,
	F5_1PT2_512,
	F3_1PT44_512,
	F3_2PT88_512,
	F3_20PT8_512,
	F3_720_512,
	F5_360_512,
	F5_320_512,
	F5_320_1024,
	F5_180_512,
	F5_160_512,
	REMOVABLEMEDIA,
	FIXEDMEDIA,
	F3_120M_512,
	F3_640_512,
	F5_640_512,
	F5_720_512,
	F3_1PT2_512,
	F3_1PT23_1024,
	F5_1PT23_1024,
	F3_128MB_512,
	F3_230MB_512,
	F8_256_128,
	F3_200MB_512,
	F3_240M_512,
	F3_32M_512
}

enum PartitionStyle
{
	PARTITION_STYLE_MBR,
	PARTITION_STYLE_GPT,
	PARTITION_STYLE_RAW
}

enum DetectionType
{
	DETECTNONE,
	DETECTINT13,
	DETECTEXINT13
}

enum DiskCacheRetentionPriority
{
	EQUALPRIORITY,
	KEEPPREFETCHEDDATA,
	KEEPREADDATA
}

enum BinTypes
{
	REQUESTSIZE,
	REQUESTLOCATION
}

enum ElementType
{
	ALLELEMENTS,
	CHANGERTRANSPORT,
	CHANGERSLOT,
	CHANGERIEPORT,
	CHANGERDRIVE,
	CHANGERDOOR,
	CHANGERKEYPAD,
	CHANGERMAXELEMENT
}

enum ChangerDeviceProblemType
{
	DEVICEPROBLEMNONE,
	DEVICEPROBLEMHARDWARE,
	DEVICEPROBLEMCHMERROR,
	DEVICEPROBLEMDOOROPEN,
	DEVICEPROBLEMCALIBRATIONERROR,
	DEVICEPROBLEMTARGETFAILURE,
	DEVICEPROBLEMCHMMOVEERROR,
	DEVICEPROBLEMCHMZEROERROR,
	DEVICEPROBLEMCARTRIDGEINSERTERROR,
	DEVICEPROBLEMPOSITIONERROR,
	DEVICEPROBLEMSENSORERROR,
	DEVICEPROBLEMCARTRIDGEEJECTERROR,
	DEVICEPROBLEMGRIPPERERROR,
	DEVICEPROBLEMDRIVEERROR
}

constdef StoragePropertyId : int
{
	STORAGEDEVICEPROPERTY = 0,
	STORAGEADAPTERPROPERTY = 1,
	STORAGEDEVICEIDPROPERTY = 2,
	STORAGEDEVICEUNIQUEIDPROPERTY = 3,
	STORAGEDEVICEWRITECACHEPROPERTY = 4,
	STORAGEMINIPORTPROPERTY = 5,
	STORAGEACCESSALIGNMENTPROPERTY = 6,
	STORAGEDEVICESEEKPENALTYPROPERTY = 7,
	STORAGEDEVICETRIMPROPERTY = 8,
	STORAGEDEVICEWRITEAGGREGATIONPROPERTY = 9,
	STORAGEDEVICEDEVICETELEMETRYPROPERTY = 10,
	STORAGEDEVICELBPROVISIONINGPROPERTY = 11,
	STORAGEDEVICEPOWERPROPERTY = 12,
	STORAGEDEVICECOPYOFFLOADPROPERTY = 13,
	STORAGEDEVICERESILIENCYPROPERTY = 14,
	STORAGEDEVICEMEDIUMPRODUCTTYPE = 15,
	STORAGEADAPTERRPMBPROPERTY = 16,
	STORAGEADAPTERCRYPTOPROPERTY = 17,
	STORAGEDEVICEIOCAPABILITYPROPERTY = 48,
	STORAGEADAPTERPROTOCOLSPECIFICPROPERTY = 49,
	STORAGEDEVICEPROTOCOLSPECIFICPROPERTY = 50,
	STORAGEADAPTERTEMPERATUREPROPERTY = 51,
	STORAGEDEVICETEMPERATUREPROPERTY = 52,
	STORAGEADAPTERPHYSICALTOPOLOGYPROPERTY = 53,
	STORAGEDEVICEPHYSICALTOPOLOGYPROPERTY = 54,
	STORAGEDEVICEATTRIBUTESPROPERTY = 55,
	STORAGEDEVICEMANAGEMENTSTATUS = 56,
	STORAGEADAPTERSERIALNUMBERPROPERTY = 57,
	STORAGEDEVICELOCATIONPROPERTY = 58,
	STORAGEDEVICENUMAPROPERTY = 59,
	STORAGEDEVICEZONEDDEVICEPROPERTY = 60,
	STORAGEDEVICEUNSAFESHUTDOWNCOUNT = 61,
	STORAGEDEVICEENDURANCEPROPERTY = 62,
	STORAGEDEVICELEDSTATEPROPERTY = 63,
	STORAGEDEVICESELFENCRYPTIONPROPERTY = 64,
	STORAGEFRUIDPROPERTY = 65
}

enum StorageQueryType
{
	PROPERTYSTANDARDQUERY,
	PROPERTYEXISTSQUERY,
	PROPERTYMASKQUERY,
	PROPERTYQUERYMAXDEFINED
}

enum StorageSetType
{
	PROPERTYSTANDARDSET,
	PROPERTYEXISTSSET,
	PROPERTYSETMAXDEFINED
}

enum StorageRpmbFrameType
{
	STORAGERPMBFRAMETYPEUNKNOWN,
	STORAGERPMBFRAMETYPESTANDARD,
	STORAGERPMBFRAMETYPEMAX
}

enum StorageCryptoAlgorithmId
{
	STORAGECRYPTOALGORITHMUNKNOWN,
	STORAGECRYPTOALGORITHMXTSAES,
	STORAGECRYPTOALGORITHMBITLOCKERAESCBC,
	STORAGECRYPTOALGORITHMAESECB,
	STORAGECRYPTOALGORITHMESSIVAESCBC,
	STORAGECRYPTOALGORITHMMAX
}

enum StorageCryptoKeySize
{
	STORAGECRYPTOKEYSIZEUNKNOWN,
	STORAGECRYPTOKEYSIZE128BITS,
	STORAGECRYPTOKEYSIZE192BITS,
	STORAGECRYPTOKEYSIZE256BITS,
	STORAGECRYPTOKEYSIZE512BITS
}

constdef StorageTierMediaType : int
{
	STORAGETIERMEDIATYPEUNSPECIFIED = 0,
	STORAGETIERMEDIATYPEDISK = 1,
	STORAGETIERMEDIATYPESSD = 2,
	STORAGETIERMEDIATYPESCM = 4,
	STORAGETIERMEDIATYPEMAX = 5
}

enum StorageTierClass
{
	STORAGETIERCLASSUNSPECIFIED,
	STORAGETIERCLASSCAPACITY,
	STORAGETIERCLASSPERFORMANCE,
	STORAGETIERCLASSMAX
}

constdef StorageProtocolType : int
{
	PROTOCOLTYPEUNKNOWN = 0,
	PROTOCOLTYPESCSI = 1,
	PROTOCOLTYPEATA = 2,
	PROTOCOLTYPENVME = 3,
	PROTOCOLTYPESD = 4,
	PROTOCOLTYPEUFS = 5,
	PROTOCOLTYPEPROPRIETARY = 126,
	PROTOCOLTYPEMAXRESERVED = 127
}

enum StorageProtocolNvmeDataType
{
	NVMEDATATYPEUNKNOWN,
	NVMEDATATYPEIDENTIFY,
	NVMEDATATYPELOGPAGE,
	NVMEDATATYPEFEATURE
}

enum StorageProtocolAtaDataType
{
	ATADATATYPEUNKNOWN,
	ATADATATYPEIDENTIFY,
	ATADATATYPELOGPAGE
}

enum StorageProtocolUfsDataType
{
	UFSDATATYPEUNKNOWN,
	UFSDATATYPEQUERYDESCRIPTOR,
	UFSDATATYPEQUERYATTRIBUTE,
	UFSDATATYPEQUERYFLAG,
	UFSDATATYPEQUERYDMEATTRIBUTE,
	UFSDATATYPEQUERYDMEPEERATTRIBUTE,
	UFSDATATYPEMAX
}

struct StorageReadCapacity { void* _unused; }

struct DeviceManageDataSetAttributes { void* _unused; }

struct DeviceDataSetRange { void* _unused; }

struct DeviceDsmNotificationParameters { void* _unused; }

struct StorageGetBcPropertiesOutput { void* _unused; }

struct StorageAllocateBcStreamInput { void* _unused; }

struct StorageAllocateBcStreamOutput { void* _unused; }

struct StoragePriorityHintSupport { void* _unused; }

struct StorageMediaSerialNumberData { void* _unused; }

struct PersistentReserveCommand { void* _unused; }

struct StorageHotplugInfo { void* _unused; }

struct StorageDeviceNumber { void* _unused; }

struct StorageDeviceNumbers { void* _unused; }

struct StorageDeviceNumberEx { void* _unused; }

struct StorageBusResetRequest { void* _unused; }

struct StorageBreakReservationRequest { void* _unused; }

struct PreventMediaRemoval { void* _unused; }

struct ClassMediaChangeContext { void* _unused; }

struct TapeStatistics { void* _unused; }

struct TapeGetStatistics { void* _unused; }

struct DeviceMediaInfo { void* _unused; }

struct GetMediaTypes { void* _unused; }

struct StoragePredictFailure { void* _unused; }

struct StorageFailurePredictionConfig { void* _unused; }

struct FormatParameters { void* _unused; }

struct FormatExParameters { void* _unused; }

struct DiskGeometry { void* _unused; }

struct PartitionInformation { void* _unused; }

struct SetPartitionInformation { void* _unused; }

struct DriveLayoutInformation { void* _unused; }

struct VerifyInformation { void* _unused; }

struct ReassignBlocks { void* _unused; }

struct ReassignBlocksEx { void* _unused; }

struct PartitionInformationGpt { void* _unused; }

struct PartitionInformationMbr { void* _unused; }

struct SetPartitionInformationEx
{
	PartitionStyle partition_style;
}

struct CreateDiskGpt { void* _unused; }

struct CreateDiskMbr { void* _unused; }

struct CreateDisk
{
	PartitionStyle partition_style;
}

struct GetLengthInformation { void* _unused; }

struct PartitionInformationEx { void* _unused; }

struct DriveLayoutInformationGpt { void* _unused; }

struct DriveLayoutInformationMbr { void* _unused; }

struct DriveLayoutInformationEx { void* _unused; }

struct DiskInt13Info { void* _unused; }

struct DiskExInt13Info { void* _unused; }

struct DiskDetectionInfo { void* _unused; }

struct DiskPartitionInfo { void* _unused; }

struct DiskGeometryEx { void* _unused; }

struct DiskControllerNumber { void* _unused; }

struct DiskCacheInformation { void* _unused; }

struct DiskGrowPartition { void* _unused; }

struct HistogramBucket { void* _unused; }

struct DiskHistogram { void* _unused; }

struct DiskPerformance { void* _unused; }

struct DiskRecord { void* _unused; }

struct DiskLogging { void* _unused; }

struct BinRange { void* _unused; }

struct PerfBin { void* _unused; }

struct BinCount { void* _unused; }

struct BinResults { void* _unused; }

struct Getversioninparams { void* _unused; }

struct Ideregs { void* _unused; }

struct Sendcmdinparams { void* _unused; }

struct Driverstatus { void* _unused; }

struct Sendcmdoutparams { void* _unused; }

struct ChangerElement { void* _unused; }

struct ChangerElementList { void* _unused; }

struct GetChangerParameters { void* _unused; }

struct ChangerProductData { void* _unused; }

struct ChangerSetAccess { void* _unused; }

struct ChangerReadElementStatus { void* _unused; }

struct ChangerElementStatus { void* _unused; }

struct ChangerElementStatusEx { void* _unused; }

struct ChangerInitializeElementStatus { void* _unused; }

struct ChangerSetPosition { void* _unused; }

struct ChangerExchangeMedium { void* _unused; }

struct ChangerMoveMedium { void* _unused; }

struct ChangerSendVolumeTagInformation { void* _unused; }

struct ReadElementAddressInfo { void* _unused; }

struct PathnameBuffer { void* _unused; }

struct FsctlQueryFatBpbBuffer { void* _unused; }

struct NtfsVolumeDataBuffer { void* _unused; }

struct NtfsExtendedVolumeData { void* _unused; }

struct StartingLcnInputBuffer { void* _unused; }

struct VolumeBitmapBuffer { void* _unused; }

struct StartingVcnInputBuffer { void* _unused; }

struct RetrievalPointersBuffer { void* _unused; }

struct NtfsFileRecordInputBuffer { void* _unused; }

struct NtfsFileRecordOutputBuffer { void* _unused; }

struct MoveFileData { void* _unused; }

struct MoveFileRecordData { void* _unused; }

struct MoveFileData32 { void* _unused; }

struct FindBySidData { void* _unused; }

struct FindBySidOutput { void* _unused; }

struct MftEnumData { void* _unused; }

struct CreateUsnJournalData { void* _unused; }

struct ReadUsnJournalData { void* _unused; }

struct UsnRecord { void* _unused; }

struct UsnJournalData { void* _unused; }

struct DeleteUsnJournalData { void* _unused; }

struct MarkHandleInfo { void* _unused; }

struct MarkHandleInfo32 { void* _unused; }

struct BulkSecurityTestData { void* _unused; }

struct FilePrefetch { void* _unused; }

struct FilePrefetchEx { void* _unused; }

struct FilesystemStatistics { void* _unused; }

struct FatStatistics { void* _unused; }

struct ExfatStatistics { void* _unused; }

struct NtfsStatistics { void* _unused; }

struct FileObjectidBuffer { void* _unused; }

struct FileSetSparseBuffer { void* _unused; }

struct FileZeroDataInformation { void* _unused; }

struct FileAllocatedRangeBuffer { void* _unused; }

struct EncryptionBuffer { void* _unused; }

struct DecryptionStatusBuffer { void* _unused; }

struct RequestRawEncryptedData { void* _unused; }

struct EncryptedDataInfo { void* _unused; }

struct PlexReadDataRequest { void* _unused; }

struct SiCopyfile { void* _unused; }

struct StorageDescriptorHeader { void* _unused; }

struct StoragePropertyQuery { void* _unused; }

struct StoragePropertySet { void* _unused; }

struct StorageDeviceDescriptor { void* _unused; }

struct StorageAdapterDescriptor { void* _unused; }

struct StorageDeviceIdDescriptor { void* _unused; }

struct VolumeGetGptAttributesInformation { void* _unused; }

struct DeviceSeekPenaltyDescriptor { void* _unused; }

struct DeviceWriteAggregationDescriptor { void* _unused; }

struct DeviceTrimDescriptor { void* _unused; }

struct DeviceLbProvisioningDescriptor { void* _unused; }

struct StorageLbProvisioningMapResources { void* _unused; }

struct DevicePowerDescriptor { void* _unused; }

struct DeviceCopyOffloadDescriptor { void* _unused; }

struct StorageDeviceResiliencyDescriptor { void* _unused; }

struct StorageRpmbDescriptor { void* _unused; }

struct StorageCryptoCapability { void* _unused; }

struct StorageCryptoDescriptor { void* _unused; }

struct StorageTier { void* _unused; }

struct StorageDeviceTieringDescriptor { void* _unused; }

struct StorageDeviceFaultDomainDescriptor { void* _unused; }

struct StorageProtocolDataSubvalueGetLogPage { void* _unused; }

struct StorageProtocolSpecificData { void* _unused; }

struct StorageProtocolSpecificDataExt { void* _unused; }

struct StorageProtocolDataDescriptor { void* _unused; }

struct StorageProtocolDataDescriptorExt { void* _unused; }

struct StorageTemperatureInfo { void* _unused; }

struct StorageTemperatureDataDescriptor { void* _unused; }

struct StorageTemperatureThreshold { void* _unused; }

struct StorageProtocolCommand { void* _unused; }

struct FileLevelTrimRange { void* _unused; }

struct FileLevelTrim { void* _unused; }

struct FileLevelTrimOutput { void* _unused; }

struct DuplicateExtentsData { void* _unused; }

struct DuplicateExtentsData32 { void* _unused; }

struct DuplicateExtentsDataEx { void* _unused; }

struct DuplicateExtentsDataEx32 { void* _unused; }

struct DiskExtent { void* _unused; }

struct VolumeDiskExtents { void* _unused; }

struct Void { void* _unused; }

