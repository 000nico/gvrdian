module gvrdian;
import wdm;

const wdm::Ntstatus STATUS_SUCCESS = 0;

// Called by the OS when the driver is unloaded.
fn void driver_unload(wdm::DRIVEROBJECT_t* driver_object) @export("DriverUnload")
{
}

// Kernel entry point — called by the I/O manager on driver load.
fn wdm::Ntstatus driver_entry(wdm::DRIVEROBJECT_t* driver_object, wdm::PUNICODESTRING_t registry_path)@export("DriverEntry")
{
    driver_object.driver_unload = &driver_unload;
    return STATUS_SUCCESS;
}
