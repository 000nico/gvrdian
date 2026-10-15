module assembly;

struct CpuId {
	uint eax;
	uint ebx;
	uint ecx;
	uint edx;
}
extern fn void get_cpuid(uint leaf, uint subleaf, CpuId* regs) @cname("get_cpuid");

// --- Control registers ---
extern fn ulong read_cr0() @cname("readcr0");
extern fn ulong read_cr3() @cname("readcr3");
extern fn ulong read_cr4() @cname("readcr4");
extern fn void write_cr0(ulong value) @cname("writecr0");
extern fn void write_cr3(ulong value) @cname("writecr3");
extern fn void write_cr4(ulong value) @cname("writecr4");

// --- MSR ---
extern fn ulong read_msr(uint msr) @cname("readmsr");
extern fn void write_msr(uint msr, ulong value) @cname("writemsr");

// --- Segment registers / descriptor tables ---
extern fn ushort read_cs() @cname("readcs");
extern fn ushort read_ss() @cname("readss");
extern fn ushort read_ds() @cname("readds");
extern fn ushort read_es() @cname("reades");
extern fn ushort read_fs() @cname("readfs");
extern fn ushort read_gs() @cname("readgs");
extern fn ushort read_tr() @cname("readtr");

// --- VMX primitives ---
extern fn bool vmx_on(ulong* phys_addr) @cname("vmx_on");
extern fn bool vm_clear(ulong* phys_addr) @cname("vm_clear");
extern fn bool vm_ptrld(ulong* phys_addr) @cname("vm_ptrld");
extern fn bool vm_read(ulong field, ulong* value) @cname("vm_read");
extern fn bool vm_write(ulong field, ulong value) @cname("vm_write");
extern fn bool vm_launch() @cname("vm_launch");
extern fn bool vm_resume() @cname("vm_resume");
extern fn bool vmx_off() @cname("vmx_off");

extern fn ulong read_dr7() @cname("readdr7");
extern fn void write_dr7(ulong value) @cname("writedr7");

extern fn ulong read_rflags() @cname("readrflags");
extern fn void write_rflags(ulong value) @cname("write_rflags");

extern fn ulong read_rip() @cname("readrip");
extern fn ulong read_rsp() @cname("readrsp");

extern fn ulong read_gdt_base() @cname("readgdtbase");
extern fn ulong read_gdt_limit() @cname("readgdtlimit");
extern fn ulong read_idt_base() @cname("readidtbase");
extern fn ulong read_idt_limit() @cname("readidtlimit");

// exit handler
extern fn void exit_handler_entry() @cname("exit_handler_entry");
extern fn ulong get_exit_handler_address() @cname("get_exit_handler_address");

extern fn void read_tsc() @cname("read_tsc");
