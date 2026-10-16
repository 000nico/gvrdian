module win32::nt;

// Type Aliases & Callbacks
alias Pvoid = void*;
alias PvoidVT = void*;
alias Char = char;
alias Short = short;
alias Long = CLong;
alias Int = int;
alias Wchar = ushort;
alias Pwchar = Wchar*;
alias Lpwch = Wchar*;
alias Pwch = Wchar*;
alias Nwpstr = Wchar*;
alias Lpwstr = Wchar*;
alias Pwstr = Wchar*;
alias Pzpwstr = Pwstr*;
alias Lpuwstr = Wchar*;
alias Puwstr = Wchar*;
alias Pzzwstr = Wchar*;
alias Puzzwstr = Wchar*;
alias Pnzwch = Wchar*;
alias Punzwch = Wchar*;
alias Ucschar = CULong;
alias Pucschar = Ucschar*;
alias Pcucschar = Ucschar*;
alias Pucsstr = Ucschar*;
alias Puucsstr = Ucschar*;
alias Pcucsstr = Ucschar*;
alias Pcuucsstr = Ucschar*;
alias Puucschar = Ucschar*;
alias Pcuucschar = Ucschar*;
alias Pchar = Char*;
alias Lpch = Char*;
alias Pch = Char*;
alias Npstr = Char*;
alias Lpstr = Char*;
alias Pstr = Char*;
alias Pzpstr = Pstr*;
alias Pzzstr = Char*;
alias Pnzch = Char*;
alias Tchar = char;
alias Ptchar = char*;
alias Tbyte = char;
alias Ptbyte = char*;
alias Lptch = Lpstr;
alias Ptch = Lpstr;
alias Ptstr = Lpstr;
alias Lptstr = Lpstr;
alias Putstr = Lpstr;
alias Lputstr = Lpstr;
alias Pzztstr = Pzzstr;
alias Puzztstr = Pzzstr;
alias Pczztstr = Pzzstr;
alias Pcuzztstr = Pzzstr;
alias Pzptstr = Pzpstr;
alias Pnztch = Pnzch;
alias Punztch = Pnzch;
alias Pcnztch = Pnzch;
alias Pcunztch = Pnzch;
alias Pshort = Short*;
alias Plong = Long*;
alias PgroupAffinity = GroupAffinity*;
alias PgroupAffinity32 = GroupAffinity32*;
alias PgroupAffinity64 = GroupAffinity64*;
alias Handle = void*;
alias Phandle = Handle*;
alias Fchar = char;
alias Hresult = CLong;
alias Cchar = char;
alias PcompartmentId = CompartmentId*;
alias PfloatQRX = FloatQRX*;
alias Longlong = long;
alias Ulonglong = ulong;
alias Plonglong = Longlong*;
alias Pulonglong = Ulonglong*;
alias Usn = long;
alias PlargeInteger = LargeInteger*;
alias PulargeInteger = UlargeInteger*;
alias RtlReferenceCount = long;
alias PrtlReferenceCount = LongPtr*;
alias RtlReferenceCount32 = CLong;
alias PrtlReferenceCount32 = Long*;
alias Pluid = Luid*;
alias Dwordlong = ulong;
alias Pdwordlong = Dwordlong*;
alias Pboolean = Boolean*;
alias PlistEntry = ListEntry*;
alias PrlistEntry = ListEntry*;
alias PsingleListEntry = SingleListEntry*;
alias PlistEntry32 = ListEntry32*;
alias PlistEntry64 = ListEntry64*;
alias ExceptionRoutine = fn ExceptionDisposition(ExceptionRecord*, Pvoid, Context*, Pvoid);
alias PexceptionRoutine = fn ExceptionDisposition(ExceptionRecord*, Pvoid, Context*, Pvoid);
alias KspinLock = ulong;
alias PkspinLock = KspinLock*;
alias PmQRXa = MQRXa*;
alias PxsaveFormat = XsaveFormat*;
alias PxsaveCetUFormat = XsaveCetUFormat*;
alias PxsaveArm64SveHeader = XsaveArm64SveHeader*;
alias PxsaveAreaHeader = XsaveAreaHeader*;
alias PxsaveArea = XsaveArea*;
alias PxstateContext = XstateContext*;
alias PkernelCetContext = KernelCetContext*;
alias PscopeTableAmd64 = ScopeTableAmd64*;
alias PxmmSaveArea32 = XmmSaveArea32*;
alias Pcontext = Context*;
alias PruntimeFunction = RuntimeFunction*;
alias PgetRuntimeFunctionCallback = fn PruntimeFunction(DwordVT, Pvoid);
alias Parm64NtNeon128 = Arm64NtNeon128*;
alias Parm64NtContext = Arm64NtContext*;
alias Parm64ecNtContext = Arm64ecNtContext*;
alias Parm64RuntimeFunction = ImageArm64RuntimeFunctionEntry*;
alias PdispatcherContextArm64 = DispatcherContextArm64*;
alias PknonvolatileContextPointersArm64 = KnonvolatileContextPointersArm64*;
alias PldtEntry = LdtEntry*;
alias PexceptionRecord = ExceptionRecord*;
alias PexceptionRecord32 = ExceptionRecord32*;
alias PexceptionRecord64 = ExceptionRecord64*;
alias PexceptionPointers = ExceptionPointers*;
alias PdispatcherContext = DispatcherContext*;
alias PknonvolatileContextPointers = KnonvolatileContextPointers*;
alias PaccessToken = void*;
alias PsecurityDescriptor = void*;
alias Psid = void*;
alias PclaimsBlob = void*;
alias AccessMask = fn int(int*);
alias PaccessMask = fn int(int*);
alias PgenericMapping = GenericMapping*;
alias PluidAndAttributes = LuidAndAttributes*;
alias LuidAndAttributesArray = LuidAndAttributes[1];
alias PluidAndAttributesArray = LuidAndAttributesArray*;
alias PsidIdentifierAuthority = SidIdentifierAuthority*;
alias Pisid = Sid*;
alias PseSid = SeSid*;
alias PsidNameUse = SidNameUse*;
alias PsidAndAttributes = SidAndAttributes*;
alias SidAndAttributesArray = SidAndAttributes[1];
alias PsidAndAttributesArray = SidAndAttributesArray*;
alias SidHashEntry = ulong;
alias PsidHashEntry = UlongPtr*;
alias PsidAndAttributesHash = SidAndAttributesHash*;
alias PattributesAndSid = AttributesAndSid*;
alias Pacl = Acl*;
alias PaceHeader = AceHeader*;
alias PaccessAllowedAce = AccessAllowedAce*;
alias PaccessDeniedAce = AccessDeniedAce*;
alias PsystemAuditAce = SystemAuditAce*;
alias PsystemAlarmAce = SystemAlarmAce*;
alias PsystemResourceAttributeAce = SystemResourceAttributeAce*;
alias PsystemScopedPolicyIdAce = SystemScopedPolicyIdAce*;
alias PsystemMandatoryLabelAce = SystemMandatoryLabelAce*;
alias PsystemProcessTrustLabelAce = SystemProcessTrustLabelAce*;
alias PsystemAccessFilterAce = SystemAccessFilterAce*;
alias PaccessAllowedObjectAce = AccessAllowedObjectAce*;
alias PaccessDeniedObjectAce = AccessDeniedObjectAce*;
alias PsystemAuditObjectAce = SystemAuditObjectAce*;
alias PsystemAlarmObjectAce = SystemAlarmObjectAce*;
alias PaccessAllowedCallbackAce = AccessAllowedCallbackAce*;
alias PaccessDeniedCallbackAce = AccessDeniedCallbackAce*;
alias PsystemAuditCallbackAce = SystemAuditCallbackAce*;
alias PsystemAlarmCallbackAce = SystemAlarmCallbackAce*;
alias PaccessAllowedCallbackObjectAce = AccessAllowedCallbackObjectAce*;
alias PaccessDeniedCallbackObjectAce = AccessDeniedCallbackObjectAce*;
alias PsystemAuditCallbackObjectAce = SystemAuditCallbackObjectAce*;
alias PsystemAlarmCallbackObjectAce = SystemAlarmCallbackObjectAce*;
alias PaclRevisionInformation = AclRevisionInformation*;
alias PaclSizeInformation = AclSizeInformation*;
alias PisecurityDescriptorRelative = SecurityDescriptorRelative*;
alias PisecurityDescriptor = SecurityDescriptor*;
alias PsecurityObjectAiParams = SecurityObjectAiParams*;
alias PobjectTypeList = ObjectTypeList*;
alias PauditEventType = AuditEventType*;
alias PprivilegeSet = PrivilegeSet*;
alias AccessReason = fn int(int*);
alias PaccessReasons = AccessReasons*;
alias PseSecurityDescriptor = SeSecurityDescriptor*;
alias PseAccessRequest = SeAccessRequest*;
alias PseAccessReply = SeAccessReply*;
alias PsecurityImpersonationLevel = SecurityImpersonationLevel*;
alias PtokenType = TokenType*;
alias PtokenElevationType = TokenElevationType*;
alias PtokenInformationClass = TokenInformationClass*;
alias PtokenUser = TokenUser*;
alias PseTokenUser = SeTokenUser*;
alias PtokenGroups = TokenGroups*;
alias PtokenPrivileges = TokenPrivileges*;
alias PtokenOwner = TokenOwner*;
alias PtokenPrimaryGroup = TokenPrimaryGroup*;
alias PtokenDefaultDacl = TokenDefaultDacl*;
alias PtokenUserClaims = TokenUserClaims*;
alias PtokenDeviceClaims = TokenDeviceClaims*;
alias PtokenGroupsAndPrivileges = TokenGroupsAndPrivileges*;
alias PtokenLinkedToken = TokenLinkedToken*;
alias PtokenElevation = TokenElevation*;
alias PtokenMandatoryLabel = TokenMandatoryLabel*;
alias PtokenMandatoryPolicy = TokenMandatoryPolicy*;
alias PsecurityAttributesOpaque = void*;
alias PtokenAccessInformation = TokenAccessInformation*;
alias PtokenAuditPolicy = TokenAuditPolicy*;
alias PtokenSource = TokenSource*;
alias PtokenStatistics = TokenStatistics*;
alias PtokenControl = TokenControl*;
alias PtokenOrigin = TokenOrigin*;
alias PmandatoryLevel = MandatoryLevel*;
alias PtokenAppcontainerInformation = TokenAppcontainerInformation*;
alias PtokenSidInformation = TokenSidInformation*;
alias PtokenBnoIsolationInformation = TokenBnoIsolationInformation*;
alias PclaimSecurityAttributeFqbnValue = ClaimSecurityAttributeFqbnValue*;
alias PclaimSecurityAttributeOctetStringValue = ClaimSecurityAttributeOctetStringValue*;
alias PclaimSecurityAttributeV1 = ClaimSecurityAttributeV1*;
alias PclaimSecurityAttributeRelativeV1 = ClaimSecurityAttributeRelativeV1*;
alias PclaimSecurityAttributesInformation = ClaimSecurityAttributesInformation*;
alias SecurityContextTrackingMode = int;
alias PsecurityContextTrackingMode = Boolean*;
alias PsecurityQualityOfService = SecurityQualityOfService*;
alias PseImpersonationState = SeImpersonationState*;
alias SecurityInformation = fn int(int*);
alias PsecurityInformation = fn int(int*);
alias PseImageSignatureType = SeImageSignatureType*;
alias PsecurityCapabilities = SecurityCapabilities*;
alias LpsecurityCapabilities = SecurityCapabilities*;
alias PjobSetArray = JobSetArray*;
alias PexceptionRegistrationRecord = ExceptionRegistrationRecord*;
alias ExceptionRegistration = ExceptionRegistrationRecord;
alias PexceptionRegistration = PexceptionRegistrationRecord;
alias PntTib = NtTib*;
alias PntTib32 = NtTib32*;
alias PntTib64 = NtTib64*;
alias PumsCreateThreadAttributes = UmsCreateThreadAttributes*;
alias PcomponentFilter = ComponentFilter*;
alias PprocessDynamicEhContinuationTarget = ProcessDynamicEhContinuationTarget*;
alias PprocessDynamicEhContinuationTargetsInformation = ProcessDynamicEhContinuationTargetsInformation*;
alias PprocessDynamicEnforcedAddressRange = ProcessDynamicEnforcedAddressRange*;
alias PprocessDynamicEnforcedAddressRangesInformation = ProcessDynamicEnforcedAddressRangesInformation*;
alias PquotaLimits = QuotaLimits*;
alias PrateQuotaLimit = RateQuotaLimit*;
alias PquotaLimitsEx = QuotaLimitsEx*;
alias PioCounters = IoCounters*;
alias PhardwareCounterType = HardwareCounterType*;
alias PprocessMitigationPolicy = ProcessMitigationPolicy*;
alias PprocessMitigationAslrPolicy = ProcessMitigationAslrPolicy*;
alias PprocessMitigationDepPolicy = ProcessMitigationDepPolicy*;
alias PprocessMitigationSehopPolicy = ProcessMitigationSehopPolicy*;
alias PprocessMitigationStrictHandleCheckPolicy = ProcessMitigationStrictHandleCheckPolicy*;
alias PprocessMitigationSystemCallDisablePolicy = ProcessMitigationSystemCallDisablePolicy*;
alias PprocessMitigationExtensionPointDisablePolicy = ProcessMitigationExtensionPointDisablePolicy*;
alias PprocessMitigationControlFlowGuardPolicy = ProcessMitigationControlFlowGuardPolicy*;
alias PprocessMitigationBinarySignaturePolicy = ProcessMitigationBinarySignaturePolicy*;
alias PprocessMitigationDynamicCodePolicy = ProcessMitigationDynamicCodePolicy*;
alias PprocessMitigationFontDisablePolicy = ProcessMitigationFontDisablePolicy*;
alias PprocessMitigationImageLoadPolicy = ProcessMitigationImageLoadPolicy*;
alias PprocessMitigationSystemCallFilterPolicy = ProcessMitigationSystemCallFilterPolicy*;
alias PprocessMitigationPayloadRestrictionPolicy = ProcessMitigationPayloadRestrictionPolicy*;
alias PprocessMitigationChildProcessPolicy = ProcessMitigationChildProcessPolicy*;
alias PprocessMitigationSideChannelIsolationPolicy = ProcessMitigationSideChannelIsolationPolicy*;
alias PprocessMitigationUserShadowStackPolicy = ProcessMitigationUserShadowStackPolicy*;
alias PprocessMitigationUserPointerAuthPolicy = ProcessMitigationUserPointerAuthPolicy*;
alias PprocessMitigationRedirectionTrustPolicy = ProcessMitigationRedirectionTrustPolicy*;
alias PjobobjectBasicAccountingInformation = JobobjectBasicAccountingInformation*;
alias PjobobjectBasicLimitInformation = JobobjectBasicLimitInformation*;
alias PjobobjectExtendedLimitInformation = JobobjectExtendedLimitInformation*;
alias PjobobjectBasicProcessIdList = JobobjectBasicProcessIdList*;
alias PjobobjectBasicUiRestrictions = JobobjectBasicUiRestrictions*;
alias PjobobjectSecurityLimitInformation = JobobjectSecurityLimitInformation*;
alias PjobobjectEndOfJobTimeInformation = JobobjectEndOfJobTimeInformation*;
alias PjobobjectAssociateCompletionPort = JobobjectAssociateCompletionPort*;
alias PjobobjectBasicAndIoAccountingInformation = JobobjectBasicAndIoAccountingInformation*;
alias PjobobjectJobsetInformation = JobobjectJobsetInformation*;
alias PjobobjectNotificationLimitInformation = JobobjectNotificationLimitInformation*;
alias PjobobjectLimitViolationInformation = JobobjectLimitViolationInformation*;
alias PjobobjectCpuRateControlInformation = JobobjectCpuRateControlInformation*;
alias CAssert = char[1];
alias JobobjectIoRateControlInformationNativeV1 = JobobjectIoRateControlInformationNative;
alias PjobobjectIoAttributionStats = JobobjectIoAttributionStats*;
alias PjobobjectIoAttributionInformation = JobobjectIoAttributionInformation*;
alias PsiloobjectBasicInformation = SiloobjectBasicInformation*;
alias PserversiloState = ServersiloState*;
alias PserversiloBasicInformation = ServersiloBasicInformation*;
alias PfirmwareType = FirmwareType*;
alias PcacheDescriptor = CacheDescriptor*;
alias PsystemLogicalProcessorInformation = SystemLogicalProcessorInformation*;
alias PprocessorRelationship = ProcessorRelationship*;
alias PnumaNodeRelationship = NumaNodeRelationship*;
alias PcacheRelationship = CacheRelationship*;
alias PprocessorGroupInfo = ProcessorGroupInfo*;
alias PgroupRelationship = GroupRelationship*;
alias PsystemLogicalProcessorInformationEx = SystemLogicalProcessorInformationEx*;
alias PcpuSetInformationType = CpuSetInformationType*;
alias PsystemCpuSetInformation = SystemCpuSetInformation*;
alias PsystemPoolZeroingInformation = SystemPoolZeroingInformation*;
alias PsystemProcessorCycleTimeInformation = SystemProcessorCycleTimeInformation*;
alias PsystemSupportedProcessorArchitecturesInformation = SystemSupportedProcessorArchitecturesInformation*;
alias PxstateFeature = XstateFeature*;
alias PxstateConfiguration = XstateConfiguration*;
alias PmemoryBasicInformation = MemoryBasicInformation*;
alias PmemoryBasicInformation32 = MemoryBasicInformation32*;
alias PmemoryBasicInformation64 = MemoryBasicInformation64*;
alias PcfgCallTargetInfo = CfgCallTargetInfo*;
alias PmemAddressRequirements = MemAddressRequirements*;
alias PmemExtendedParameterType = MemExtendedParameterType*;
alias PmemExtendedParameter = MemExtendedParameter*;
alias PmemDedicatedAttributeType = MemDedicatedAttributeType*;
alias PmemSectionExtendedParameterType = MemSectionExtendedParameterType*;
alias PenclaveCreateInfoSgx = EnclaveCreateInfoSgx*;
alias PenclaveInitInfoSgx = EnclaveInitInfoSgx*;
alias PenclaveCreateInfoVbs = EnclaveCreateInfoVbs*;
alias PenclaveCreateInfoVbsBasic = EnclaveCreateInfoVbsBasic*;
alias PenclaveLoadDataVbsBasic = EnclaveLoadDataVbsBasic*;
alias PenclaveInitInfoVbsBasic = EnclaveInitInfoVbsBasic*;
alias PenclaveInitInfoVbs = EnclaveInitInfoVbs*;
alias EnclaveTargetFunction = fn Pvoid(Pvoid);
alias PenclaveTargetFunction = fn Pvoid(Pvoid);
alias LpenclaveTargetFunction = fn Pvoid(Pvoid);
alias PmemoryPartitionDedicatedMemoryAttribute = MemoryPartitionDedicatedMemoryAttribute*;
alias PmemoryPartitionDedicatedMemoryInformation = MemoryPartitionDedicatedMemoryInformation*;
alias PfileId128 = FileId128*;
alias PfileNotifyInformation = FileNotifyInformation*;
alias PfileNotifyExtendedInformation = FileNotifyExtendedInformation*;
alias PfileNotifyFullInformation = FileNotifyFullInformation*;
alias PfileStatInformation = FileStatInformation*;
alias PfileStatLxInformation = FileStatLxInformation*;
alias PfileStatBasicInformation = FileStatBasicInformation*;
alias PfileCaseSensitiveInformation = FileCaseSensitiveInformation*;
alias PfileSegmentElement = FileSegmentElement*;
alias PreparseGuidDataBuffer = ReparseGuidDataBuffer*;
alias PscrubDataInput = ScrubDataInput*;
alias PscrubParityExtent = ScrubParityExtent*;
alias PscrubParityExtentData = ScrubParityExtentData*;
alias PscrubDataOutput = ScrubDataOutput*;
alias PsystemPowerState = SystemPowerState*;
alias PpowerAction = PowerAction*;
alias PdevicePowerState = DevicePowerState*;
alias PmonitorDisplayState = MonitorDisplayState*;
alias PuserActivityPresence = UserActivityPresence*;
alias ExecutionState = fn int(int*);
alias PexecutionState = fn int(int*);
alias PpowerRequestType = PowerRequestType*;
alias CmPowerData = CmPowerDataS;
alias PcmPowerData = CmPowerDataS*;
alias PpowerUserPresenceType = PowerUserPresenceType*;
alias PpowerUserPresence = PowerUserPresence*;
alias PpowerSessionConnect = PowerSessionConnect*;
alias PpowerSessionTimeouts = PowerSessionTimeouts*;
alias PpowerSessionRitState = PowerSessionRitState*;
alias PpowerSessionWinlogon = PowerSessionWinlogon*;
alias PpowerIdleResiliency = PowerIdleResiliency*;
alias PpowerMonitorInvocation = PowerMonitorInvocation*;
alias PresumePerformance = ResumePerformance*;
alias PsetPowerSettingValue = Void*;
alias PnotifyUserPowerSetting = NotifyUserPowerSetting*;
alias PapplicationlaunchSettingValue = ApplicationlaunchSettingValue*;
alias PpowerPlatformRole = PowerPlatformRole*;
alias PpowerPlatformInformation = PowerPlatformInformation*;
alias PbatteryReportingScale = Void*;
alias PppmWmiLegacyPerfstate = Void*;
alias PppmWmiIdleState = Void*;
alias PppmWmiIdleStates = Void*;
alias PppmWmiIdleStatesEx = Void*;
alias PppmWmiPerfState = Void*;
alias PppmWmiPerfStates = Void*;
alias PppmWmiPerfStatesEx = Void*;
alias PppmIdleStateAccounting = Void*;
alias PppmIdleAccounting = Void*;
alias PppmIdleStateBucketEx = Void*;
alias PppmIdleStateAccountingEx = Void*;
alias PppmIdleAccountingEx = Void*;
alias PppmPerfstateEvent = Void*;
alias PppmPerfstateDomainEvent = Void*;
alias PppmIdlestateEvent = Void*;
alias PppmThermalchangeEvent = Void*;
alias PppmThermalPolicyEvent = Void*;
alias PpowerActionPolicy = Void*;
alias PprocessorIdlestateInfo = Void*;
alias PsystemPowerLevel = Void*;
alias PsystemPowerPolicy = SystemPowerPolicy*;
alias PprocessorIdlestatePolicy = Void*;
alias PprocessorPowerPolicyInfo = ProcessorPowerPolicyInfo*;
alias PprocessorPowerPolicy = ProcessorPowerPolicy*;
alias PprocessorPerfstatePolicy = Void*;
alias PadministratorPowerPolicy = AdministratorPowerPolicy*;
alias PsystemPowerCapabilities = Void*;
alias PsystemBatteryState = Void*;
alias PimageDosHeader = ImageDosHeader*;
alias PimageOs2Header = ImageOs2Header*;
alias PimageVxdHeader = ImageVxdHeader*;
alias PimageFileHeader = ImageFileHeader*;
alias PimageDataDirectory = ImageDataDirectory*;
alias ImageOptionalHeader32 = ImageOptionalHeader;
alias PimageOptionalHeader32 = ImageOptionalHeader*;
alias PimageRomOptionalHeader = ImageRomOptionalHeader*;
alias PimageOptionalHeader64 = ImageOptionalHeader64*;
alias PimageOptionalHeader = PimageOptionalHeader64;
alias PimageNtHeaders64 = ImageNtHeaders64*;
alias ImageNtHeaders32 = ImageNtHeaders;
alias PimageNtHeaders32 = ImageNtHeaders*;
alias PimageRomHeaders = ImageRomHeaders*;
alias PimageNtHeaders = PimageNtHeaders64;
alias PimageSectionHeader = ImageSectionHeader*;
alias PimageSymbol = ImageSymbol*;
alias PimageSymbolEx = ImageSymbolEx*;
alias PimageAuxSymbolTokenDef = ImageAuxSymbolTokenDef*;
alias PimageAuxSymbol = ImageAuxSymbol*;
alias PimageAuxSymbolEx = ImageAuxSymbolEx*;
alias PimageRelocation = ImageRelocation*;
alias PimageLinenumber = ImageLinenumber*;
alias PimageBaseRelocation = ImageBaseRelocation*;
alias PimageArchiveMemberHeader = ImageArchiveMemberHeader*;
alias PimageExportDirectory = ImageExportDirectory*;
alias PimageImportByName = ImageImportByName*;
alias PimageThunkData64 = ImageThunkData64*;
alias PimageThunkData32 = ImageThunkData32*;
alias PimageTlsCallback = fn void(Pvoid, Dword*, Pvoid);
alias PimageTlsDirectory64 = ImageTlsDirectory64*;
alias PimageTlsDirectory32 = ImageTlsDirectory32*;
alias ImageThunkData = ImageThunkData64;
alias PimageThunkData = PimageThunkData64;
alias ImageTlsDirectory = ImageTlsDirectory64;
alias PimageTlsDirectory = PimageTlsDirectory64;
alias PimageImportDescriptor = ImageImportDescriptor*;
alias PimageBoundImportDescriptor = ImageBoundImportDescriptor*;
alias PimageBoundForwarderRef = ImageBoundForwarderRef*;
alias PimageDelayloadDescriptor = ImageDelayloadDescriptor*;
alias PcimageDelayloadDescriptor = ImageDelayloadDescriptor*;
alias PimageResourceDirectory = ImageResourceDirectory*;
alias PimageResourceDirectoryEntry = ImageResourceDirectoryEntry*;
alias PimageResourceDirectoryString = ImageResourceDirectoryString*;
alias PimageResourceDirStringU = ImageResourceDirStringU*;
alias PimageResourceDataEntry = ImageResourceDataEntry*;
alias PimageLoadConfigCodeIntegrity = ImageLoadConfigCodeIntegrity*;
alias PimageLoadConfigDirectory32 = Void*;
alias PimageLoadConfigDirectory64 = Void*;
alias ImageLoadConfigDirectory = ImageLoadConfigDirectory64;
alias PimageLoadConfigDirectory = PimageLoadConfigDirectory64;
alias PimageCeRuntimeFunctionEntry = ImageCeRuntimeFunctionEntry*;
alias PimageAlpha64RuntimeFunctionEntry = ImageAlpha64RuntimeFunctionEntry*;
alias PimageAlphaRuntimeFunctionEntry = ImageAlphaRuntimeFunctionEntry*;
alias PimageArmRuntimeFunctionEntry = ImageArmRuntimeFunctionEntry*;
alias PimageArm64RuntimeFunctionEntry = ImageArm64RuntimeFunctionEntry*;
alias PimageRuntimeFunctionEntry = ImageRuntimeFunctionEntry*;
alias ImageIa64RuntimeFunctionEntry = ImageRuntimeFunctionEntry;
alias PimageIa64RuntimeFunctionEntry = PimageRuntimeFunctionEntry;
alias PimageDebugDirectory = ImageDebugDirectory*;
alias PimageCoffSymbolsHeader = ImageCoffSymbolsHeader*;
alias PfpoData = FpoData*;
alias PimageDebugMisc = ImageDebugMisc*;
alias PimageFunctionEntry = ImageFunctionEntry*;
alias PimageFunctionEntry64 = ImageFunctionEntry64*;
alias PimageSeparateDebugHeader = ImageSeparateDebugHeader*;
alias PnonPagedDebugInfo = NonPagedDebugInfo*;
alias PimageArchitectureHeader = ImageArchitectureHeader*;
alias PimageArchitectureEntry = ImageArchitectureEntry*;
alias PimageCor20Header = ImageCor20Header*;
alias PunwindHistoryTableEntry = UnwindHistoryTableEntry*;
alias PunwindHistoryTable = UnwindHistoryTable*;
alias PslistEntry = SlistEntry*;
alias PslistHeader = SlistHeader*;
alias PrtlRunOnce = RtlRunOnce*;
alias PrtlBarrier = RtlBarrier*;
alias PmessageResourceEntry = MessageResourceEntry*;
alias PmessageResourceBlock = MessageResourceBlock*;
alias PmessageResourceData = MessageResourceData*;
alias Posversioninfoa = Osversioninfoa*;
alias Lposversioninfoa = Osversioninfoa*;
alias Posversioninfow = Osversioninfow*;
alias Lposversioninfow = Osversioninfow*;
alias RtlOsversioninfow = Osversioninfow;
alias PrtlOsversioninfow = Osversioninfow*;
alias Osversioninfo = Osversioninfoa;
alias Posversioninfo = Posversioninfoa;
alias Lposversioninfo = Lposversioninfoa;
alias Posversioninfoexa = Osversioninfoexa*;
alias Lposversioninfoexa = Osversioninfoexa*;
alias Posversioninfoexw = Osversioninfoexw*;
alias Lposversioninfoexw = Osversioninfoexw*;
alias RtlOsversioninfoexw = Osversioninfoexw;
alias PrtlOsversioninfoexw = Osversioninfoexw*;
alias Osversioninfoex = Osversioninfoexa;
alias Posversioninfoex = Posversioninfoexa;
alias Lposversioninfoex = Lposversioninfoexa;
alias PrtlUmsThreadInfoClass = RtlUmsThreadInfoClass*;
alias PrtlUmsSchedulerReason = RtlUmsSchedulerReason*;
alias RtlUmsSchedulerEntryPoint = fn void(RtlUmsSchedulerReason, UlongPtr, Pvoid);
alias PrtlUmsSchedulerEntryPoint = fn void(RtlUmsSchedulerReason, UlongPtr, Pvoid);
alias PrtlCriticalSectionDebug = RtlCriticalSectionDebug*;
alias RtlResourceDebug = RtlCriticalSectionDebug;
alias PrtlResourceDebug = RtlCriticalSectionDebug*;
alias PrtlCriticalSection = RtlCriticalSection*;
alias PrtlSrwlock = RtlSrwlock*;
alias PrtlConditionVariable = RtlConditionVariable*;
alias Papcfunc = fn void(UlongPtr);
alias PvectoredExceptionHandler = fn Long(ExceptionPointers*);
alias PheapOptimizeResourcesInformation = HeapOptimizeResourcesInformation*;
alias Workercallbackfunc = fn void(Pvoid);
alias ApcCallbackFunction = fn void(Dword*, Pvoid, Pvoid);
alias Waitortimercallbackfunc = fn void(Pvoid, Boolean);
alias Waitortimercallback = fn void(Pvoid, Boolean);
alias PflsCallbackFunction = fn void(Pvoid);
alias PsecureMemoryCacheCallback = fn Boolean(Pvoid, SizeT);
alias PactivationContextQueryIndex = ActivationContextQueryIndex*;
alias PassemblyFileDetailedInformation = AssemblyFileDetailedInformation*;
alias PactivationContextAssemblyDetailedInformation = ActivationContextAssemblyDetailedInformation*;
alias PactivationContextRunLevelInformation = ActivationContextRunLevelInformation*;
alias PcompatibilityContextElement = CompatibilityContextElement*;
alias PactivationContextCompatibilityInformation = ActivationContextCompatibilityInformation*;
alias PsupportedOsInfo = SupportedOsInfo*;
alias PactivationContextDetailedInformation = ActivationContextDetailedInformation*;
alias PcactivationContextQueryIndex = ActivationContextQueryIndex*;
alias PcassemblyFileDetailedInformation = AssemblyFileDetailedInformation*;
alias PcactivationContextAssemblyDetailedInformation = ActivationContextAssemblyDetailedInformation*;
alias PcactivationContextRunLevelInformation = ActivationContextRunLevelInformation*;
alias PccompatibilityContextElement = CompatibilityContextElement*;
alias PcactivationContextCompatibilityInformation = ActivationContextCompatibilityInformation*;
alias PcactivationContextDetailedInformation = ActivationContextDetailedInformation*;
alias RtlVerifierDllLoadCallback = fn void(Pwstr, Pvoid, SizeT, Pvoid);
alias RtlVerifierDllUnloadCallback = fn void(Pwstr, Pvoid, SizeT, Pvoid);
alias RtlVerifierNtdllheapfreeCallback = fn void(Pvoid, SizeT);
alias PrtlVerifierThunkDescriptor = RtlVerifierThunkDescriptor*;
alias PrtlVerifierDllDescriptor = RtlVerifierDllDescriptor*;
alias PrtlVerifierProviderDescriptor = RtlVerifierProviderDescriptor*;
alias PhardwareCounterData = HardwareCounterData*;
alias PperformanceData = PerformanceData*;
alias Peventlogrecord = Eventlogrecord*;
alias Peventsforlogfile = Eventsforlogfile*;
alias Ppackedeventinfo = Packedeventinfo*;
alias PtapeErase = TapeErase*;
alias PtapePrepare = TapePrepare*;
alias PtapeWriteMarks = TapeWriteMarks*;
alias PtapeGetPosition = TapeGetPosition*;
alias PtapeSetPosition = TapeSetPosition*;
alias PtapeGetDriveParameters = TapeGetDriveParameters*;
alias PtapeSetDriveParameters = TapeSetDriveParameters*;
alias PtapeGetMediaParameters = TapeGetMediaParameters*;
alias PtapeSetMediaParameters = TapeSetMediaParameters*;
alias PtapeCreatePartition = TapeCreatePartition*;
alias PtapeWmiOperations = TapeWmiOperations*;
alias TpVersion = fn int(int*);
alias PtpVersion = fn int(int*);
alias PtpCallbackInstance = TpCallbackInstance*;
alias PtpSimpleCallback = fn void(PtpCallbackInstance, Pvoid);
alias PtpPool = TpPool*;
alias PtpPoolStackInformation = TpPoolStackInformation*;
alias PtpCleanupGroup = TpCleanupGroup*;
alias PtpCleanupGroupCancelCallback = fn void(Pvoid, Pvoid);
alias TpCallbackEnviron = TpCallbackEnvironV3;
alias PtpCallbackEnviron = TpCallbackEnvironV3*;
alias PtpWork = TpWork*;
alias PtpWorkCallback = fn void(PtpCallbackInstance, Pvoid, PtpWork);
alias PtpTimer = TpTimer*;
alias PtpTimerCallback = fn void(PtpCallbackInstance, Pvoid, PtpTimer);
alias TpWaitResult = fn int(int*);
alias PtpWait = TpWait*;
alias PtpWaitCallback = fn void(PtpCallbackInstance, Pvoid, PtpWait, TpWaitResult*);
alias PtpIo = TpIo*;
alias PtransactionBasicInformation = TransactionBasicInformation*;
alias PtransactionmanagerBasicInformation = TransactionmanagerBasicInformation*;
alias PtransactionmanagerLogInformation = TransactionmanagerLogInformation*;
alias PtransactionmanagerLogpathInformation = TransactionmanagerLogpathInformation*;
alias PtransactionmanagerRecoveryInformation = TransactionmanagerRecoveryInformation*;
alias PtransactionmanagerOldestInformation = TransactionmanagerOldestInformation*;
alias PtransactionPropertiesInformation = TransactionPropertiesInformation*;
alias PtransactionBindInformation = TransactionBindInformation*;
alias PtransactionEnlistmentPair = TransactionEnlistmentPair*;
alias PtransactionEnlistmentsInformation = TransactionEnlistmentsInformation*;
alias PtransactionSuperiorEnlistmentInformation = TransactionSuperiorEnlistmentInformation*;
alias PresourcemanagerBasicInformation = ResourcemanagerBasicInformation*;
alias PresourcemanagerCompletionInformation = ResourcemanagerCompletionInformation*;
alias PenlistmentBasicInformation = EnlistmentBasicInformation*;
alias PenlistmentCrmInformation = EnlistmentCrmInformation*;
alias PtransactionListEntry = TransactionListEntry*;
alias PtransactionListInformation = TransactionListInformation*;
alias PktmobjectType = KtmobjectType*;
alias PktmobjectCursor = KtmobjectCursor*;
alias Pwow64FloatingSaveArea = Wow64FloatingSaveArea*;
alias Pwow64Context = Wow64Context*;
alias Pwow64LdtEntry = Wow64LdtEntry*;
alias Pwow64DescriptorTableEntry = Wow64DescriptorTableEntry*;
alias PprocessorNumber = ProcessorNumber*;
alias PdwordVT = ulong*;
alias LongVT = long;
alias UintSR = uint;
alias SizeT = ulong;
alias WcharT = ushort;
alias LongPtr = long;
alias UlongPtr = ulong;
alias PulongVT = ulong*;
alias PsizeT = UlongPtr*;
alias Kaffinity = ulong;
alias DwordVT = ulong;
alias UlongVT = ulong;

enum CompartmentId
{
	UNSPECIFIED_COMPARTMENT_ID,
	DEFAULT_COMPARTMENT_ID
}

constdef SidNameUse : int
{
	SIDTYPEUSER = 1,
	SIDTYPEGROUP = 2,
	SIDTYPEDOMAIN = 3,
	SIDTYPEALIAS = 4,
	SIDTYPEWELLKNOWNGROUP = 5,
	SIDTYPEDELETEDACCOUNT = 6,
	SIDTYPEINVALID = 7,
	SIDTYPEUNKNOWN = 8,
	SIDTYPECOMPUTER = 9,
	SIDTYPELABEL = 10,
	SIDTYPELOGONSESSION = 11
}

enum WellKnownSidType
{
	WINNULLSID,
	WINWORLDSID,
	WINLOCALSID,
	WINCREATOROWNERSID,
	WINCREATORGROUPSID,
	WINCREATOROWNERSERVERSID,
	WINCREATORGROUPSERVERSID,
	WINNTAUTHORITYSID,
	WINDIALUPSID,
	WINNETWORKSID,
	WINBATCHSID,
	WININTERACTIVESID,
	WINSERVICESID,
	WINANONYMOUSSID,
	WINPROXYSID,
	WINENTERPRISECONTROLLERSSID,
	WINSELFSID,
	WINAUTHENTICATEDUSERSID,
	WINRESTRICTEDCODESID,
	WINTERMINALSERVERSID,
	WINREMOTELOGONIDSID,
	WINLOGONIDSSID,
	WINLOCALSYSTEMSID,
	WINLOCALSERVICESID,
	WINNETWORKSERVICESID,
	WINBUILTINDOMAINSID,
	WINBUILTINADMINISTRATORSSID,
	WINBUILTINUSERSSID,
	WINBUILTINGUESTSSID,
	WINBUILTINPOWERUSERSSID,
	WINBUILTINACCOUNTOPERATORSSID,
	WINBUILTINSYSTEMOPERATORSSID,
	WINBUILTINPRINTOPERATORSSID,
	WINBUILTINBACKUPOPERATORSSID,
	WINBUILTINREPLICATORSID,
	WINBUILTINPREWINDOWS2000COMPATIBLEACCESSSID,
	WINBUILTINREMOTEDESKTOPUSERSSID,
	WINBUILTINNETWORKCONFIGURATIONOPERATORSSID,
	WINACCOUNTADMINISTRATORSID,
	WINACCOUNTGUESTSID,
	WINACCOUNTKRBTGTSID,
	WINACCOUNTDOMAINADMINSSID,
	WINACCOUNTDOMAINUSERSSID,
	WINACCOUNTDOMAINGUESTSSID,
	WINACCOUNTCOMPUTERSSID,
	WINACCOUNTCONTROLLERSSID,
	WINACCOUNTCERTADMINSSID,
	WINACCOUNTSCHEMAADMINSSID,
	WINACCOUNTENTERPRISEADMINSSID,
	WINACCOUNTPOLICYADMINSSID,
	WINACCOUNTRASANDIASSERVERSSID,
	WINNTLMAUTHENTICATIONSID,
	WINDIGESTAUTHENTICATIONSID,
	WINSCHANNELAUTHENTICATIONSID,
	WINTHISORGANIZATIONSID,
	WINOTHERORGANIZATIONSID,
	WINBUILTININCOMINGFORESTTRUSTBUILDERSSID,
	WINBUILTINPERFMONITORINGUSERSSID,
	WINBUILTINPERFLOGGINGUSERSSID,
	WINBUILTINAUTHORIZATIONACCESSSID,
	WINBUILTINTERMINALSERVERLICENSESERVERSSID,
	WINBUILTINDCOMUSERSSID,
	WINBUILTINIUSERSSID,
	WINIUSERSID,
	WINBUILTINCRYPTOOPERATORSSID,
	WINUNTRUSTEDLABELSID,
	WINLOWLABELSID,
	WINMEDIUMLABELSID,
	WINHIGHLABELSID,
	WINSYSTEMLABELSID,
	WINWRITERESTRICTEDCODESID,
	WINCREATOROWNERRIGHTSSID,
	WINCACHEABLEPRINCIPALSGROUPSID,
	WINNONCACHEABLEPRINCIPALSGROUPSID,
	WINENTERPRISEREADONLYCONTROLLERSSID,
	WINACCOUNTREADONLYCONTROLLERSSID,
	WINBUILTINEVENTLOGREADERSGROUP,
	WINNEWENTERPRISEREADONLYCONTROLLERSSID,
	WINBUILTINCERTSVCDCOMACCESSGROUP,
	WINMEDIUMPLUSLABELSID,
	WINLOCALLOGONSID,
	WINCONSOLELOGONSID,
	WINTHISORGANIZATIONCERTIFICATESID,
	WINAPPLICATIONPACKAGEAUTHORITYSID,
	WINBUILTINANYPACKAGESID,
	WINCAPABILITYINTERNETCLIENTSID,
	WINCAPABILITYINTERNETCLIENTSERVERSID,
	WINCAPABILITYPRIVATENETWORKCLIENTSERVERSID,
	WINCAPABILITYPICTURESLIBRARYSID,
	WINCAPABILITYVIDEOSLIBRARYSID,
	WINCAPABILITYMUSICLIBRARYSID,
	WINCAPABILITYDOCUMENTSLIBRARYSID,
	WINCAPABILITYSHAREDUSERCERTIFICATESSID,
	WINCAPABILITYENTERPRISEAUTHENTICATIONSID,
	WINCAPABILITYREMOVABLESTORAGESID,
	WINBUILTINRDSREMOTEACCESSSERVERSSID,
	WINBUILTINRDSENDPOINTSERVERSSID,
	WINBUILTINRDSMANAGEMENTSERVERSSID,
	WINUSERMODEDRIVERSSID,
	WINBUILTINHYPERVADMINSSID,
	WINACCOUNTCLONEABLECONTROLLERSSID,
	WINBUILTINACCESSCONTROLASSISTANCEOPERATORSSID,
	WINBUILTINREMOTEMANAGEMENTUSERSSID,
	WINAUTHENTICATIONAUTHORITYASSERTEDSID,
	WINAUTHENTICATIONSERVICEASSERTEDSID,
	WINLOCALACCOUNTSID,
	WINLOCALACCOUNTANDADMINISTRATORSID,
	WINACCOUNTPROTECTEDUSERSSID,
	WINCAPABILITYAPPOINTMENTSSID,
	WINCAPABILITYCONTACTSSID,
	WINACCOUNTDEFAULTSYSTEMMANAGEDSID,
	WINBUILTINDEFAULTSYSTEMMANAGEDGROUPSID,
	WINBUILTINSTORAGEREPLICAADMINSSID,
	WINACCOUNTKEYADMINSSID,
	WINACCOUNTENTERPRISEKEYADMINSSID,
	WINAUTHENTICATIONKEYTRUSTSID,
	WINAUTHENTICATIONKEYPROPERTYMFASID,
	WINAUTHENTICATIONKEYPROPERTYATTESTATIONSID,
	WINAUTHENTICATIONFRESHKEYAUTHSID,
	WINBUILTINDEVICEOWNERSSID,
	WINBUILTINUSERMODEHARDWAREOPERATORSSID,
	WINBUILTINOPENSSHUSERSSID
}

constdef AclInformationClass : int
{
	ACLREVISIONINFORMATION = 1,
	ACLSIZEINFORMATION = 2
}

enum AuditEventType
{
	AUDITEVENTOBJECTACCESS,
	AUDITEVENTDIRECTORYSERVICEACCESS
}

constdef AccessReasonType : int
{
	ACCESSREASONNONE = 0,
	ACCESSREASONALLOWEDACE = 65536,
	ACCESSREASONDENIEDACE = 131072,
	ACCESSREASONALLOWEDPARENTACE = 196608,
	ACCESSREASONDENIEDPARENTACE = 262144,
	ACCESSREASONNOTGRANTEDBYCAPE = 327680,
	ACCESSREASONNOTGRANTEDBYPARENTCAPE = 393216,
	ACCESSREASONNOTGRANTEDTOAPPCONTAINER = 458752,
	ACCESSREASONMISSINGPRIVILEGE = 1048576,
	ACCESSREASONFROMPRIVILEGE = 2097152,
	ACCESSREASONINTEGRITYLEVEL = 3145728,
	ACCESSREASONOWNERSHIP = 4194304,
	ACCESSREASONNULLDACL = 5242880,
	ACCESSREASONEMPTYDACL = 6291456,
	ACCESSREASONNOSD = 7340032,
	ACCESSREASONNOGRANT = 8388608,
	ACCESSREASONTRUSTLABEL = 9437184,
	ACCESSREASONFILTERACE = 10485760
}

enum SecurityImpersonationLevel
{
	SECURITYANONYMOUS,
	SECURITYIDENTIFICATION,
	SECURITYIMPERSONATION,
	SECURITYDELEGATION
}

constdef TokenType : int
{
	TOKENPRIMARY = 1,
	TOKENIMPERSONATION = 2
}

constdef TokenElevationType : int
{
	TOKENELEVATIONTYPEDEFAULT = 1,
	TOKENELEVATIONTYPEFULL = 2,
	TOKENELEVATIONTYPELIMITED = 3
}

constdef TokenInformationClass : int
{
	TOKENUSER = 1,
	TOKENGROUPS = 2,
	TOKENPRIVILEGES = 3,
	TOKENOWNER = 4,
	TOKENPRIMARYGROUP = 5,
	TOKENDEFAULTDACL = 6,
	TOKENSOURCE = 7,
	TOKENTYPE = 8,
	TOKENIMPERSONATIONLEVEL = 9,
	TOKENSTATISTICS = 10,
	TOKENRESTRICTEDSIDS = 11,
	TOKENSESSIONID = 12,
	TOKENGROUPSANDPRIVILEGES = 13,
	TOKENSESSIONREFERENCE = 14,
	TOKENSANDBOXINERT = 15,
	TOKENAUDITPOLICY = 16,
	TOKENORIGIN = 17,
	TOKENELEVATIONTYPE = 18,
	TOKENLINKEDTOKEN = 19,
	TOKENELEVATION = 20,
	TOKENHASRESTRICTIONS = 21,
	TOKENACCESSINFORMATION = 22,
	TOKENVIRTUALIZATIONALLOWED = 23,
	TOKENVIRTUALIZATIONENABLED = 24,
	TOKENINTEGRITYLEVEL = 25,
	TOKENUIACCESS = 26,
	TOKENMANDATORYPOLICY = 27,
	TOKENLOGONSID = 28,
	TOKENISAPPCONTAINER = 29,
	TOKENCAPABILITIES = 30,
	TOKENAPPCONTAINERSID = 31,
	TOKENAPPCONTAINERNUMBER = 32,
	TOKENUSERCLAIMATTRIBUTES = 33,
	TOKENDEVICECLAIMATTRIBUTES = 34,
	TOKENRESTRICTEDUSERCLAIMATTRIBUTES = 35,
	TOKENRESTRICTEDDEVICECLAIMATTRIBUTES = 36,
	TOKENDEVICEGROUPS = 37,
	TOKENRESTRICTEDDEVICEGROUPS = 38,
	TOKENSECURITYATTRIBUTES = 39,
	TOKENISRESTRICTED = 40,
	TOKENPROCESSTRUSTLEVEL = 41,
	TOKENPRIVATENAMESPACE = 42,
	TOKENSINGLETONATTRIBUTES = 43,
	TOKENBNOISOLATION = 44,
	TOKENCHILDPROCESSFLAGS = 45,
	TOKENISLESSPRIVILEGEDAPPCONTAINER = 46,
	TOKENISSANDBOXED = 47,
	TOKENISAPPSILO = 48,
	MAXTOKENINFOCLASS = 49
}

enum MandatoryLevel
{
	MANDATORYLEVELUNTRUSTED,
	MANDATORYLEVELLOW,
	MANDATORYLEVELMEDIUM,
	MANDATORYLEVELHIGH,
	MANDATORYLEVELSYSTEM,
	MANDATORYLEVELSECUREPROCESS,
	MANDATORYLEVELCOUNT
}

enum SeImageSignatureType
{
	SEIMAGESIGNATURENONE,
	SEIMAGESIGNATUREEMBEDDED,
	SEIMAGESIGNATURECACHE,
	SEIMAGESIGNATURECATALOGCACHED,
	SEIMAGESIGNATURECATALOGNOTCACHED,
	SEIMAGESIGNATURECATALOGHINT,
	SEIMAGESIGNATUREPACKAGECATALOG,
	SEIMAGESIGNATUREPPLMITIGATED
}

enum SeLearningModeDataType
{
	SELEARNINGMODEINVALIDTYPE,
	SELEARNINGMODESETTINGS,
	SELEARNINGMODEMAX
}

enum HardwareCounterType
{
	PMCCOUNTER,
	MAXHARDWARECOUNTERTYPE
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

constdef JobobjectRateControlTolerance : int
{
	TOLERANCELOW = 1,
	TOLERANCEMEDIUM = 2,
	TOLERANCEHIGH = 3
}

constdef JobobjectRateControlToleranceInterval : int
{
	TOLERANCEINTERVALSHORT = 1,
	TOLERANCEINTERVALMEDIUM = 2,
	TOLERANCEINTERVALLONG = 3
}

constdef JobObjectNetRateControlFlags : int
{
	JOB_OBJECT_NET_RATE_CONTROL_ENABLE = 1,
	JOB_OBJECT_NET_RATE_CONTROL_MAX_BANDWIDTH = 2,
	JOB_OBJECT_NET_RATE_CONTROL_DSCP_TAG = 4,
	JOB_OBJECT_NET_RATE_CONTROL_VALID_FLAGS = 7
}

constdef JobObjectIoRateControlFlags : int
{
	JOB_OBJECT_IO_RATE_CONTROL_ENABLE = 1,
	JOB_OBJECT_IO_RATE_CONTROL_STANDALONE_VOLUME = 2,
	JOB_OBJECT_IO_RATE_CONTROL_FORCE_UNIT_ACCESS_ALL = 4,
	JOB_OBJECT_IO_RATE_CONTROL_FORCE_UNIT_ACCESS_ON_SOFT_CAP = 8,
	JOB_OBJECT_IO_RATE_CONTROL_VALID_FLAGS = 15
}

constdef JobobjectIoAttributionControlFlags : int
{
	JOBOBJECT_IO_ATTRIBUTION_CONTROL_ENABLE = 1,
	JOBOBJECT_IO_ATTRIBUTION_CONTROL_DISABLE = 2,
	JOBOBJECT_IO_ATTRIBUTION_CONTROL_VALID_FLAGS = 3
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

enum ServersiloState
{
	SERVERSILO_INITING,
	SERVERSILO_STARTED,
	SERVERSILO_SHUTTING_DOWN,
	SERVERSILO_TERMINATING,
	SERVERSILO_TERMINATED
}

enum FirmwareType
{
	FIRMWARETYPEUNKNOWN,
	FIRMWARETYPEBIOS,
	FIRMWARETYPEUEFI,
	FIRMWARETYPEMAX
}

constdef LogicalProcessorRelationship : int
{
	RELATIONPROCESSORCORE = 0,
	RELATIONNUMANODE = 1,
	RELATIONCACHE = 2,
	RELATIONPROCESSORPACKAGE = 3,
	RELATIONGROUP = 4,
	RELATIONPROCESSORDIE = 5,
	RELATIONNUMANODEEX = 6,
	RELATIONPROCESSORMODULE = 7,
	RELATIONALL = 65535
}

enum ProcessorCacheType
{
	CACHEUNIFIED,
	CACHEINSTRUCTION,
	CACHEDATA,
	CACHETRACE,
	CACHEUNKNOWN
}

enum CpuSetInformationType
{
	CPUSETINFORMATION
}

enum MemExtendedParameterType
{
	MEMEXTENDEDPARAMETERINVALIDTYPE,
	MEMEXTENDEDPARAMETERADDRESSREQUIREMENTS,
	MEMEXTENDEDPARAMETERNUMANODE,
	MEMEXTENDEDPARAMETERPARTITIONHANDLE,
	MEMEXTENDEDPARAMETERUSERPHYSICALHANDLE,
	MEMEXTENDEDPARAMETERATTRIBUTEFLAGS,
	MEMEXTENDEDPARAMETERIMAGEMACHINE,
	MEMEXTENDEDPARAMETERMAX
}

enum MemDedicatedAttributeType
{
	MEMDEDICATEDATTRIBUTEREADBANDWIDTH,
	MEMDEDICATEDATTRIBUTEREADLATENCY,
	MEMDEDICATEDATTRIBUTEWRITEBANDWIDTH,
	MEMDEDICATEDATTRIBUTEWRITELATENCY,
	MEMDEDICATEDATTRIBUTEMAX
}

enum MemSectionExtendedParameterType
{
	MEMSECTIONEXTENDEDPARAMETERINVALIDTYPE,
	MEMSECTIONEXTENDEDPARAMETERUSERPHYSICALFLAGS,
	MEMSECTIONEXTENDEDPARAMETERNUMANODE,
	MEMSECTIONEXTENDEDPARAMETERSIGNINGLEVEL,
	MEMSECTIONEXTENDEDPARAMETERMAX
}

enum SystemPowerState
{
	POWERSYSTEMUNSPECIFIED,
	POWERSYSTEMWORKING,
	POWERSYSTEMSLEEPING1,
	POWERSYSTEMSLEEPING2,
	POWERSYSTEMSLEEPING3,
	POWERSYSTEMHIBERNATE,
	POWERSYSTEMSHUTDOWN,
	POWERSYSTEMMAXIMUM
}

enum PowerAction
{
	POWERACTIONNONE,
	POWERACTIONRESERVED,
	POWERACTIONSLEEP,
	POWERACTIONHIBERNATE,
	POWERACTIONSHUTDOWN,
	POWERACTIONSHUTDOWNRESET,
	POWERACTIONSHUTDOWNOFF,
	POWERACTIONWARMEJECT
}

enum DevicePowerState
{
	POWERDEVICEUNSPECIFIED,
	POWERDEVICED0,
	POWERDEVICED1,
	POWERDEVICED2,
	POWERDEVICED3,
	POWERDEVICEMAXIMUM
}

enum MonitorDisplayState
{
	POWERMONITOROFF,
	POWERMONITORON,
	POWERMONITORDIM
}

constdef UserActivityPresence : int
{
	POWERUSERPRESENT = 0,
	POWERUSERNOTPRESENT = 1,
	POWERUSERINACTIVE = 2,
	POWERUSERMAXIMUM = 3,
	POWERUSERINVALID = 3
}

enum LatencyTime
{
	LT_DONT_CARE,
	LT_LOWEST_LATENCY
}

enum PowerRequestType
{
	POWERREQUESTDISPLAYREQUIRED,
	POWERREQUESTSYSTEMREQUIRED,
	POWERREQUESTAWAYMODEREQUIRED,
	POWERREQUESTEXECUTIONREQUIRED
}

enum PowerInformationLevel
{
	SYSTEMPOWERPOLICYAC,
	SYSTEMPOWERPOLICYDC,
	VERIFYSYSTEMPOLICYAC,
	VERIFYSYSTEMPOLICYDC,
	SYSTEMPOWERCAPABILITIES,
	SYSTEMBATTERYSTATE,
	SYSTEMPOWERSTATEHANDLER,
	PROCESSORSTATEHANDLER,
	SYSTEMPOWERPOLICYCURRENT,
	ADMINISTRATORPOWERPOLICY,
	SYSTEMRESERVEHIBERFILE,
	PROCESSORINFORMATION,
	SYSTEMPOWERINFORMATION,
	PROCESSORSTATEHANDLER2,
	LASTWAKETIME,
	LASTSLEEPTIME,
	SYSTEMEXECUTIONSTATE,
	SYSTEMPOWERSTATENOTIFYHANDLER,
	PROCESSORPOWERPOLICYAC,
	PROCESSORPOWERPOLICYDC,
	VERIFYPROCESSORPOWERPOLICYAC,
	VERIFYPROCESSORPOWERPOLICYDC,
	PROCESSORPOWERPOLICYCURRENT,
	SYSTEMPOWERSTATELOGGING,
	SYSTEMPOWERLOGGINGENTRY,
	SETPOWERSETTINGVALUE,
	NOTIFYUSERPOWERSETTING,
	POWERINFORMATIONLEVELUNUSED0,
	SYSTEMMONITORHIBERBOOTPOWEROFF,
	SYSTEMVIDEOSTATE,
	TRACEAPPLICATIONPOWERMESSAGE,
	TRACEAPPLICATIONPOWERMESSAGEEND,
	PROCESSORPERFSTATES,
	PROCESSORIDLESTATES,
	PROCESSORCAP,
	SYSTEMWAKESOURCE,
	SYSTEMHIBERFILEINFORMATION,
	TRACESERVICEPOWERMESSAGE,
	PROCESSORLOAD,
	POWERSHUTDOWNNOTIFICATION,
	MONITORCAPABILITIES,
	SESSIONPOWERINIT,
	SESSIONDISPLAYSTATE,
	POWERREQUESTCREATE,
	POWERREQUESTACTION,
	GETPOWERREQUESTLIST,
	PROCESSORINFORMATIONEX,
	NOTIFYUSERMODELEGACYPOWEREVENT,
	GROUPPARK,
	PROCESSORIDLEDOMAINS,
	WAKETIMERLIST,
	SYSTEMHIBERFILESIZE,
	PROCESSORIDLESTATESHV,
	PROCESSORPERFSTATESHV,
	PROCESSORPERFCAPHV,
	PROCESSORSETIDLE,
	LOGICALPROCESSORIDLING,
	USERPRESENCE,
	POWERSETTINGNOTIFICATIONNAME,
	GETPOWERSETTINGVALUE,
	IDLERESILIENCY,
	SESSIONRITSTATE,
	SESSIONCONNECTNOTIFICATION,
	SESSIONPOWERCLEANUP,
	SESSIONLOCKSTATE,
	SYSTEMHIBERBOOTSTATE,
	PLATFORMINFORMATION,
	PDCINVOCATION,
	MONITORINVOCATION,
	FIRMWARETABLEINFORMATIONREGISTERED,
	SETSHUTDOWNSELECTEDTIME,
	SUSPENDRESUMEINVOCATION,
	PLMPOWERREQUESTCREATE,
	SCREENOFF,
	CSDEVICENOTIFICATION,
	PLATFORMROLE,
	LASTRESUMEPERFORMANCE,
	DISPLAYBURST,
	EXITLATENCYSAMPLINGPERCENTAGE,
	APPLYLOWPOWERSCENARIOSETTINGS,
	POWERINFORMATIONLEVELMAXIMUM
}

constdef PowerUserPresenceType : int
{
	USERNOTPRESENT = 0,
	USERPRESENT = 1,
	USERUNKNOWN = 255
}

enum PowerMonitorRequestReason
{
	MONITORREQUESTREASONUNKNOWN,
	MONITORREQUESTREASONPOWERBUTTON,
	MONITORREQUESTREASONREMOTECONNECTION,
	MONITORREQUESTREASONSCMONITORPOWER,
	MONITORREQUESTREASONUSERINPUT,
	MONITORREQUESTREASONACDCDISPLAYBURST,
	MONITORREQUESTREASONUSERDISPLAYBURST,
	MONITORREQUESTREASONPOSETSYSTEMSTATE,
	MONITORREQUESTREASONSETTHREADEXECUTIONSTATE,
	MONITORREQUESTREASONFULLWAKE,
	MONITORREQUESTREASONSESSIONUNLOCK,
	MONITORREQUESTREASONSCREENOFFREQUEST,
	MONITORREQUESTREASONIDLETIMEOUT,
	MONITORREQUESTREASONPOLICYCHANGE,
	MONITORREQUESTREASONMAX
}

enum SystemPowerCondition
{
	POAC,
	PODC,
	POHOT,
	POCONDITIONMAXIMUM
}

enum PowerPlatformRole
{
	PLATFORMROLEUNSPECIFIED,
	PLATFORMROLEDESKTOP,
	PLATFORMROLEMOBILE,
	PLATFORMROLEWORKSTATION,
	PLATFORMROLEENTERPRISESERVER,
	PLATFORMROLESOHOSERVER,
	PLATFORMROLEAPPLIANCEPC,
	PLATFORMROLEPERFORMANCESERVER,
	PLATFORMROLESLATE,
	PLATFORMROLEMAXIMUM
}

constdef ImageAuxSymbolType : int
{
	IMAGE_AUX_SYMBOL_TYPE_TOKEN_DEF = 1
}

enum Arm64FnpdataFlags
{
	PDATAREFTOFULLXDATA,
	PDATAPACKEDUNWINDFUNCTION,
	PDATAPACKEDUNWINDFRAGMENT
}

enum Arm64FnpdataCr
{
	PDATACRUNCHAINED,
	PDATACRUNCHAINEDSAVEDLR,
	PDATACRCHAINEDWITHPAC,
	PDATACRCHAINED
}

enum ImportObjectType
{
	IMPORT_OBJECT_CODE,
	IMPORT_OBJECT_DATA,
	IMPORT_OBJECT_CONST
}

enum ImportObjectNameType
{
	IMPORT_OBJECT_ORDINAL,
	IMPORT_OBJECT_NAME,
	IMPORT_OBJECT_NAME_NO_PREFIX,
	IMPORT_OBJECT_NAME_UNDECORATE
}

constdef ReplacesCorHdrNumericDefines : int
{
	COMIMAGE_FLAGS_ILONLY = 1,
	COMIMAGE_FLAGS_32BITREQUIRED = 2,
	COMIMAGE_FLAGS_IL_LIBRARY = 4,
	COMIMAGE_FLAGS_STRONGNAMESIGNED = 8,
	COMIMAGE_FLAGS_TRACKDEBUGDATA = 65536,
	COR_VERSION_MAJOR_V2 = 2,
	COR_VERSION_MAJOR = 2,
	COR_VERSION_MINOR = 0,
	COR_DELETED_NAME_LENGTH = 8,
	COR_VTABLEGAP_NAME_LENGTH = 8,
	NATIVE_TYPE_MAX_CB = 1,
	COR_ILMETHOD_SECT_SMALL_MAX_DATASIZE = 255,
	IMAGE_COR_MIH_METHODRVA = 1,
	IMAGE_COR_MIH_EHRVA = 2,
	IMAGE_COR_MIH_BASICBLOCK = 8,
	COR_VTABLE_32BIT = 1,
	COR_VTABLE_64BIT = 2,
	COR_VTABLE_FROM_UNMANAGED = 4,
	COR_VTABLE_CALL_MOST_DERIVED = 16,
	IMAGE_COR_EATJ_THUNK_SIZE = 32,
	MAX_CLASS_NAME = 1024,
	MAX_PACKAGE_NAME = 1024
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

constdef HeapInformationClass : int
{
	HEAPCOMPATIBILITYINFORMATION = 0,
	HEAPENABLETERMINATIONONCORRUPTION = 1,
	HEAPOPTIMIZERESOURCES = 3,
	HEAPTAG = 7
}

constdef ActivationContextInfoClass : int
{
	ACTIVATIONCONTEXTBASICINFORMATION = 1,
	ACTIVATIONCONTEXTDETAILEDINFORMATION = 2,
	ASSEMBLYDETAILEDINFORMATIONINACTIVATIONCONTEXT = 3,
	FILEINFORMATIONINASSEMBLYOFASSEMBLYINACTIVATIONCONTEXT = 4,
	RUNLEVELINFORMATIONINACTIVATIONCONTEXT = 5,
	COMPATIBILITYINFORMATIONINACTIVATIONCONTEXT = 6,
	ACTIVATIONCONTEXTMANIFESTRESOURCENAME = 7,
	MAXACTIVATIONCONTEXTINFOCLASS = 8,
	ASSEMBLYDETAILEDINFORMATIONINACTIVATIONCONTXT = 3,
	FILEINFORMATIONINASSEMBLYOFASSEMBLYINACTIVATIONCONTXT = 4
}

enum ActctxRequestedRunLevel
{
	ACTCTX_RUN_LEVEL_UNSPECIFIED,
	ACTCTX_RUN_LEVEL_AS_INVOKER,
	ACTCTX_RUN_LEVEL_HIGHEST_AVAILABLE,
	ACTCTX_RUN_LEVEL_REQUIRE_ADMIN,
	ACTCTX_RUN_LEVEL_NUMBERS
}

enum ActctxCompatibilityElementType
{
	ACTCTX_COMPATIBILITY_ELEMENT_TYPE_UNKNOWN,
	ACTCTX_COMPATIBILITY_ELEMENT_TYPE_OS,
	ACTCTX_COMPATIBILITY_ELEMENT_TYPE_MITIGATION
}

constdef CmServiceNodeType : int
{
	DRIVERTYPE = 1,
	FILESYSTEMTYPE = 2,
	WIN32SERVICEOWNPROCESS = 16,
	WIN32SERVICESHAREPROCESS = 32,
	ADAPTERTYPE = 4,
	RECOGNIZERTYPE = 8
}

constdef ServiceNodeType : int
{
	DRIVERTYPE = 1,
	FILESYSTEMTYPE = 2,
	WIN32SERVICEOWNPROCESS = 16,
	WIN32SERVICESHAREPROCESS = 32,
	ADAPTERTYPE = 4,
	RECOGNIZERTYPE = 8
}

enum CmServiceLoadType
{
	BOOTLOAD,
	SYSTEMLOAD,
	AUTOLOAD,
	DEMANDLOAD,
	DISABLELOAD
}

enum ServiceLoadType
{
	BOOTLOAD,
	SYSTEMLOAD,
	AUTOLOAD,
	DEMANDLOAD,
	DISABLELOAD
}

enum CmErrorControlType
{
	IGNOREERROR,
	NORMALERROR,
	SEVEREERROR,
	CRITICALERROR
}

enum ServiceErrorType
{
	IGNOREERROR,
	NORMALERROR,
	SEVEREERROR,
	CRITICALERROR
}

enum TapeDriveProblemType
{
	TAPEDRIVEPROBLEMNONE,
	TAPEDRIVEREADWRITEWARNING,
	TAPEDRIVEREADWRITEERROR,
	TAPEDRIVEREADWARNING,
	TAPEDRIVEWRITEWARNING,
	TAPEDRIVEREADERROR,
	TAPEDRIVEWRITEERROR,
	TAPEDRIVEHARDWAREERROR,
	TAPEDRIVEUNSUPPORTEDMEDIA,
	TAPEDRIVESCSICONNECTIONERROR,
	TAPEDRIVETIMETOCLEAN,
	TAPEDRIVECLEANDRIVENOW,
	TAPEDRIVEMEDIALIFEEXPIRED,
	TAPEDRIVESNAPPEDTAPE
}

constdef TpCallbackPriority : int
{
	TP_CALLBACK_PRIORITY_HIGH = 0,
	TP_CALLBACK_PRIORITY_NORMAL = 1,
	TP_CALLBACK_PRIORITY_LOW = 2,
	TP_CALLBACK_PRIORITY_INVALID = 3,
	TP_CALLBACK_PRIORITY_COUNT = 3
}

constdef TransactionOutcome : int
{
	TRANSACTIONOUTCOMEUNDETERMINED = 1,
	TRANSACTIONOUTCOMECOMMITTED = 2,
	TRANSACTIONOUTCOMEABORTED = 3
}

constdef TransactionState : int
{
	TRANSACTIONSTATENORMAL = 1,
	TRANSACTIONSTATEINDOUBT = 2,
	TRANSACTIONSTATECOMMITTEDNOTIFY = 3
}

enum TransactionInformationClass
{
	TRANSACTIONBASICINFORMATION,
	TRANSACTIONPROPERTIESINFORMATION,
	TRANSACTIONENLISTMENTINFORMATION,
	TRANSACTIONSUPERIORENLISTMENTINFORMATION,
	TRANSACTIONBINDINFORMATION,
	TRANSACTIONDTCPRIVATEINFORMATION
}

enum TransactionmanagerInformationClass
{
	TRANSACTIONMANAGERBASICINFORMATION,
	TRANSACTIONMANAGERLOGINFORMATION,
	TRANSACTIONMANAGERLOGPATHINFORMATION,
	TRANSACTIONMANAGERONLINEPROBEINFORMATION,
	TRANSACTIONMANAGERRECOVERYINFORMATION,
	TRANSACTIONMANAGEROLDESTTRANSACTIONINFORMATION
}

enum ResourcemanagerInformationClass
{
	RESOURCEMANAGERBASICINFORMATION,
	RESOURCEMANAGERCOMPLETIONINFORMATION
}

enum EnlistmentInformationClass
{
	ENLISTMENTBASICINFORMATION,
	ENLISTMENTRECOVERYINFORMATION,
	ENLISTMENTCRMINFORMATION
}

enum KtmobjectType
{
	KTMOBJECT_TRANSACTION,
	KTMOBJECT_TRANSACTION_MANAGER,
	KTMOBJECT_RESOURCE_MANAGER,
	KTMOBJECT_ENLISTMENT,
	KTMOBJECT_INVALID
}

enum ExceptionDisposition
{
	EXCEPTIONCONTINUEEXECUTION,
	EXCEPTIONCONTINUESEARCH,
	EXCEPTIONNESTEDEXCEPTION,
	EXCEPTIONCOLLIDEDUNWIND
}

struct GroupAffinity { void* _unused; }

struct GroupAffinity32 { void* _unused; }

struct GroupAffinity64 { void* _unused; }

struct FloatQRX
{
	long low_part;
	long high_part;
}

struct LargeInteger { void* _unused; }

struct UlargeInteger { void* _unused; }

struct Luid { void* _unused; }

struct ListEntry
{
	ListEntry* flink;
	ListEntry* blink;
}

struct SingleListEntry
{
	SingleListEntry* next;
}

struct ListEntry32 { void* _unused; }

struct ListEntry64
{
	ulong flink;
	ulong blink;
}

struct Objectid { void* _unused; }

struct MQRXa
{
	ulong low;
	long high;
}

struct XsaveFormat { void* _unused; }

struct XsaveCetUFormat
{
	ulong ia32_cet_u_msr;
	ulong ia32_pl3_ssp_msr;
}

struct XsaveArm64SveHeader { void* _unused; }

struct XsaveAreaHeader
{
	ulong mask;
	DwordVT[7] reserved;
}

struct XsaveArea { void* _unused; }

struct XstateContext { void* _unused; }

struct KernelCetContext { void* _unused; }

struct ScopeTableAmd64 { void* _unused; }

struct XmmSaveArea32 { void* _unused; }

struct Context { void* _unused; }

struct RuntimeFunction { void* _unused; }

struct Arm64NtNeon128 { void* _unused; }

struct Arm64NtContext { void* _unused; }

struct Arm64ecNtContext
{
	void* _field2;
}

struct ImageArm64RuntimeFunctionEntry { void* _unused; }

struct Arm64RuntimeFunction { void* _unused; }

struct DispatcherContextNonvolregArm64 { void* _unused; }

struct UnwindHistoryTable { void* _unused; }

struct DispatcherContextArm64 { void* _unused; }

struct KnonvolatileContextPointersArm64
{
	ulong* x19;
	ulong* x20;
	ulong* x21;
	ulong* x22;
	ulong* x23;
	ulong* x24;
	ulong* x25;
	ulong* x26;
	ulong* x27;
	ulong* x28;
	ulong* fp;
	ulong* lr;
	ulong* d8;
	ulong* d9;
	ulong* d10;
	ulong* d11;
	ulong* d12;
	ulong* d13;
	ulong* d14;
	ulong* d15;
}

struct LdtEntry { void* _unused; }

struct ExceptionRecord { void* _unused; }

struct ExceptionRecord32 { void* _unused; }

struct ExceptionRecord64 { void* _unused; }

struct ExceptionPointers
{
	PexceptionRecord exception_record;
	Pcontext context_record;
}

struct DispatcherContext { void* _unused; }

struct KnonvolatileContextPointers
{
	PmQRXa[16] floating_context;
	PulongVT[16] integer_context;
}

struct GenericMapping { void* _unused; }

struct LuidAndAttributes { void* _unused; }

struct SidIdentifierAuthority { void* _unused; }

struct Sid { void* _unused; }

struct SeSid { void* _unused; }

struct SidAndAttributes { void* _unused; }

struct SidAndAttributesHash { void* _unused; }

struct AttributesAndSid { void* _unused; }

struct Acl { void* _unused; }

struct AceHeader { void* _unused; }

struct AccessAllowedAce { void* _unused; }

struct AccessDeniedAce { void* _unused; }

struct SystemAuditAce { void* _unused; }

struct SystemAlarmAce { void* _unused; }

struct SystemResourceAttributeAce { void* _unused; }

struct SystemScopedPolicyIdAce { void* _unused; }

struct SystemMandatoryLabelAce { void* _unused; }

struct SystemProcessTrustLabelAce { void* _unused; }

struct SystemAccessFilterAce { void* _unused; }

struct AccessAllowedObjectAce { void* _unused; }

struct AccessDeniedObjectAce { void* _unused; }

struct SystemAuditObjectAce { void* _unused; }

struct SystemAlarmObjectAce { void* _unused; }

struct AccessAllowedCallbackAce { void* _unused; }

struct AccessDeniedCallbackAce { void* _unused; }

struct SystemAuditCallbackAce { void* _unused; }

struct SystemAlarmCallbackAce { void* _unused; }

struct AccessAllowedCallbackObjectAce { void* _unused; }

struct AccessDeniedCallbackObjectAce { void* _unused; }

struct SystemAuditCallbackObjectAce { void* _unused; }

struct SystemAlarmCallbackObjectAce { void* _unused; }

struct AclRevisionInformation { void* _unused; }

struct AclSizeInformation { void* _unused; }

struct SecurityDescriptorRelative { void* _unused; }

struct SecurityDescriptor { void* _unused; }

struct SecurityObjectAiParams { void* _unused; }

struct ObjectTypeList { void* _unused; }

struct PrivilegeSet { void* _unused; }

struct AccessReasons { void* _unused; }

struct SeSecurityDescriptor { void* _unused; }

struct SeAccessRequest { void* _unused; }

struct SeAccessReply { void* _unused; }

struct TokenUser { void* _unused; }

struct SeTokenUser { void* _unused; }

struct TokenGroups { void* _unused; }

struct TokenPrivileges { void* _unused; }

struct TokenOwner
{
	void* owner;
}

struct TokenPrimaryGroup
{
	void* primary_group;
}

struct TokenDefaultDacl
{
	Pacl default_dacl;
}

struct TokenUserClaims
{
	void* user_claims;
}

struct TokenDeviceClaims
{
	void* device_claims;
}

struct TokenGroupsAndPrivileges { void* _unused; }

struct TokenLinkedToken
{
	void* linked_token;
}

struct TokenElevation { void* _unused; }

struct TokenMandatoryLabel { void* _unused; }

struct TokenMandatoryPolicy { void* _unused; }

struct TokenAccessInformation { void* _unused; }

struct TokenAuditPolicy { void* _unused; }

struct TokenSource { void* _unused; }

struct TokenStatistics { void* _unused; }

struct TokenControl { void* _unused; }

struct TokenOrigin { void* _unused; }

struct TokenAppcontainerInformation
{
	void* token_app_container;
}

struct TokenSidInformation
{
	void* sid;
}

struct TokenBnoIsolationInformation
{
	Pwstr isolation_prefix;
	int isolation_enabled;
}

struct ClaimSecurityAttributeFqbnValue
{
	ulong version;
	Pwstr name;
}

struct ClaimSecurityAttributeOctetStringValue { void* _unused; }

struct ClaimSecurityAttributeV1 { void* _unused; }

struct ClaimSecurityAttributeRelativeV1 { void* _unused; }

struct ClaimSecurityAttributesInformation { void* _unused; }

struct SecurityQualityOfService { void* _unused; }

struct SeImpersonationState
{
	void* token;
	int copy_on_open;
	int effective_only;
	SecurityImpersonationLevel level;
}

struct SecurityCapabilities { void* _unused; }

struct JobSetArray { void* _unused; }

struct ExceptionRegistrationRecord
{
	void* _field1;
	void* _field5;
}

struct NtTib
{
	ExceptionRegistrationRecord* exception_list;
	void* stack_base;
	void* stack_limit;
	void* sub_system_tib;
	void* arbitrary_user_pointer;
	NtTib* self;
}

struct NtTib32 { void* _unused; }

struct NtTib64
{
	ulong exception_list;
	ulong stack_base;
	ulong stack_limit;
	ulong sub_system_tib;
	ulong arbitrary_user_pointer;
	ulong self;
}

struct UmsCreateThreadAttributes { void* _unused; }

struct ComponentFilter { void* _unused; }

struct ProcessDynamicEhContinuationTarget
{
	ulong target_address;
	ulong flags;
}

struct ProcessDynamicEhContinuationTargetsInformation { void* _unused; }

struct ProcessDynamicEnforcedAddressRange { void* _unused; }

struct ProcessDynamicEnforcedAddressRangesInformation { void* _unused; }

struct QuotaLimits { void* _unused; }

struct RateQuotaLimit { void* _unused; }

struct QuotaLimitsEx { void* _unused; }

struct IoCounters
{
	ulong read_operation_count;
	ulong write_operation_count;
	ulong other_operation_count;
	ulong read_transfer_count;
	ulong write_transfer_count;
	ulong other_transfer_count;
}

struct ProcessMitigationAslrPolicy { void* _unused; }

struct ProcessMitigationDepPolicy
{
	int permanent;
}

struct ProcessMitigationSehopPolicy { void* _unused; }

struct ProcessMitigationStrictHandleCheckPolicy { void* _unused; }

struct ProcessMitigationSystemCallDisablePolicy { void* _unused; }

struct ProcessMitigationExtensionPointDisablePolicy { void* _unused; }

struct ProcessMitigationControlFlowGuardPolicy { void* _unused; }

struct ProcessMitigationBinarySignaturePolicy { void* _unused; }

struct ProcessMitigationDynamicCodePolicy { void* _unused; }

struct ProcessMitigationFontDisablePolicy { void* _unused; }

struct ProcessMitigationImageLoadPolicy { void* _unused; }

struct ProcessMitigationSystemCallFilterPolicy { void* _unused; }

struct ProcessMitigationPayloadRestrictionPolicy { void* _unused; }

struct ProcessMitigationChildProcessPolicy { void* _unused; }

struct ProcessMitigationSideChannelIsolationPolicy { void* _unused; }

struct ProcessMitigationUserShadowStackPolicy { void* _unused; }

struct ProcessMitigationUserPointerAuthPolicy { void* _unused; }

struct ProcessMitigationRedirectionTrustPolicy { void* _unused; }

struct JobobjectBasicAccountingInformation { void* _unused; }

struct JobobjectBasicLimitInformation { void* _unused; }

struct JobobjectExtendedLimitInformation { void* _unused; }

struct JobobjectBasicProcessIdList { void* _unused; }

struct JobobjectBasicUiRestrictions { void* _unused; }

struct JobobjectSecurityLimitInformation { void* _unused; }

struct JobobjectEndOfJobTimeInformation { void* _unused; }

struct JobobjectAssociateCompletionPort
{
	void* completion_key;
	void* completion_port;
}

struct JobobjectBasicAndIoAccountingInformation { void* _unused; }

struct JobobjectJobsetInformation { void* _unused; }

struct JobobjectNotificationLimitInformation { void* _unused; }

struct JobobjectNotificationLimitInformation2 { void* _unused; }

struct JobobjectLimitViolationInformation { void* _unused; }

struct JobobjectLimitViolationInformation2 { void* _unused; }

struct JobobjectCpuRateControlInformation { void* _unused; }

struct JobobjectNetRateControlInformation { void* _unused; }

struct JobobjectIoRateControlInformationNative { void* _unused; }

struct JobobjectIoRateControlInformationNativeV2 { void* _unused; }

struct JobobjectIoRateControlInformationNativeV3 { void* _unused; }

struct JobobjectIoAttributionStats
{
	ulong io_count;
	ulong total_non_overlapped_queue_time;
	ulong total_non_overlapped_service_time;
	ulong total_size;
}

struct JobobjectIoAttributionInformation { void* _unused; }

struct SiloobjectBasicInformation { void* _unused; }

struct ServersiloBasicInformation { void* _unused; }

struct CacheDescriptor { void* _unused; }

struct SystemLogicalProcessorInformation
{
	ulong processor_mask;
	LogicalProcessorRelationship relationship;
}

struct ProcessorRelationship { void* _unused; }

struct NumaNodeRelationship { void* _unused; }

struct CacheRelationship { void* _unused; }

struct ProcessorGroupInfo { void* _unused; }

struct GroupRelationship { void* _unused; }

struct SystemLogicalProcessorInformationEx { void* _unused; }

struct SystemCpuSetInformation { void* _unused; }

struct SystemPoolZeroingInformation
{
	int pool_zeroing_support_present;
}

struct SystemProcessorCycleTimeInformation
{
	ulong cycle_time;
}

struct SystemSupportedProcessorArchitecturesInformation { void* _unused; }

struct XstateFeature { void* _unused; }

struct XstateConfiguration { void* _unused; }

struct MemoryBasicInformation { void* _unused; }

struct MemoryBasicInformation32 { void* _unused; }

struct MemoryBasicInformation64 { void* _unused; }

struct CfgCallTargetInfo
{
	ulong offset;
	ulong flags;
}

struct MemAddressRequirements
{
	void* lowest_starting_address;
	void* highest_ending_address;
	ulong alignment;
}

struct MemExtendedParameter
{
	void* _field2;
}

struct EnclaveCreateInfoSgx { void* _unused; }

struct EnclaveInitInfoSgx { void* _unused; }

struct EnclaveCreateInfoVbs { void* _unused; }

struct EnclaveCreateInfoVbsBasic { void* _unused; }

struct EnclaveLoadDataVbsBasic { void* _unused; }

struct EnclaveInitInfoVbsBasic { void* _unused; }

struct EnclaveInitInfoVbs { void* _unused; }

struct MemoryPartitionDedicatedMemoryAttribute { void* _unused; }

struct MemoryPartitionDedicatedMemoryInformation { void* _unused; }

struct FileId128 { void* _unused; }

struct FileNotifyInformation { void* _unused; }

struct FileNotifyExtendedInformation { void* _unused; }

struct FileNotifyFullInformation { void* _unused; }

struct FileStatInformation { void* _unused; }

struct FileStatLxInformation { void* _unused; }

struct FileStatBasicInformation { void* _unused; }

struct FileCaseSensitiveInformation { void* _unused; }

union FileSegmentElement
{
	void* buffer;
	ulong alignment;
}

struct ReparseGuidDataBuffer { void* _unused; }

struct ScrubDataInput { void* _unused; }

struct ScrubParityExtent
{
	long offset;
	ulong length;
}

struct ScrubParityExtentData { void* _unused; }

struct ScrubDataOutput { void* _unused; }

struct CmPowerDataS { void* _unused; }

struct PowerUserPresence
{
	PowerUserPresenceType user_presence;
}

struct PowerSessionConnect
{
	int connected;
	int console;
}

struct PowerSessionTimeouts { void* _unused; }

struct PowerSessionRitState { void* _unused; }

struct PowerSessionWinlogon { void* _unused; }

struct PowerIdleResiliency { void* _unused; }

struct PowerMonitorInvocation
{
	int on;
	int console;
	PowerMonitorRequestReason request_reason;
}

struct ResumePerformance { void* _unused; }

struct SetPowerSettingValue { void* _unused; }

struct NotifyUserPowerSetting
{
	Guid guid;
}

struct ApplicationlaunchSettingValue { void* _unused; }

struct PowerPlatformInformation
{
	int ao_ac;
}

struct BatteryReportingScale { void* _unused; }

struct PpmWmiLegacyPerfstate { void* _unused; }

struct PpmWmiIdleState { void* _unused; }

struct PpmWmiIdleStates { void* _unused; }

struct PpmWmiIdleStatesEx { void* _unused; }

struct PpmWmiPerfState { void* _unused; }

struct PpmWmiPerfStates { void* _unused; }

struct PpmWmiPerfStatesEx { void* _unused; }

struct PpmIdleStateAccounting { void* _unused; }

struct PpmIdleAccounting { void* _unused; }

struct PpmIdleStateBucketEx { void* _unused; }

struct PpmIdleStateAccountingEx { void* _unused; }

struct PpmIdleAccountingEx { void* _unused; }

struct PpmPerfstateEvent { void* _unused; }

struct PpmPerfstateDomainEvent { void* _unused; }

struct PpmIdlestateEvent { void* _unused; }

struct PpmThermalchangeEvent { void* _unused; }

struct PpmThermalPolicyEvent { void* _unused; }

struct PowerActionPolicy { void* _unused; }

struct ProcessorIdlestateInfo { void* _unused; }

struct SystemPowerLevel { void* _unused; }

struct SystemPowerPolicy { void* _unused; }

struct ProcessorIdlestatePolicy { void* _unused; }

struct ProcessorPowerPolicyInfo { void* _unused; }

struct ProcessorPowerPolicy { void* _unused; }

struct ProcessorPerfstatePolicy { void* _unused; }

struct AdministratorPowerPolicy { void* _unused; }

struct SystemPowerCapabilities { void* _unused; }

struct SystemBatteryState { void* _unused; }

struct ImageDosHeader { void* _unused; }

struct ImageOs2Header { void* _unused; }

struct ImageVxdHeader { void* _unused; }

struct ImageFileHeader { void* _unused; }

struct ImageDataDirectory { void* _unused; }

struct ImageOptionalHeader { void* _unused; }

struct ImageRomOptionalHeader { void* _unused; }

struct ImageOptionalHeader64 { void* _unused; }

struct ImageNtHeaders64 { void* _unused; }

struct ImageNtHeaders { void* _unused; }

struct ImageRomHeaders { void* _unused; }

struct AnonObjectHeader { void* _unused; }

struct AnonObjectHeaderV2 { void* _unused; }

struct AnonObjectHeaderBigobj { void* _unused; }

struct ImageSectionHeader { void* _unused; }

struct ImageSymbol { void* _unused; }

struct ImageSymbolEx { void* _unused; }

struct ImageAuxSymbolTokenDef { void* _unused; }

struct ImageAuxSymbol { void* _unused; }

struct ImageAuxSymbolEx { void* _unused; }

struct ImageRelocation { void* _unused; }

struct ImageLinenumber { void* _unused; }

struct ImageBaseRelocation { void* _unused; }

struct ImageArchiveMemberHeader { void* _unused; }

struct ImageExportDirectory { void* _unused; }

struct ImageImportByName { void* _unused; }

struct ImageThunkData64
{
	void* u1;
}

struct ImageThunkData32 { void* _unused; }

struct ImageTlsDirectory64 { void* _unused; }

struct ImageTlsDirectory32 { void* _unused; }

struct ImageImportDescriptor { void* _unused; }

struct ImageBoundImportDescriptor { void* _unused; }

struct ImageBoundForwarderRef { void* _unused; }

struct ImageDelayloadDescriptor { void* _unused; }

struct ImageResourceDirectory { void* _unused; }

struct ImageResourceDirectoryEntry { void* _unused; }

struct ImageResourceDirectoryString { void* _unused; }

struct ImageResourceDirStringU { void* _unused; }

struct ImageResourceDataEntry { void* _unused; }

struct ImageLoadConfigCodeIntegrity { void* _unused; }

struct ImageLoadConfigDirectory32 { void* _unused; }

struct ImageLoadConfigDirectory64 { void* _unused; }

struct ImageCeRuntimeFunctionEntry { void* _unused; }

struct ImageAlpha64RuntimeFunctionEntry
{
	ulong begin_address;
	ulong end_address;
	ulong exception_handler;
	ulong handler_data;
	ulong prolog_end_address;
}

struct ImageAlphaRuntimeFunctionEntry { void* _unused; }

struct ImageArmRuntimeFunctionEntry { void* _unused; }

struct ImageArm64RuntimeFunctionEntryXdata { void* _unused; }

struct ImageRuntimeFunctionEntry { void* _unused; }

struct ImageDebugDirectory { void* _unused; }

struct ImageCoffSymbolsHeader { void* _unused; }

struct FpoData { void* _unused; }

struct ImageDebugMisc { void* _unused; }

struct ImageFunctionEntry { void* _unused; }

struct ImageFunctionEntry64
{
	ulong starting_address;
	ulong ending_address;
	void* _field4;
}

struct ImageSeparateDebugHeader { void* _unused; }

struct NonPagedDebugInfo { void* _unused; }

struct ImageArchitectureHeader { void* _unused; }

struct ImageArchitectureEntry { void* _unused; }

struct ImportObjectHeader { void* _unused; }

struct ImageCor20Header { void* _unused; }

struct UnwindHistoryTableEntry
{
	ulong image_base;
	PruntimeFunction function_entry;
}

struct SlistEntry
{
	SlistEntry* next;
}

union SlistHeader
{
	void* _field2;
	void* header8;
	void* header_x64;
}

struct RtlRunOnce
{
	void* ptr;
}

struct RtlBarrier { void* _unused; }

struct MessageResourceEntry { void* _unused; }

struct MessageResourceBlock { void* _unused; }

struct MessageResourceData { void* _unused; }

struct Osversioninfoa { void* _unused; }

struct Osversioninfow { void* _unused; }

struct Osversioninfoexa { void* _unused; }

struct Osversioninfoexw { void* _unused; }

struct RtlCriticalSectionDebug { void* _unused; }

struct RtlCriticalSection
{
	PrtlCriticalSectionDebug debug_info;
	CLong lock_count;
	CLong recursion_count;
	void* owning_thread;
	void* lock_semaphore;
	ulong spin_count;
}

struct RtlSrwlock
{
	void* ptr;
}

struct RtlConditionVariable
{
	void* ptr;
}

struct HeapOptimizeResourcesInformation { void* _unused; }

struct ActivationContextQueryIndex { void* _unused; }

struct AssemblyFileDetailedInformation { void* _unused; }

struct ActivationContextAssemblyDetailedInformation { void* _unused; }

struct ActivationContextRunLevelInformation { void* _unused; }

struct CompatibilityContextElement
{
	Guid id;
	ActctxCompatibilityElementType type;
}

struct ActivationContextCompatibilityInformation { void* _unused; }

struct SupportedOsInfo { void* _unused; }

struct ActivationContextDetailedInformation { void* _unused; }

struct RtlVerifierThunkDescriptor
{
	Pchar thunk_name;
	void* thunk_old_address;
	void* thunk_new_address;
}

struct RtlVerifierDllDescriptor { void* _unused; }

struct RtlVerifierProviderDescriptor { void* _unused; }

struct HardwareCounterData { void* _unused; }

struct PerformanceData { void* _unused; }

struct Eventlogrecord { void* _unused; }

struct Eventsforlogfile { void* _unused; }

struct Packedeventinfo { void* _unused; }

struct TapeErase { void* _unused; }

struct TapePrepare { void* _unused; }

struct TapeWriteMarks { void* _unused; }

struct TapeGetPosition { void* _unused; }

struct TapeSetPosition { void* _unused; }

struct TapeGetDriveParameters { void* _unused; }

struct TapeSetDriveParameters { void* _unused; }

struct TapeGetMediaParameters { void* _unused; }

struct TapeSetMediaParameters { void* _unused; }

struct TapeCreatePartition { void* _unused; }

struct TapeWmiOperations { void* _unused; }

struct TpCallbackInstance { void* _unused; }

struct TpPool { void* _unused; }

struct TpPoolStackInformation
{
	ulong stack_reserve;
	ulong stack_commit;
}

struct TpCleanupGroup { void* _unused; }

struct TpCallbackEnvironV3 { void* _unused; }

struct TpWork { void* _unused; }

struct TpTimer { void* _unused; }

struct TpWait { void* _unused; }

struct TpIo { void* _unused; }

struct Teb { void* _unused; }

struct TransactionBasicInformation { void* _unused; }

struct TransactionmanagerBasicInformation { void* _unused; }

struct TransactionmanagerLogInformation
{
	Guid log_identity;
}

struct TransactionmanagerLogpathInformation { void* _unused; }

struct TransactionmanagerRecoveryInformation
{
	ulong last_recovered_lsn;
}

struct TransactionmanagerOldestInformation
{
	Guid oldest_transaction_guid;
}

struct TransactionPropertiesInformation { void* _unused; }

struct TransactionBindInformation
{
	void* tm_handle;
}

struct TransactionEnlistmentPair
{
	Guid enlistment_id;
	Guid resource_manager_id;
}

struct TransactionEnlistmentsInformation { void* _unused; }

struct TransactionSuperiorEnlistmentInformation
{
	TransactionEnlistmentPair superior_enlistment_pair;
}

struct ResourcemanagerBasicInformation { void* _unused; }

struct ResourcemanagerCompletionInformation
{
	void* io_completion_port_handle;
	ulong completion_key;
}

struct EnlistmentBasicInformation
{
	Guid enlistment_id;
	Guid transaction_id;
	Guid resource_manager_id;
}

struct EnlistmentCrmInformation
{
	Guid crm_transaction_manager_id;
	Guid crm_resource_manager_id;
	Guid crm_enlistment_id;
}

struct TransactionListEntry
{
	Guid uow;
}

struct TransactionListInformation { void* _unused; }

struct KtmobjectCursor { void* _unused; }

struct Wow64FloatingSaveArea { void* _unused; }

struct Wow64Context { void* _unused; }

struct Wow64LdtEntry { void* _unused; }

struct Wow64DescriptorTableEntry { void* _unused; }

struct ProcessorNumber { void* _unused; }

struct Guid
{
	CULong data1;
	ushort data2;
	ushort data3;
	char[8] data4;
}

struct Boolean { void* _unused; }

struct Dword { void* _unused; }

struct ActivationContext { void* _unused; }

struct Void { void* _unused; }

// Functions
extern fn char _rotl8(char value, char shift) @cname("_rotl8");
extern fn ushort _rotl16(ushort value, char shift) @cname("_rotl16");
extern fn char _rotr8(char value, char shift) @cname("_rotr8");
extern fn ushort _rotr16(ushort value, char shift) @cname("_rotr16");
extern fn uint _rotl(uint value, int shift) @cname("_rotl");
extern fn uint _rotr(uint value, int shift) @cname("_rotr");
extern fn ulong _rotl64(ulong value, int shift) @cname("_rotl64");
extern fn ulong _rotr64(ulong value, int shift) @cname("_rotr64");
extern fn uint __getcallerseflags() @cname("__getcallerseflags");
extern fn long __mulh(long multiplier, long multiplicand) @cname("__mulh");
extern fn ulong __umulh(ulong multiplier, ulong multiplicand) @cname("__umulh");
extern fn long _mul128(long multiplier, long multiplicand, LongVT* high_product) @cname("_mul128");
extern fn ulong _umul128(ulong multiplier, ulong multiplicand, DwordVT* high_product) @cname("_umul128");
extern fn void rtl_capture_context(Pcontext context_record) @cname("RtlCaptureContext");
extern fn SizeT rtl_compare_memory(void* source1, void* source2, ulong length) @cname("RtlCompareMemory");
extern fn void rtl_grow_function_table(void* dynamic_table, Dword* new_entry_count) @cname("RtlGrowFunctionTable");
extern fn void rtl_delete_growable_function_table(void* dynamic_table) @cname("RtlDeleteGrowableFunctionTable");
extern fn Boolean rtl_add_function_table(PruntimeFunction function_table, Dword* entry_count, ulong base_address) @cname("RtlAddFunctionTable");
extern fn Boolean rtl_delete_function_table(PruntimeFunction function_table) @cname("RtlDeleteFunctionTable");
extern fn void rtl_restore_context(Pcontext context_record, ExceptionRecord* exception_record) @cname("RtlRestoreContext");
extern fn void rtl_unwind(void* target_frame, void* target_ip, PexceptionRecord exception_record, void* return_value) @cname("RtlUnwind");
extern fn Pvoid rtl_pc_to_file_header(void* pc_value, Pvoid* base_of_image) @cname("RtlPcToFileHeader");
extern fn PruntimeFunction rtl_lookup_function_entry(ulong control_pc, ulong* image_base, PunwindHistoryTable history_table) @cname("RtlLookupFunctionEntry");
extern fn void rtl_unwind_ex(void* target_frame, void* target_ip, PexceptionRecord exception_record, void* return_value, Pcontext context_record, PunwindHistoryTable history_table) @cname("RtlUnwindEx");
extern fn PexceptionRoutine rtl_virtual_unwind(Dword* handler_type, ulong image_base, ulong control_pc, PruntimeFunction function_entry, Pcontext context_record, Pvoid* handler_data, ulong* establisher_frame, PknonvolatileContextPointers context_pointers) @cname("RtlVirtualUnwind");
extern fn Boolean rtl_is_ec_code(ulong code_pointer) @cname("RtlIsEcCode");
extern fn void rtl_initialize_s_list_head(PslistHeader list_head) @cname("RtlInitializeSListHead");
extern fn PslistEntry rtl_first_entry_s_list(SlistHeader* list_head) @cname("RtlFirstEntrySList");
extern fn PslistEntry rtl_interlocked_pop_entry_s_list(PslistHeader list_head) @cname("RtlInterlockedPopEntrySList");
extern fn PslistEntry rtl_interlocked_push_entry_s_list(PslistHeader list_head, PslistEntry list_entry) @cname("RtlInterlockedPushEntrySList");
extern fn PslistEntry rtl_interlocked_push_list_s_list_ex(PslistHeader list_head, PslistEntry list, PslistEntry list_end, Dword* count) @cname("RtlInterlockedPushListSListEx");
extern fn PslistEntry rtl_interlocked_flush_s_list(PslistHeader list_head) @cname("RtlInterlockedFlushSList");
extern fn Ulonglong rtl_crc64(void* buffer, usz size, ulong initial_crc) @cname("RtlCrc64");
extern fn void rtl_application_verifier_stop(ulong code, Pstr message, ulong param1, Pstr description1, ulong param2, Pstr description2, ulong param3, Pstr description3, ulong param4, Pstr description4) @cname("RtlApplicationVerifierStop");
extern fn Long rtl_set_heap_information(void* heap_handle, HeapInformationClass heap_information_class, void* heap_information, ulong heap_information_length) @cname("RtlSetHeapInformation");
extern fn Long rtl_query_heap_information(void* heap_handle, HeapInformationClass heap_information_class, void* heap_information, ulong heap_information_length, PsizeT return_length) @cname("RtlQueryHeapInformation");
extern fn void tp_initialize_callback_environ(PtpCallbackEnviron cbe) @cname("TpInitializeCallbackEnviron");
extern fn void tp_set_callback_threadpool(PtpCallbackEnviron cbe, PtpPool pool) @cname("TpSetCallbackThreadpool");
extern fn void tp_set_callback_cleanup_group(PtpCallbackEnviron cbe, PtpCleanupGroup cleanup_group, PtpCleanupGroupCancelCallback cleanup_group_cb) @cname("TpSetCallbackCleanupGroup");
extern fn void tp_set_callback_activation_context(PtpCallbackEnviron cbe, ActivationContext* actx) @cname("TpSetCallbackActivationContext");
extern fn void tp_set_callback_no_activation_context(PtpCallbackEnviron cbe) @cname("TpSetCallbackNoActivationContext");
extern fn void tp_set_callback_long_function(PtpCallbackEnviron cbe) @cname("TpSetCallbackLongFunction");
extern fn void tp_set_callback_race_with_dll(PtpCallbackEnviron cbe, void* h) @cname("TpSetCallbackRaceWithDll");
extern fn void tp_set_callback_finalization_callback(PtpCallbackEnviron cbe, PtpSimpleCallback fini_cb) @cname("TpSetCallbackFinalizationCallback");
extern fn void tp_set_callback_priority(PtpCallbackEnviron cbe, TpCallbackPriority prio) @cname("TpSetCallbackPriority");
extern fn void tp_set_callback_persistent(PtpCallbackEnviron cbe) @cname("TpSetCallbackPersistent");
extern fn void tp_destroy_callback_environ(PtpCallbackEnviron cbe) @cname("TpDestroyCallbackEnviron");
extern fn Teb* nt_current_teb() @cname("NtCurrentTeb");
extern fn Pvoid get_current_fiber() @cname("GetCurrentFiber");
extern fn Pvoid get_fiber_data() @cname("GetFiberData");

// Global Variables
extern int* lpcuwstr @cname("LPCUWSTR");
extern int* pcuwstr @cname("PCUWSTR");
extern int* pcuzzwstr @cname("PCUZZWSTR");
extern int* pcunzwch @cname("PCUNZWCH");
extern int* lpcuwchar @cname("LPCUWCHAR");
extern int* pcuwchar @cname("PCUWCHAR");
extern Guid guid_max_power_savings @cname("GUID_MAX_POWER_SAVINGS");
extern Guid guid_min_power_savings @cname("GUID_MIN_POWER_SAVINGS");
extern Guid guid_typical_power_savings @cname("GUID_TYPICAL_POWER_SAVINGS");
extern Guid no_subgroup_guid @cname("NO_SUBGROUP_GUID");
extern Guid all_powerschemes_guid @cname("ALL_POWERSCHEMES_GUID");
extern Guid guid_powerscheme_personality @cname("GUID_POWERSCHEME_PERSONALITY");
extern Guid guid_active_powerscheme @cname("GUID_ACTIVE_POWERSCHEME");
extern Guid guid_idle_resiliency_subgroup @cname("GUID_IDLE_RESILIENCY_SUBGROUP");
extern Guid guid_idle_resiliency_period @cname("GUID_IDLE_RESILIENCY_PERIOD");
extern Guid guid_disk_coalescing_powerdown_timeout @cname("GUID_DISK_COALESCING_POWERDOWN_TIMEOUT");
extern Guid guid_execution_required_request_timeout @cname("GUID_EXECUTION_REQUIRED_REQUEST_TIMEOUT");
extern Guid guid_video_subgroup @cname("GUID_VIDEO_SUBGROUP");
extern Guid guid_video_powerdown_timeout @cname("GUID_VIDEO_POWERDOWN_TIMEOUT");
extern Guid guid_video_annoyance_timeout @cname("GUID_VIDEO_ANNOYANCE_TIMEOUT");
extern Guid guid_video_adaptive_percent_increase @cname("GUID_VIDEO_ADAPTIVE_PERCENT_INCREASE");
extern Guid guid_video_dim_timeout @cname("GUID_VIDEO_DIM_TIMEOUT");
extern Guid guid_video_adaptive_powerdown @cname("GUID_VIDEO_ADAPTIVE_POWERDOWN");
extern Guid guid_monitor_power_on @cname("GUID_MONITOR_POWER_ON");
extern Guid guid_device_power_policy_video_brightness @cname("GUID_DEVICE_POWER_POLICY_VIDEO_BRIGHTNESS");
extern Guid guid_device_power_policy_video_dim_brightness @cname("GUID_DEVICE_POWER_POLICY_VIDEO_DIM_BRIGHTNESS");
extern Guid guid_video_current_monitor_brightness @cname("GUID_VIDEO_CURRENT_MONITOR_BRIGHTNESS");
extern Guid guid_video_adaptive_display_brightness @cname("GUID_VIDEO_ADAPTIVE_DISPLAY_BRIGHTNESS");
extern Guid guid_console_display_state @cname("GUID_CONSOLE_DISPLAY_STATE");
extern Guid guid_allow_display_required @cname("GUID_ALLOW_DISPLAY_REQUIRED");
extern Guid guid_video_console_lock_timeout @cname("GUID_VIDEO_CONSOLE_LOCK_TIMEOUT");
extern Guid guid_adaptive_power_behavior_subgroup @cname("GUID_ADAPTIVE_POWER_BEHAVIOR_SUBGROUP");
extern Guid guid_non_adaptive_input_timeout @cname("GUID_NON_ADAPTIVE_INPUT_TIMEOUT");
extern Guid guid_disk_subgroup @cname("GUID_DISK_SUBGROUP");
extern Guid guid_disk_powerdown_timeout @cname("GUID_DISK_POWERDOWN_TIMEOUT");
extern Guid guid_disk_idle_timeout @cname("GUID_DISK_IDLE_TIMEOUT");
extern Guid guid_disk_burst_ignore_threshold @cname("GUID_DISK_BURST_IGNORE_THRESHOLD");
extern Guid guid_disk_adaptive_powerdown @cname("GUID_DISK_ADAPTIVE_POWERDOWN");
extern Guid guid_sleep_subgroup @cname("GUID_SLEEP_SUBGROUP");
extern Guid guid_sleep_idle_threshold @cname("GUID_SLEEP_IDLE_THRESHOLD");
extern Guid guid_standby_timeout @cname("GUID_STANDBY_TIMEOUT");
extern Guid guid_unattend_sleep_timeout @cname("GUID_UNATTEND_SLEEP_TIMEOUT");
extern Guid guid_hibernate_timeout @cname("GUID_HIBERNATE_TIMEOUT");
extern Guid guid_hibernate_fasts4_policy @cname("GUID_HIBERNATE_FASTS4_POLICY");
extern Guid guid_critical_power_transition @cname("GUID_CRITICAL_POWER_TRANSITION");
extern Guid guid_system_awaymode @cname("GUID_SYSTEM_AWAYMODE");
extern Guid guid_allow_awaymode @cname("GUID_ALLOW_AWAYMODE");
extern Guid guid_allow_standby_states @cname("GUID_ALLOW_STANDBY_STATES");
extern Guid guid_allow_rtc_wake @cname("GUID_ALLOW_RTC_WAKE");
extern Guid guid_allow_system_required @cname("GUID_ALLOW_SYSTEM_REQUIRED");
extern Guid guid_system_button_subgroup @cname("GUID_SYSTEM_BUTTON_SUBGROUP");
extern Guid guid_powerbutton_action @cname("GUID_POWERBUTTON_ACTION");
extern Guid guid_sleepbutton_action @cname("GUID_SLEEPBUTTON_ACTION");
extern Guid guid_userinterfacebutton_action @cname("GUID_USERINTERFACEBUTTON_ACTION");
extern Guid guid_lidclose_action @cname("GUID_LIDCLOSE_ACTION");
extern Guid guid_lidopen_powerstate @cname("GUID_LIDOPEN_POWERSTATE");
extern Guid guid_battery_subgroup @cname("GUID_BATTERY_SUBGROUP");
extern Guid guid_battery_discharge_action_0 @cname("GUID_BATTERY_DISCHARGE_ACTION_0");
extern Guid guid_battery_discharge_level_0 @cname("GUID_BATTERY_DISCHARGE_LEVEL_0");
extern Guid guid_battery_discharge_flags_0 @cname("GUID_BATTERY_DISCHARGE_FLAGS_0");
extern Guid guid_battery_discharge_action_1 @cname("GUID_BATTERY_DISCHARGE_ACTION_1");
extern Guid guid_battery_discharge_level_1 @cname("GUID_BATTERY_DISCHARGE_LEVEL_1");
extern Guid guid_battery_discharge_flags_1 @cname("GUID_BATTERY_DISCHARGE_FLAGS_1");
extern Guid guid_battery_discharge_action_2 @cname("GUID_BATTERY_DISCHARGE_ACTION_2");
extern Guid guid_battery_discharge_level_2 @cname("GUID_BATTERY_DISCHARGE_LEVEL_2");
extern Guid guid_battery_discharge_flags_2 @cname("GUID_BATTERY_DISCHARGE_FLAGS_2");
extern Guid guid_battery_discharge_action_3 @cname("GUID_BATTERY_DISCHARGE_ACTION_3");
extern Guid guid_battery_discharge_level_3 @cname("GUID_BATTERY_DISCHARGE_LEVEL_3");
extern Guid guid_battery_discharge_flags_3 @cname("GUID_BATTERY_DISCHARGE_FLAGS_3");
extern Guid guid_processor_settings_subgroup @cname("GUID_PROCESSOR_SETTINGS_SUBGROUP");
extern Guid guid_processor_throttle_policy @cname("GUID_PROCESSOR_THROTTLE_POLICY");
extern Guid guid_processor_throttle_maximum @cname("GUID_PROCESSOR_THROTTLE_MAXIMUM");
extern Guid guid_processor_throttle_minimum @cname("GUID_PROCESSOR_THROTTLE_MINIMUM");
extern Guid guid_processor_allow_throttling @cname("GUID_PROCESSOR_ALLOW_THROTTLING");
extern Guid guid_processor_idlestate_policy @cname("GUID_PROCESSOR_IDLESTATE_POLICY");
extern Guid guid_processor_perfstate_policy @cname("GUID_PROCESSOR_PERFSTATE_POLICY");
extern Guid guid_processor_perf_increase_threshold @cname("GUID_PROCESSOR_PERF_INCREASE_THRESHOLD");
extern Guid guid_processor_perf_decrease_threshold @cname("GUID_PROCESSOR_PERF_DECREASE_THRESHOLD");
extern Guid guid_processor_perf_increase_policy @cname("GUID_PROCESSOR_PERF_INCREASE_POLICY");
extern Guid guid_processor_perf_decrease_policy @cname("GUID_PROCESSOR_PERF_DECREASE_POLICY");
extern Guid guid_processor_perf_increase_time @cname("GUID_PROCESSOR_PERF_INCREASE_TIME");
extern Guid guid_processor_perf_decrease_time @cname("GUID_PROCESSOR_PERF_DECREASE_TIME");
extern Guid guid_processor_perf_time_check @cname("GUID_PROCESSOR_PERF_TIME_CHECK");
extern Guid guid_processor_perf_boost_policy @cname("GUID_PROCESSOR_PERF_BOOST_POLICY");
extern Guid guid_processor_perf_boost_mode @cname("GUID_PROCESSOR_PERF_BOOST_MODE");
extern Guid guid_processor_idle_allow_scaling @cname("GUID_PROCESSOR_IDLE_ALLOW_SCALING");
extern Guid guid_processor_idle_disable @cname("GUID_PROCESSOR_IDLE_DISABLE");
extern Guid guid_processor_idle_state_maximum @cname("GUID_PROCESSOR_IDLE_STATE_MAXIMUM");
extern Guid guid_processor_idle_time_check @cname("GUID_PROCESSOR_IDLE_TIME_CHECK");
extern Guid guid_processor_idle_demote_threshold @cname("GUID_PROCESSOR_IDLE_DEMOTE_THRESHOLD");
extern Guid guid_processor_idle_promote_threshold @cname("GUID_PROCESSOR_IDLE_PROMOTE_THRESHOLD");
extern Guid guid_processor_core_parking_increase_threshold @cname("GUID_PROCESSOR_CORE_PARKING_INCREASE_THRESHOLD");
extern Guid guid_processor_core_parking_decrease_threshold @cname("GUID_PROCESSOR_CORE_PARKING_DECREASE_THRESHOLD");
extern Guid guid_processor_core_parking_increase_policy @cname("GUID_PROCESSOR_CORE_PARKING_INCREASE_POLICY");
extern Guid guid_processor_core_parking_decrease_policy @cname("GUID_PROCESSOR_CORE_PARKING_DECREASE_POLICY");
extern Guid guid_processor_core_parking_max_cores @cname("GUID_PROCESSOR_CORE_PARKING_MAX_CORES");
extern Guid guid_processor_core_parking_min_cores @cname("GUID_PROCESSOR_CORE_PARKING_MIN_CORES");
extern Guid guid_processor_core_parking_increase_time @cname("GUID_PROCESSOR_CORE_PARKING_INCREASE_TIME");
extern Guid guid_processor_core_parking_decrease_time @cname("GUID_PROCESSOR_CORE_PARKING_DECREASE_TIME");
extern Guid guid_processor_core_parking_affinity_history_decrease_factor @cname("GUID_PROCESSOR_CORE_PARKING_AFFINITY_HISTORY_DECREASE_FACTOR");
extern Guid guid_processor_core_parking_affinity_history_threshold @cname("GUID_PROCESSOR_CORE_PARKING_AFFINITY_HISTORY_THRESHOLD");
extern Guid guid_processor_core_parking_affinity_weighting @cname("GUID_PROCESSOR_CORE_PARKING_AFFINITY_WEIGHTING");
extern Guid guid_processor_core_parking_over_utilization_history_decrease_factor @cname("GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_HISTORY_DECREASE_FACTOR");
extern Guid guid_processor_core_parking_over_utilization_history_threshold @cname("GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_HISTORY_THRESHOLD");
extern Guid guid_processor_core_parking_over_utilization_weighting @cname("GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_WEIGHTING");
extern Guid guid_processor_core_parking_over_utilization_threshold @cname("GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_THRESHOLD");
extern Guid guid_processor_parking_core_override @cname("GUID_PROCESSOR_PARKING_CORE_OVERRIDE");
extern Guid guid_processor_parking_perf_state @cname("GUID_PROCESSOR_PARKING_PERF_STATE");
extern Guid guid_processor_parking_concurrency_threshold @cname("GUID_PROCESSOR_PARKING_CONCURRENCY_THRESHOLD");
extern Guid guid_processor_parking_headroom_threshold @cname("GUID_PROCESSOR_PARKING_HEADROOM_THRESHOLD");
extern Guid guid_processor_perf_history @cname("GUID_PROCESSOR_PERF_HISTORY");
extern Guid guid_processor_perf_latency_hint @cname("GUID_PROCESSOR_PERF_LATENCY_HINT");
extern Guid guid_processor_distribute_utility @cname("GUID_PROCESSOR_DISTRIBUTE_UTILITY");
extern Guid guid_system_cooling_policy @cname("GUID_SYSTEM_COOLING_POLICY");
extern Guid guid_lock_console_on_wake @cname("GUID_LOCK_CONSOLE_ON_WAKE");
extern Guid guid_device_idle_policy @cname("GUID_DEVICE_IDLE_POLICY");
extern Guid guid_acdc_power_source @cname("GUID_ACDC_POWER_SOURCE");
extern Guid guid_lidswitch_state_change @cname("GUID_LIDSWITCH_STATE_CHANGE");
extern Guid guid_battery_percentage_remaining @cname("GUID_BATTERY_PERCENTAGE_REMAINING");
extern Guid guid_global_user_presence @cname("GUID_GLOBAL_USER_PRESENCE");
extern Guid guid_session_display_status @cname("GUID_SESSION_DISPLAY_STATUS");
extern Guid guid_session_user_presence @cname("GUID_SESSION_USER_PRESENCE");
extern Guid guid_idle_background_task @cname("GUID_IDLE_BACKGROUND_TASK");
extern Guid guid_background_task_notification @cname("GUID_BACKGROUND_TASK_NOTIFICATION");
extern Guid guid_applaunch_button @cname("GUID_APPLAUNCH_BUTTON");
extern Guid guid_pciexpress_settings_subgroup @cname("GUID_PCIEXPRESS_SETTINGS_SUBGROUP");
extern Guid guid_pciexpress_aspm_policy @cname("GUID_PCIEXPRESS_ASPM_POLICY");
extern Guid guid_enable_switch_forced_shutdown @cname("GUID_ENABLE_SWITCH_FORCED_SHUTDOWN");
extern Guid ppm_perfstate_change_guid @cname("PPM_PERFSTATE_CHANGE_GUID");
extern Guid ppm_perfstate_domain_change_guid @cname("PPM_PERFSTATE_DOMAIN_CHANGE_GUID");
extern Guid ppm_idlestate_change_guid @cname("PPM_IDLESTATE_CHANGE_GUID");
extern Guid ppm_perfstates_data_guid @cname("PPM_PERFSTATES_DATA_GUID");
extern Guid ppm_idlestates_data_guid @cname("PPM_IDLESTATES_DATA_GUID");
extern Guid ppm_idle_accounting_guid @cname("PPM_IDLE_ACCOUNTING_GUID");
extern Guid ppm_idle_accounting_ex_guid @cname("PPM_IDLE_ACCOUNTING_EX_GUID");
extern Guid ppm_thermalconstraint_guid @cname("PPM_THERMALCONSTRAINT_GUID");
extern Guid ppm_perfmon_perfstate_guid @cname("PPM_PERFMON_PERFSTATE_GUID");
extern Guid ppm_thermal_policy_change_guid @cname("PPM_THERMAL_POLICY_CHANGE_GUID");

