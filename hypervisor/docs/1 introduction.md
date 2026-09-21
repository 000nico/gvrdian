## Virtual Machine Monitors (VMM) & Architecture

### Core Concepts
* **Virtual Machine Monitor (VMM):** Acts as the host, possessing full control of the processors. It presents guest software with an abstract virtual processor, allowing it to execute directly on logical processors with selective control over system resources and physical memory.
* **Guest Software:** Each virtual machine (VM) provides a guest environment supporting an operating system and application software, isolated and independent from one another.

### VMX Operation
Processor-level hardware virtualization support is provided via **VMX (Virtual Machine Extensions) Operation**, which consists of two distinct modes:
* **VMX Root Operation:** Used by the VMM/hypervisor, maintaining full control over the hardware.
* **VMX Non-Root Operation:** Used by guest software, where processor behavior is restricted and specific instructions automatically trigger a transition back to the root.

### VMX Transitions
Transitions between VMX root and non-root operations are known as **VMX Transitions**:
* **VM Entries:** Transitions from **VMX Root** to **VMX Non-Root** (entering the guest).
* **VM Exits:** Transitions from **VMX Non-Root** to **VMX Root** (returning control to the VMM via an exit handler).

### Lifecycle Overview
1. **Initialization:** The driver or hypervisor enters VMX operation by executing the `VMXON` instruction.
2. **VM Entry:** The VMM launches or resumes execution inside the guest using `VMLAUNCH` or `VMRESUME`.
3. **VM Exit Handling:** Certain instructions or events trigger a VM Exit, transferring control to a pre-defined exit handler entry point in the VMM.
4. **Resumption / Shutdown:** The VMM processes the exit and returns to the guest via another VM Entry, or eventually shuts down VMX operation using the `VMXOFF` instruction.

### Virtual-Machine Control Structure (VMCS)
Both VMX non-root execution and VMX transitions are managed by the **VMCS** data structure.
* **Pointer Management:** Access to the VMCS is managed through the VMCS pointer, retrieved/stored using `VMPTRST` and loaded/activated on a core using `VMPTRLD`.
* **Configuration & State:** Configured via `VMREAD` and `VMWRITE`. 
* **Clearing:** `VMCLEAR` saves the VMCS state to memory and marks it as "inactive" (mandatory before executing `VMPTRLD` or `VMLAUNCH`).
* *Note:* While a full VMM can use a separate VMCS for every VM, a lean or thin-hypervisor implementation may streamline this approach.
