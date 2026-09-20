module assembly;

// --- Control registers ---
extern fn ulong readcr0();
extern fn ulong readcr3();
extern fn ulong readcr4();
extern fn void writecr0(ulong value);
extern fn void writecr3(ulong value);
extern fn void writecr4(ulong value);

// --- MSR ---
extern fn ulong readmsr(uint msr);
extern fn void writemsr(uint msr, ulong value);

// --- Segment registers / descriptor tables ---
extern fn ushort readcs();
extern fn ushort readss();
extern fn ushort readds();
extern fn ushort reades();
extern fn ushort readfs();
extern fn ushort readgs();
extern fn ushort readtr();

// --- VMX primitives ---
extern fn bool vmx_on(ulong* phys_addr);
extern fn bool vm_clear(ulong* phys_addr);
extern fn bool vm_ptrld(ulong* phys_addr);
extern fn bool vm_read(ulong field, ulong* value);
extern fn bool vm_write(ulong field, ulong value);
extern fn bool vm_launch();
extern fn bool vm_resume();

extern fn ulong readdr7();
extern fn void writedr7(ulong value);

extern fn ulong readrflags();
extern fn void writerflags(ulong value);

extern fn ulong readrip();
extern fn ulong readrsp();

extern fn ulong readgdtbase();
extern fn ulong readgdtlimit();
extern fn ulong readidtbase();
extern fn ulong readidtlimit();

// exit handler
extern fn void exit_handler_entry();
extern fn ulong get_exit_handler_address();