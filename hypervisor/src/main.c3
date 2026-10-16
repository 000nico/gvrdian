module gvrdian;

import wdm;
import pre_vmxon;
import vmcs;
import assembly;
import communication_setup;
import global;

const wdm::NtStatus STATUS_SUCCESS = 0;
const wdm::NtStatus STATUS_FAILED  = (wdm::NtStatus)0xC0000001;

fn void cleanup_device(wdm::DriverObject_t* driver_object)
{
    wdm::UnicodeString_t symbolic_link;
    wdm::rtl_init_unicode_string(&symbolic_link, string::@wstring("\\DosDevices\\gvrdiandevice"));
    wdm::io_delete_symbolic_link(&symbolic_link);

    if (driver_object.device_object != null) {
        wdm::io_delete_device(driver_object.device_object);
    }
}

fn void driver_unload(wdm::DriverObject_t* driver_object) @export("DriverUnload")
{
    wdm::UnicodeString_t symbolic_link;

    wdm::rtl_init_unicode_string(&symbolic_link, string::@wstring("\\DosDevices\\gvrdiandevice"));

    wdm::io_delete_symbolic_link(&symbolic_link);
    wdm::io_delete_device(driver_object.device_object);

	assembly::vmx_off();
    wdm::dbg_print("driver unloaded\n");
}

fn wdm::NtStatus driver_entry(wdm::DriverObject_t* driver_object, wdm::PUnicodeString_t registry_path) @export("DriverEntry")
{
	global::driver_object = driver_object;
	driver_object.major_function[wdm::IRP_MJ_CREATE] = &communication_setup::create_close;
	driver_object.major_function[wdm::IRP_MJ_CLOSE]  = &communication_setup::create_close;
	driver_object.driver_unload = &driver_unload;
	
	wdm::NtStatus status = communication_setup::setup_device(driver_object);
    if (status != wdm::STATUS_SUCCESS) {
        wdm::dbg_print("failed to create device or symbolic link\n");
        cleanup_device(driver_object);
        return status;
    }

    // pre-vmxon
    if(!pre_vmxon::is_vmx_supported()) {
		wdm::dbg_print("vmx not supported\n");
		cleanup_device(driver_object);
		return STATUS_FAILED;
	}

    pre_vmxon::enable_vmx_operation();

    void* vmxon_virtual = pre_vmxon::allocate_vmxon_region();
    if (vmxon_virtual == null) {
        wdm::dbg_print("failed to allocate vmxon region\n");
        cleanup_device(driver_object);
        return STATUS_FAILED;
    }

	ulong vmx_basic = assembly::read_msr(0x480);
    uint vmx_revision_id = (uint)(vmx_basic & 0x7FFFFFFF);

    *((uint*)vmxon_virtual) = vmx_revision_id;

    ulong vmxon_physical = (ulong)wdm::mm_get_physical_address(vmxon_virtual).quad_part;

    // vmxon
    if (!assembly::vmx_on(&vmxon_physical)) {
        wdm::dbg_print("vmxon failed\n");
        cleanup_device(driver_object);
        return STATUS_FAILED;
    }
    wdm::dbg_print("vmxon success\n");

	// vmcs
	vmcs::setup_vmcs();
	wdm::dbg_print("vmcs setup\n");
	
	// launch
    if (!assembly::vm_launch()) {
        wdm::dbg_print("vmlaunch failed\n");
        cleanup_device(driver_object);
        return STATUS_FAILED;
    }

	wdm::dbg_print("vm launch\n");

    return STATUS_SUCCESS;
}
