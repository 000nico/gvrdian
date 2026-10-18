<div align="center">
  
[![architecture](https://img.shields.io/badge/arch-x86__64-orange?style=flat-square&logo=intel&logoColor=white)](https://www.intel.com)
[![vt-x](https://img.shields.io/badge/virtualization-Intel%20VT--x-red?style=flat-square&logo=intel&logoColor=white)](https://en.wikipedia.org/wiki/X86_virtualization)
[![language](https://img.shields.io/badge/language-C3-193549?style=flat-square&logo=c&logoColor=white)](https://c3-lang.org/)
[![platform](https://img.shields.io/badge/platform-Windows-0078D6?style=flat-square&logo=windows&logoColor=white)](https://www.microsoft.com)

**[install](#install) · [architecture](#architecture) · [features](#features) · [docs](docs/) · [contribute](#contribute)**

*blazing fast Type-1 blue pill thin hypervisor.*

</div>

---

## what is gvrdian?

**gvrdian** is an ultra-lightweight, type-1, thin, late-launch hypervisor built in the C3 lang

## Features
### Hooks
- [ ] Hidden syscall hooks via SSDT
- [ ] Hidden kernel inline hooks
- [ ] Hidden pages for guests

### Memory
- [ ] Extended Page Tables (EPT) manipulation and protection

### Exit Handlers 
- [x] `CPUID` interception and handling
- [ ] `VMCALL` communication interface

## Install


```bash
# clone repo
git clone https://github.com/000nico/gvrdian/.git

# compile bot with
./build.bat

# builds located at
/hypervisor/build
/client/build
```

## Requirements

- **Processor**: Intel 64 bits CPU with hardware support for Intel VT-x and Extended Page Tables (EPT).
- **Firmware**: VT-x enabled in BIOS/UEFI settings.
- **Environment**: Windows

## License

Distributed under the MIT License. See [LICENSE](LICENSE) for details.
