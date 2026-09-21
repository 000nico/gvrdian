<div align="center">

<img src="assets/banner.png" alt="blue-pill" width="600">

<br><br>

[![license](https://img.shields.io/badge/license-MIT-blue?style=flat-square)](LICENSE)
[![build](https://img.shields.io/github/actions/workflow/status/vmfunc/blue-pill/ci.yml?style=flat-square)](https://github.com/vmfunc/blue-pill/actions)
[![architecture](https://img.shields.io/badge/arch-x86__64-orange?style=flat-square&logo=intel&logoColor=white)](https://www.intel.com)
[![vt-x](https://img.shields.io/badge/virtualization-Intel%20VT--x-red?style=flat-square&logo=intel&logoColor=white)](https://en.wikipedia.org/wiki/X86_virtualization)
[![language](https://img.shields.io/badge/language-C3-193549?style=flat-square&logo=c&logoColor=white)](https://c3-lang.org/)
[![platform](https://img.shields.io/badge/platform-Windows-0078D6?style=flat-square&logo=windows&logoColor=white)](https://www.microsoft.com)

**[install](#install) · [architecture](#architecture) · [features](#features) · [docs](docs/) · [contribute](#contribute)**

*blazing fast Type-1 blue pill thin hypervisor for reverse engineering, callbacks, memory introspection, hooking, among others.*

</div>

---

## Overview

**Gvrdian** is an ultra-lightweight Type-1 hypervisor engineered to run directly on bare metal by taking advantage of Intel VT-x hardware-assisted virtualization. By initializing VMX root and non-root operation modes, it wraps the host operating system on the fly, providing hardware-level isolation, exceptional performance, and minimal footprint

## Features
### Hooks
- [ ] Hidden syscall hooks via SSDT
- [ ] Hidden kernel inline hooks
- [ ] Hidden MSR hooks

### Memory
- [ ] Extended Page Tables (EPT) manipulation and protection

### Spoofing
- [ ] VBS (Virtualization-Based Security) spoofing
- [ ] HVCI (Hypervisor-Protected Code Integrity) spoofing
- [ ] Secure Boot state spoofing

### Exit Handlers 
- [ ] `CPUID` interception and handling
- [ ] `VMCALL` communication interface

### RedPill Mitigations 
- [ ] Comprehensive hypervisor detection vector mitigations

## Architecture

```
+-------------------------------------------------------------+
|                     Virtual Machine (Guest)                 |
+-------------------------------------------------------------+
|              VMX Non-Root Operation (VCPU Context)          |
+-------------------------------------------------------------+
|        Blue Pill Type-1 Thin Hypervisor (VMX Root Mode)     |
+-------------------------------------------------------------+
|           Intel VT-x Hardware / CPU / Memory / EPT          |
+-------------------------------------------------------------+
```

## Install


```bash
# clone repo
git clone https://github.com/000nico/gvrdian/.git

# compile
c3c build usermode
/hypervisor/build
```

## Requirements

- **Processor**: Intel 64 bits CPU with hardware support for Intel VT-x and Extended Page Tables (EPT).
- **Firmware**: VT-x enabled in BIOS/UEFI settings.
- **Environment**: Windows

## License

Distributed under the MIT License. See [LICENSE](LICENSE) for details.
