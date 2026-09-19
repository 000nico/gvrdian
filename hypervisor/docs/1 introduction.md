Virtual Machine Monitors (VMM): Acts as a host and has full controlf of processors. Present guest software with an abstraction of virtual processor. Allowws it to execute directly on logical processor. Can do selective control of resources and phyisical memory
Guest software: Each VM is a guest software enviroment that supports an OS and appliocation software. Independent to each other

Support for virtualization is provided by a form of processor opreation called VMX Operation. There are two kinds
    - VMX Root operation
    - VMX non-root operation

Transitinos between these are called VMX Transitions
    - VM Entries: VMX Root -> Vmx non-root
    - VM Exit:    VMX non-root -> VMX Root

Processor behavior in non-root its limited and some instructions triger a VM Exit

Life cycle
Driver enters VMX operation by executing VMXON
Using VM entries, a VMM enter guests into virtual machine. The VMM effects a VM Entry using VMLAUNCH and VMRESUME. It regains control using VM Exits
VM Exits transfer control to an entry point specified by the VMM (exit handler). The VMM handles the VM Exit and return to the Virtual Machine using a VM Entry
Eventually the VMM may decide to shutdown and it does so by using VMXOFF operation

Virtual-Machine Control Structure
Both VMX non-root and VMX transitions are managed by this data structure
Access to VMCS is managed through VMCS Pointer, set with VMPTRST and readen by VMPTRLD (VMPTRLD activates it in a core)
Its configured through VMREAD, VMWRITE and VMCLEAR (VMCLEAR saves the states of VMCS in memory, marks the VMCS as "inactive". Mandatory before VMPTRLD or VMLAUNCH)
VMM could use different VMCS for every VM. not our use case