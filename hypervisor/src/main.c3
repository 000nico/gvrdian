module gvrdian;

import wdm;
import pre_vmxon;
import vmcs;
import assembly;

const wdm::Ntstatus STATUS_SUCCESS = 0;
const wdm::Ntstatus STATUS_FAILED  = (wdm::Ntstatus)0xC0000001;


fn void driver_unload(wdm::DRIVEROBJECT_t* driver_object) @export("DriverUnload")
{
    wdm::dbg_print("driver unloaded");
}


fn wdm::Ntstatus driver_entry(wdm::DRIVEROBJECT_t* driver_object, wdm::PUNICODESTRING_t registry_path) @export("DriverEntry")
{
    driver_object.driver_unload = &driver_unload;

    // pre-vmxon
    if(!pre_vmxon::isVmxSupported()) {
		wdm::dbg_print("vmx not supported");
		return STATUS_FAILED;
	}

    pre_vmxon::enable_vmx_operation();

    void* vmxon_virtual = pre_vmxon::allocate_vmxon_region();
    if (vmxon_virtual == null) {
        wdm::dbg_print("failed to allocate vmxon region");
        return STATUS_FAILED;
    }
    ulong vmxon_physical = (ulong)wdm::mm_get_physical_address(vmxon_virtual).quad_part;

    // vmxon
    if (!assembly::vmx_on(&vmxon_physical)) {
        wdm::dbg_print("vmxon failed");
        return STATUS_FAILED;
    }
    wdm::dbg_print("vmxon success");

	// vmcs
	vmcs::setup_vmcs();
	wdm::dbg_print("vmcs setup");
	
	// launch
    if (!assembly::vm_launch()) {
        wdm::dbg_print("vmlaunch failed");
        return STATUS_FAILED;
    }
	wdm::dbg_print("vm launch");

    return STATUS_SUCCESS;
}
