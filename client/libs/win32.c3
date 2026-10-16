module win32;

// Type Aliases & Callbacks
alias DummyWin32Handle = void*;
alias Handle = void*;

const CULong GENERIC_READ    = 0x80000000;
const CULong FILE_SHARE_READ   = 0x00000001;
const CULong FILE_SHARE_WRITE  = 0x00000002;
const CULong FILE_SHARE_DELETE = 0x00000004;