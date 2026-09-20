module vmcs_fields;

// ============================================================
// 16-Bit Fields
// ============================================================

// 16-Bit Guest-State Fields
const ulong GUEST_ES_SELECTOR   = 0x0800;
const ulong GUEST_CS_SELECTOR   = 0x0802;
const ulong GUEST_SS_SELECTOR   = 0x0804;
const ulong GUEST_DS_SELECTOR   = 0x0806;
const ulong GUEST_FS_SELECTOR   = 0x0808;
const ulong GUEST_GS_SELECTOR   = 0x080A;
const ulong GUEST_LDTR_SELECTOR = 0x080C;
const ulong GUEST_TR_SELECTOR   = 0x080E;

// 16-Bit Host-State Fields
const ulong HOST_ES_SELECTOR = 0x0C00;
const ulong HOST_CS_SELECTOR = 0x0C02;
const ulong HOST_SS_SELECTOR = 0x0C04;
const ulong HOST_DS_SELECTOR = 0x0C06;
const ulong HOST_FS_SELECTOR = 0x0C08;
const ulong HOST_GS_SELECTOR = 0x0C0A;
const ulong HOST_TR_SELECTOR = 0x0C0C;

// ============================================================
// 64-Bit Fields
// ============================================================

// 64-Bit Control Fields
const ulong IO_BITMAP_A                = 0x2000;
const ulong IO_BITMAP_B                = 0x2002;
const ulong MSR_BITMAP                 = 0x2004;
const ulong VM_EXIT_MSR_STORE_ADDR     = 0x2006;
const ulong VM_EXIT_MSR_LOAD_ADDR      = 0x2008;
const ulong VM_ENTRY_MSR_LOAD_ADDR     = 0x200A;
const ulong EPT_POINTER                = 0x201A;

// 64-Bit Guest-State Fields
const ulong VMCS_LINK_POINTER      = 0x2800;
const ulong GUEST_IA32_DEBUGCTL    = 0x2802;
const ulong GUEST_IA32_EFER        = 0x2806;

// ============================================================
// 32-Bit Fields
// ============================================================

// 32-Bit Control Fields
const ulong PIN_BASED_VM_EXEC_CONTROL   = 0x4000;
const ulong CPU_BASED_VM_EXEC_CONTROL   = 0x4002;
const ulong EXCEPTION_BITMAP            = 0x4004;
const ulong VM_EXIT_CONTROLS            = 0x400C;
const ulong VM_EXIT_MSR_STORE_COUNT     = 0x400E;
const ulong VM_EXIT_MSR_LOAD_COUNT      = 0x4010;
const ulong VM_ENTRY_CONTROLS           = 0x4012;
const ulong VM_ENTRY_MSR_LOAD_COUNT     = 0x4014;
const ulong VM_ENTRY_INTR_INFO_FIELD    = 0x4016;
const ulong VM_ENTRY_EXCEPTION_ERROR_CODE = 0x4018;
const ulong VM_ENTRY_INSTRUCTION_LEN    = 0x401A;
const ulong SECONDARY_VM_EXEC_CONTROL   = 0x401E;

// 32-Bit Read-Only Data Fields
const ulong VM_INSTRUCTION_ERROR  = 0x4400;
const ulong VM_EXIT_REASON        = 0x4402;
const ulong VM_EXIT_INTR_INFO     = 0x4404;
const ulong VM_EXIT_INSTRUCTION_LEN = 0x440C;

// 32-Bit Guest-State Fields
const ulong GUEST_ES_LIMIT       = 0x4800;
const ulong GUEST_CS_LIMIT       = 0x4802;
const ulong GUEST_SS_LIMIT       = 0x4804;
const ulong GUEST_DS_LIMIT       = 0x4806;
const ulong GUEST_FS_LIMIT       = 0x4808;
const ulong GUEST_GS_LIMIT       = 0x480A;
const ulong GUEST_LDTR_LIMIT     = 0x480C;
const ulong GUEST_TR_LIMIT       = 0x480E;
const ulong GUEST_GDTR_LIMIT     = 0x4810;
const ulong GUEST_IDTR_LIMIT     = 0x4812;
const ulong GUEST_ES_AR_BYTES    = 0x4814;
const ulong GUEST_CS_AR_BYTES    = 0x4816;
const ulong GUEST_SS_AR_BYTES    = 0x4818;
const ulong GUEST_DS_AR_BYTES    = 0x481A;
const ulong GUEST_FS_AR_BYTES    = 0x481C;
const ulong GUEST_GS_AR_BYTES    = 0x481E;
const ulong GUEST_LDTR_AR_BYTES  = 0x4820;
const ulong GUEST_TR_AR_BYTES    = 0x4822;
const ulong GUEST_INTERRUPTIBILITY_INFO = 0x4824;
const ulong GUEST_ACTIVITY_STATE = 0x4826;
const ulong GUEST_SYSENTER_CS    = 0x482A;

// 32-Bit Host-State Field
const ulong HOST_IA32_SYSENTER_CS = 0x4C00;

// ============================================================
// Natural-Width Fields (64-bit in long mode)
// ============================================================

// Natural-Width Control Fields
const ulong CR0_GUEST_HOST_MASK  = 0x6000;
const ulong CR4_GUEST_HOST_MASK  = 0x6002;
const ulong CR0_READ_SHADOW      = 0x6004;
const ulong CR4_READ_SHADOW      = 0x6006;

// Natural-Width Read-Only Data Fields
const ulong EXIT_QUALIFICATION   = 0x6400;
const ulong GUEST_LINEAR_ADDRESS = 0x640A;

// Natural-Width Guest-State Fields
const ulong GUEST_CR0            = 0x6800;
const ulong GUEST_CR3            = 0x6802;
const ulong GUEST_CR4            = 0x6804;
const ulong GUEST_ES_BASE        = 0x6806;
const ulong GUEST_CS_BASE        = 0x6808;
const ulong GUEST_SS_BASE        = 0x680A;
const ulong GUEST_DS_BASE        = 0x680C;
const ulong GUEST_FS_BASE        = 0x680E;
const ulong GUEST_GS_BASE        = 0x6810;
const ulong GUEST_LDTR_BASE      = 0x6812;
const ulong GUEST_TR_BASE        = 0x6814;
const ulong GUEST_GDTR_BASE      = 0x6816;
const ulong GUEST_IDTR_BASE      = 0x6818;
const ulong GUEST_DR7            = 0x681A;
const ulong GUEST_RSP            = 0x681C;
const ulong GUEST_RIP            = 0x681E;
const ulong GUEST_RFLAGS         = 0x6820;
const ulong GUEST_SYSENTER_ESP   = 0x6824;
const ulong GUEST_SYSENTER_EIP   = 0x6826;

// Natural-Width Host-State Fields
const ulong HOST_CR0             = 0x6C00;
const ulong HOST_CR3             = 0x6C02;
const ulong HOST_CR4             = 0x6C04;
const ulong HOST_FS_BASE         = 0x6C06;
const ulong HOST_GS_BASE         = 0x6C08;
const ulong HOST_TR_BASE         = 0x6C0A;
const ulong HOST_GDTR_BASE       = 0x6C0C;
const ulong HOST_IDTR_BASE       = 0x6C0E;
const ulong HOST_IA32_SYSENTER_ESP = 0x6C10;
const ulong HOST_IA32_SYSENTER_EIP = 0x6C12;
const ulong HOST_RSP             = 0x6C14;
const ulong HOST_RIP             = 0x6C16;