module assembly;

struct CpuId {
	uint eax;
	uint ebx;
	uint ecx;
	uint edx;
}
extern fn void get_cpuid(uint leaf, uint subleaf, CpuId* regs) @cname("get_cpuid");

// --- Control registers ---
extern fn ulong readcr0() @cname("readcr0");
extern fn ulong readcr3() @cname("readcr3");
extern fn ulong readcr4() @cname("readcr4");
extern fn void writecr0(ulong value) @cname("writecr0");
extern fn void writecr3(ulong value) @cname("writecr3");
extern fn void writecr4(ulong value) @cname("writecr4");

// --- MSR ---
extern fn ulong readmsr(uint msr) @cname("readmsr");
extern fn void writemsr(uint msr, ulong value) @cname("writemsr");

// --- Segment registers / descriptor tables ---
extern fn ushort readcs() @cname("readcs");
extern fn ushort readss() @cname("readss");
extern fn ushort readds() @cname("readds");
extern fn ushort reades() @cname("reades");
extern fn ushort readfs() @cname("readfs");
extern fn ushort readgs() @cname("readgs");
extern fn ushort readtr() @cname("readtr");

// --- VMX primitives ---
extern fn bool vmx_on(ulong* phys_addr) @cname("vmx_on");
extern fn bool vm_clear(ulong* phys_addr) @cname("vm_clear");
extern fn bool vm_ptrld(ulong* phys_addr) @cname("vm_ptrld");
extern fn bool vm_read(ulong field, ulong* value) @cname("vm_read");
extern fn bool vm_write(ulong field, ulong value) @cname("vm_write");
extern fn bool vm_launch() @cname("vm_launch");
extern fn bool vm_resume() @cname("vm_resume");
extern fn bool vmx_off() @cname("vmx_off");

extern fn ulong readdr7() @cname("readdr7");
extern fn void writedr7(ulong value) @cname("writedr7");

extern fn ulong readrflags() @cname("readrflags");
extern fn void writerflags(ulong value) @cname("write_rflags");
extern fn void write_rflags(ulong value) @cname("write_rflags");

extern fn ulong readrip() @cname("readrip");
extern fn ulong readrsp() @cname("readrsp");

extern fn ulong readgdtbase() @cname("readgdtbase");
extern fn ulong readgdtlimit() @cname("readgdtlimit");
extern fn ulong readidtbase() @cname("readidtbase");
extern fn ulong readidtlimit() @cname("readidtlimit");

// exit handler
extern fn void exit_handler_entry() @cname("exit_handler_entry");
extern fn ulong get_exit_handler_address() @cname("get_exit_handler_address");

extern fn void read_tsc() @cname("read_tsc");