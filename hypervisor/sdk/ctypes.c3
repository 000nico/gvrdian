// C3 compatibility types for C interop.
// In C3 0.8.x, CLong and CULong are not built-in keywords.
// On Windows x64: long = 32-bit, unsigned long = 32-bit (MSVC ABI).
module wdm;

alias CLong   = int;    // C 'long' on Windows/MSVC (32-bit)
alias CULong  = uint;   // C 'unsigned long' on Windows/MSVC (32-bit)
alias ZString = char*;  // Null-terminated C string
