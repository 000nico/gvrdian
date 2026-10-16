module communication_setup;

import wdm;
import std::core::string;

fn wdm::NtStatus setup_device(wdm::DriverObject_t* driver_object) 
{
    wdm::NtStatus status;
    wdm::PDeviceObject_t device_object = null;
    
    wdm::UnicodeString_t device_name;
    wdm::UnicodeString_t symbolic_link;

    wdm::rtl_init_unicode_string(&device_name, std::core::string::@wstring("\\Device\\gvrdiandevice"));
    wdm::rtl_init_unicode_string(&symbolic_link, std::core::string::@wstring("\\DosDevices\\gvrdiandevice"));

    status = wdm::io_create_device(
        driver_object, 
        0, 
        &device_name, 
        wdm::FILE_DEVICE_UNKNOWN, 
        wdm::FILE_DEVICE_SECURE_OPEN, 
        0, 
        &device_object
    );

    if (status != wdm::STATUS_SUCCESS) return status;

    status = wdm::io_create_symbolic_link(&symbolic_link, &device_name);
    if (status != wdm::STATUS_SUCCESS) {
        wdm::io_delete_device(device_object);
        return status;
    }

    return wdm::STATUS_SUCCESS;
}

fn wdm::NtStatus create_close(wdm::PDeviceObject_t device_object, wdm::Pirp irp) 
{
    irp.io_status._field1 = (void*)(ulong)wdm::STATUS_SUCCESS;
    irp.io_status.information = 0;
    wdm::iof_complete_request(irp, wdm::IO_NO_INCREMENT);
    
    return wdm::STATUS_SUCCESS;
}