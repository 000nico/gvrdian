module vmcs_fields;

// ============================================================
// 16-Bit Control Fields
// ============================================================
const ulong VIRTUAL_PROCESSOR_ID                    = 0x0000; // VPID
const ulong POSTED_INTERRUPT_NOTIFICATION_VECTOR    = 0x0002;
const ulong EPTP_INDEX                              = 0x0004;

// ============================================================
// 16-Bit Guest-State Fields
// ============================================================
const ulong GUEST_ES_SELECTOR                       = 0x0800;
const ulong GUEST_CS_SELECTOR                       = 0x0802;
const ulong GUEST_SS_SELECTOR                       = 0x0804;
const ulong GUEST_DS_SELECTOR                       = 0x0806;
const ulong GUEST_FS_SELECTOR                       = 0x0808;
const ulong GUEST_GS_SELECTOR                       = 0x080A;
const ulong GUEST_LDTR_SELECTOR                     = 0x080C;
const ulong GUEST_TR_SELECTOR                       = 0x080E;

// ============================================================
// 16-Bit Host-State Fields
// ============================================================
const ulong HOST_ES_SELECTOR                        = 0x0C00;
const ulong HOST_CS_SELECTOR                        = 0x0C02;
const ulong HOST_SS_SELECTOR                        = 0x0C04;
const ulong HOST_DS_SELECTOR                        = 0x0C06;
const ulong HOST_FS_SELECTOR                        = 0x0C08;
const ulong HOST_GS_SELECTOR                        = 0x0C0A;
const ulong HOST_TR_SELECTOR                        = 0x0C0C;

// ============================================================
// 64-Bit Control Fields
// ============================================================
const ulong IO_BITMAP_A                             = 0x2000;
const ulong IO_BITMAP_B                             = 0x2002;
const ulong MSR_BITMAP                              = 0x2004;
const ulong VM_EXIT_MSR_STORE_ADDR                  = 0x2006;
const ulong VM_EXIT_MSR_LOAD_ADDR                   = 0x2008;
const ulong VM_ENTRY_MSR_LOAD_ADDR                  = 0x200A;
const ulong TSC_OFFSET                              = 0x2010;
const ulong VIRTUAL_APIC_PAGE_ADDR                  = 0x2012;
const ulong APIC_ACCESS_ADDR                        = 0x2014;
const ulong POSTED_INTERRUPT_DESC_ADDR              = 0x2016;
const ulong EPT_POINTER                             = 0x201A;

// ============================================================
// 64-Bit Read-Only Fields
// ============================================================
const ulong GUEST_PHYSICAL_ADDRESS                  = 0x2400; // EPT violation GPA

// ============================================================
// 64-Bit Guest-State Fields
// ============================================================
const ulong VMCS_LINK_POINTER                       = 0x2800; // siempre 0xFFFFFFFFFFFFFFFF si no usas nested
const ulong GUEST_IA32_DEBUGCTL                     = 0x2802;
const ulong GUEST_IA32_PAT                          = 0x2804; // requiere load IA32_PAT en entry controls (bit 14)
const ulong GUEST_IA32_EFER                         = 0x2806; // requiere load IA32_EFER en entry controls (bit 15)
const ulong GUEST_IA32_PERF_GLOBAL_CTRL             = 0x2808;
const ulong GUEST_PDPTE0                            = 0x280A; // solo si PAE paging sin EPT
const ulong GUEST_PDPTE1                            = 0x280C;
const ulong GUEST_PDPTE2                            = 0x280E;
const ulong GUEST_PDPTE3                            = 0x2810;

// ============================================================
// 64-Bit Host-State Fields
// ============================================================
const ulong HOST_IA32_PAT                           = 0x2C00; // requiere load IA32_PAT en exit controls (bit 19)
const ulong HOST_IA32_EFER                          = 0x2C02; // requiere load IA32_EFER en exit controls (bit 21)
const ulong HOST_IA32_PERF_GLOBAL_CTRL              = 0x2C04;

// ============================================================
// 32-Bit Control Fields
// ============================================================
const ulong PIN_BASED_VM_EXEC_CONTROL               = 0x4000;
const ulong CPU_BASED_VM_EXEC_CONTROL               = 0x4002;
const ulong EXCEPTION_BITMAP                        = 0x4004;
const ulong PAGE_FAULT_ERROR_CODE_MASK              = 0x4006;
const ulong PAGE_FAULT_ERROR_CODE_MATCH             = 0x4008;
const ulong CR3_TARGET_COUNT                        = 0x400A;
const ulong VM_EXIT_CONTROLS                        = 0x400C;
const ulong VM_EXIT_MSR_STORE_COUNT                 = 0x400E;
const ulong VM_EXIT_MSR_LOAD_COUNT                  = 0x4010;
const ulong VM_ENTRY_CONTROLS                       = 0x4012;
const ulong VM_ENTRY_MSR_LOAD_COUNT                 = 0x4014;
const ulong VMENTRY_INTERRUPTION_INFO               = 0x4016; // event injection: valid(31) | type(10:8) | vector(7:0)
const ulong VMENTRY_EXCEPTION_ERROR_CODE            = 0x4018; // error code para exceptions que lo requieren
const ulong VM_ENTRY_INSTRUCTION_LEN               = 0x401A; // para software interrupts/exceptions
const ulong TPR_THRESHOLD                           = 0x401C;
const ulong SECONDARY_VM_EXEC_CONTROL               = 0x401E;

// ============================================================
// 32-Bit Read-Only Fields
// ============================================================
const ulong VM_INSTRUCTION_ERROR                    = 0x4400; // leer si VMLAUNCH/VMRESUME falla (ZF=1)
const ulong VM_EXIT_REASON                          = 0x4402; // bits 15:0 = reason, bit 31 = entry failure
const ulong VM_EXIT_INTR_INFO                       = 0x4404; // excepcion/NMI que causo el exit
const ulong VM_EXIT_INTR_ERROR_CODE                 = 0x4406; // error code de la excepcion (si aplica)
const ulong IDT_VECTORING_INFO_FIELD                = 0x4408; // evento que estaba en delivery cuando ocurrio el exit
const ulong IDT_VECTORING_ERROR_CODE                = 0x440A; // error code de ese evento
const ulong VM_EXIT_INSTRUCTION_LEN                 = 0x440C; // longitud de la instruccion que causo el exit
const ulong VMX_INSTRUCTION_INFO                    = 0x440E; // info adicional de instrucciones VMX (VMREAD, VMWRITE, etc)

// ============================================================
// 32-Bit Guest-State Fields
// ============================================================
const ulong GUEST_ES_LIMIT                          = 0x4800;
const ulong GUEST_CS_LIMIT                          = 0x4802;
const ulong GUEST_SS_LIMIT                          = 0x4804;
const ulong GUEST_DS_LIMIT                          = 0x4806;
const ulong GUEST_FS_LIMIT                          = 0x4808;
const ulong GUEST_GS_LIMIT                          = 0x480A;
const ulong GUEST_LDTR_LIMIT                        = 0x480C;
const ulong GUEST_TR_LIMIT                          = 0x480E;
const ulong GUEST_GDTR_LIMIT                        = 0x4810;
const ulong GUEST_IDTR_LIMIT                        = 0x4812;
const ulong GUEST_ES_AR_BYTES                       = 0x4814;
const ulong GUEST_CS_AR_BYTES                       = 0x4816;
const ulong GUEST_SS_AR_BYTES                       = 0x4818;
const ulong GUEST_DS_AR_BYTES                       = 0x481A;
const ulong GUEST_FS_AR_BYTES                       = 0x481C;
const ulong GUEST_GS_AR_BYTES                       = 0x481E;
const ulong GUEST_LDTR_AR_BYTES                     = 0x4820;
const ulong GUEST_TR_AR_BYTES                       = 0x4822;
const ulong GUEST_INTERRUPTIBILITY_INFO             = 0x4824; // blocking by STI/MOV SS/NMI/SMI
const ulong GUEST_ACTIVITY_STATE                    = 0x4826; // 0=active, 1=HLT, 2=shutdown, 3=wait-for-SIPI
const ulong GUEST_SMBASE                            = 0x4828;
const ulong GUEST_SYSENTER_CS                       = 0x482A;
const ulong GUEST_VMX_PREEMPTION_TIMER_VALUE        = 0x482E;

// ============================================================
// 32-Bit Host-State Fields
// ============================================================
const ulong HOST_IA32_SYSENTER_CS                   = 0x4C00;

// ============================================================
// Natural-Width Control Fields
// ============================================================
const ulong CR0_GUEST_HOST_MASK                     = 0x6000;
const ulong CR4_GUEST_HOST_MASK                     = 0x6002;
const ulong CR0_READ_SHADOW                         = 0x6004;
const ulong CR4_READ_SHADOW                         = 0x6006;
const ulong CR3_TARGET_VALUE_0                      = 0x6008;
const ulong CR3_TARGET_VALUE_1                      = 0x600A;
const ulong CR3_TARGET_VALUE_2                      = 0x600C;
const ulong CR3_TARGET_VALUE_3                      = 0x600E;

// ============================================================
// Natural-Width Read-Only Fields
// ============================================================
const ulong EXIT_QUALIFICATION                      = 0x6400; // exit context (CR number, EPT addr, I/O port, etc)
const ulong IO_RCX                                  = 0x6402; // (INS/OUTS)
const ulong IO_RSI                                  = 0x6404;
const ulong IO_RDI                                  = 0x6406;
const ulong IO_RIP                                  = 0x6408;
const ulong GUEST_LINEAR_ADDRESS                    = 0x640A; // linear address that caused vmexit (EPT, etc)

// ============================================================
// Natural-Width Guest-State Fields
// ============================================================
const ulong GUEST_CR0                               = 0x6800;
const ulong GUEST_CR3                               = 0x6802;
const ulong GUEST_CR4                               = 0x6804;
const ulong GUEST_ES_BASE                           = 0x6806;
const ulong GUEST_CS_BASE                           = 0x6808;
const ulong GUEST_SS_BASE                           = 0x680A;
const ulong GUEST_DS_BASE                           = 0x680C;
const ulong GUEST_FS_BASE                           = 0x680E;
const ulong GUEST_GS_BASE                           = 0x6810;
const ulong GUEST_LDTR_BASE                         = 0x6812;
const ulong GUEST_TR_BASE                           = 0x6814;
const ulong GUEST_GDTR_BASE                         = 0x6816;
const ulong GUEST_IDTR_BASE                         = 0x6818;
const ulong GUEST_DR7                               = 0x681A;
const ulong GUEST_RSP                               = 0x681C;
const ulong GUEST_RIP                               = 0x681E;
const ulong GUEST_RFLAGS                            = 0x6820;
const ulong GUEST_PENDING_DEBUG_EXCEPTIONS          = 0x6822;
const ulong GUEST_SYSENTER_ESP                      = 0x6824;
const ulong GUEST_SYSENTER_EIP                      = 0x6826;

// ============================================================
// Natural-Width Host-State Fields
// ============================================================
const ulong HOST_CR0                                = 0x6C00;
const ulong HOST_CR3                                = 0x6C02;
const ulong HOST_CR4                                = 0x6C04;
const ulong HOST_FS_BASE                            = 0x6C06;
const ulong HOST_GS_BASE                            = 0x6C08;
const ulong HOST_TR_BASE                            = 0x6C0A;
const ulong HOST_GDTR_BASE                          = 0x6C0C;
const ulong HOST_IDTR_BASE                          = 0x6C0E;
const ulong HOST_IA32_SYSENTER_ESP                  = 0x6C10;
const ulong HOST_IA32_SYSENTER_EIP                  = 0x6C12;
const ulong HOST_RSP                                = 0x6C14;
const ulong HOST_RIP                                = 0x6C16;

// ============================================================
// Bits de control utiles (no son field encodings, son valores)
// ============================================================

// Primary processor-based controls (CPU_BASED_VM_EXEC_CONTROL)
const ulong CTRL_TSC_OFFSETTING                     = 1UL << 3;
const ulong CTRL_HLT_EXITING                        = 1UL << 7;
const ulong CTRL_INVLPG_EXITING                     = 1UL << 9;
const ulong CTRL_MWAIT_EXITING                      = 1UL << 10;
const ulong CTRL_RDPMC_EXITING                      = 1UL << 11;
const ulong CTRL_RDTSC_EXITING                      = 1UL << 12;
const ulong CTRL_CR3_LOAD_EXITING                   = 1UL << 15;
const ulong CTRL_CR3_STORE_EXITING                  = 1UL << 16;
const ulong CTRL_CR8_LOAD_EXITING                   = 1UL << 19;
const ulong CTRL_CR8_STORE_EXITING                  = 1UL << 20;
const ulong CTRL_MOV_DR_EXITING                     = 1UL << 23;
const ulong CTRL_UNCONDITIONAL_IO_EXITING           = 1UL << 24;
const ulong CTRL_USE_IO_BITMAPS                     = 1UL << 25;
const ulong CTRL_USE_MSR_BITMAPS                    = 1UL << 28;
const ulong CTRL_MONITOR_EXITING                    = 1UL << 29;
const ulong CTRL_PAUSE_EXITING                      = 1UL << 30;
const ulong CTRL_ACTIVATE_SECONDARY_CONTROLS        = 1UL << 31;

// Secondary processor-based controls (SECONDARY_VM_EXEC_CONTROL)
const ulong CTRL2_VIRTUALIZE_APIC                   = 1UL << 0;
const ulong CTRL2_ENABLE_EPT                        = 1UL << 1;
const ulong CTRL2_DESCRIPTOR_TABLE_EXITING          = 1UL << 2;  // SGDT/SIDT/LGDT/LIDT
const ulong CTRL2_ENABLE_RDTSCP                     = 1UL << 3;
const ulong CTRL2_VIRTUALIZE_X2APIC                 = 1UL << 4;
const ulong CTRL2_ENABLE_VPID                       = 1UL << 5;
const ulong CTRL2_WBINVD_EXITING                    = 1UL << 6;
const ulong CTRL2_UNRESTRICTED_GUEST                = 1UL << 7;
const ulong CTRL2_APIC_REGISTER_VIRTUALIZATION      = 1UL << 8;
const ulong CTRL2_VIRTUAL_INTERRUPT_DELIVERY        = 1UL << 9;
const ulong CTRL2_PAUSE_LOOP_EXITING                = 1UL << 10;
const ulong CTRL2_RDRAND_EXITING                    = 1UL << 11;
const ulong CTRL2_ENABLE_INVPCID                    = 1UL << 12;
const ulong CTRL2_ENABLE_VM_FUNCTIONS               = 1UL << 13;
const ulong CTRL2_VMCS_SHADOWING                    = 1UL << 14;
const ulong CTRL2_RDSEED_EXITING                    = 1UL << 16;
const ulong CTRL2_ENABLE_PML                        = 1UL << 17;
const ulong CTRL2_EPT_VIOLATION_VE                  = 1UL << 18;
const ulong CTRL2_CONCEAL_VMX_FROM_PT               = 1UL << 19;
const ulong CTRL2_ENABLE_XSAVES_XRSTORS             = 1UL << 20;
const ulong CTRL2_TSC_SCALING                       = 1UL << 25;

// Pin-based controls (PIN_BASED_VM_EXEC_CONTROL)
const ulong CTRL_PIN_EXT_INTERRUPT_EXITING          = 1UL << 0;
const ulong CTRL_PIN_NMI_EXITING                    = 1UL << 3;
const ulong CTRL_PIN_VIRTUAL_NMIS                   = 1UL << 5;
const ulong CTRL_PIN_VMX_PREEMPTION_TIMER           = 1UL << 6;
const ulong CTRL_PIN_PROCESS_POSTED_INTERRUPTS      = 1UL << 7;

// VM-exit controls (VM_EXIT_CONTROLS)
const ulong CTRL_EXIT_SAVE_DEBUG_CONTROLS           = 1UL << 2;
const ulong CTRL_EXIT_HOST_ADDR_SPACE_SIZE          = 1UL << 9;  // host en 64-bit, obligatorio
const ulong CTRL_EXIT_LOAD_IA32_PERF_GLOBAL_CTRL    = 1UL << 12;
const ulong CTRL_EXIT_ACKNOWLEDGE_INTERRUPT         = 1UL << 15;
const ulong CTRL_EXIT_SAVE_IA32_PAT                 = 1UL << 18;
const ulong CTRL_EXIT_LOAD_IA32_PAT                 = 1UL << 19;
const ulong CTRL_EXIT_SAVE_IA32_EFER                = 1UL << 20;
const ulong CTRL_EXIT_LOAD_IA32_EFER                = 1UL << 21;
const ulong CTRL_EXIT_SAVE_VMX_PREEMPTION_TIMER     = 1UL << 22;

// VM-entry controls (VM_ENTRY_CONTROLS)
const ulong CTRL_ENTRY_LOAD_DEBUG_CONTROLS          = 1UL << 2;
const ulong CTRL_ENTRY_IA32E_MODE_GUEST             = 1UL << 9;  // guest en 64-bit, obligatorio
const ulong CTRL_ENTRY_ENTRY_TO_SMM                 = 1UL << 10;
const ulong CTRL_ENTRY_LOAD_IA32_PERF_GLOBAL_CTRL   = 1UL << 13;
const ulong CTRL_ENTRY_LOAD_IA32_PAT                = 1UL << 14;
const ulong CTRL_ENTRY_LOAD_IA32_EFER               = 1UL << 15;

// Event injection types (para VMENTRY_INTERRUPTION_INFO bits 10:8)
const ulong INJECT_TYPE_EXTERNAL_INTERRUPT          = 0;
const ulong INJECT_TYPE_NMI                         = 2;
const ulong INJECT_TYPE_HARDWARE_EXCEPTION          = 3;
const ulong INJECT_TYPE_SOFTWARE_INTERRUPT          = 4;
const ulong INJECT_TYPE_PRIVILEGED_SW_EXCEPTION     = 5;
const ulong INJECT_TYPE_SOFTWARE_EXCEPTION          = 6;

// Exception vectors comunes
const ulong VECTOR_DE                               = 0;  // divide error
const ulong VECTOR_DB                               = 1;  // debug
const ulong VECTOR_NMI                              = 2;  // non-maskable interrupt
const ulong VECTOR_BP                               = 3;  // breakpoint (INT3)
const ulong VECTOR_OF                               = 4;  // overflow (INTO)
const ulong VECTOR_BR                               = 5;  // bound range exceeded
const ulong VECTOR_UD                               = 6;  // invalid opcode
const ulong VECTOR_NM                               = 7;  // device not available
const ulong VECTOR_DF                               = 8;  // double fault
const ulong VECTOR_TS                               = 10; // invalid TSS
const ulong VECTOR_NP                               = 11; // segment not present
const ulong VECTOR_SS                               = 12; // stack fault
const ulong VECTOR_GP                               = 13; // general protection
const ulong VECTOR_PF                               = 14; // page fault
const ulong VECTOR_MF                               = 16; // x87 FPU error
const ulong VECTOR_AC                               = 17; // alignment check
const ulong VECTOR_MC                               = 18; // machine check
const ulong VECTOR_XM                               = 19; // SIMD floating-point

// Guest activity states (GUEST_ACTIVITY_STATE)
const ulong ACTIVITY_ACTIVE                         = 0;
const ulong ACTIVITY_HLT                            = 1;
const ulong ACTIVITY_SHUTDOWN                       = 2;
const ulong ACTIVITY_WAIT_FOR_SIPI                  = 3;

// Exit reasons comunes
const ulong EXIT_REASON_EXCEPTION_NMI               = 0;
const ulong EXIT_REASON_EXTERNAL_INTERRUPT          = 1;
const ulong EXIT_REASON_TRIPLE_FAULT                = 2;
const ulong EXIT_REASON_CPUID                       = 10;
const ulong EXIT_REASON_GETSEC                      = 11;
const ulong EXIT_REASON_HLT                         = 12;
const ulong EXIT_REASON_INVD                        = 13;
const ulong EXIT_REASON_INVLPG                      = 14;
const ulong EXIT_REASON_RDTSC                       = 16;
const ulong EXIT_REASON_VMCALL                      = 18;
const ulong EXIT_REASON_VMCLEAR                     = 19;
const ulong EXIT_REASON_VMLAUNCH                    = 20;
const ulong EXIT_REASON_VMPTRLD                     = 21;
const ulong EXIT_REASON_VMPTRST                     = 22;
const ulong EXIT_REASON_VMREAD                      = 23;
const ulong EXIT_REASON_VMRESUME                    = 24;
const ulong EXIT_REASON_VMWRITE                     = 25;
const ulong EXIT_REASON_VMXOFF                      = 26;
const ulong EXIT_REASON_VMXON                       = 27;
const ulong EXIT_REASON_MOV_CR                      = 28;
const ulong EXIT_REASON_MOV_DR                      = 29;
const ulong EXIT_REASON_IO_INSTRUCTION              = 30;
const ulong EXIT_REASON_RDMSR                       = 31;
const ulong EXIT_REASON_WRMSR                       = 32;
const ulong EXIT_REASON_ENTRY_FAIL_GUEST_STATE      = 33;
const ulong EXIT_REASON_ENTRY_FAIL_MSR_LOAD         = 34;
const ulong EXIT_REASON_GDTR_IDTR_ACCESS            = 46;
const ulong EXIT_REASON_LDTR_TR_ACCESS              = 47;
const ulong EXIT_REASON_EPT_VIOLATION               = 48;
const ulong EXIT_REASON_EPT_MISCONFIGURATION        = 49;
const ulong EXIT_REASON_INVEPT                      = 50;
const ulong EXIT_REASON_RDTSCP                      = 51;
const ulong EXIT_REASON_INVVPID                     = 53;
const ulong EXIT_REASON_XSETBV                      = 55;
const ulong EXIT_REASON_SEAMCALL                    = 74;
const ulong EXIT_REASON_TDCALL                      = 77;
