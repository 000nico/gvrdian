module loader;

import win32;
import std::io;
import global;
import std::os::win32;

fn bool open_driver(win32::Handle* h_driver)
{
    io::printfn("[*] Opening handle to device '%s'...", global::DEVICE_PATH);
    
    *h_driver = win32::file::create_file_w(
        (win32::file::Lpcwstr)global::DEVICE_PATH,
        win32::GENERIC_READ | win32::GENERIC_WRITE,
        win32::FILE_SHARE_READ | win32::FILE_SHARE_WRITE,
        null,
        win32::OPEN_EXISTING,
        win32::FILE_ATTRIBUTE_NORMAL,
        null
    );

    if (*h_driver == win32::INVALID_HANDLE_VALUE)
    {
        uint err = win32::getLastError();
        io::printfn("[-] Failed to open device handle. Error code: %d", err);
        return false;
    }

    io::printfn("[+] Device handle opened successfully: %p", *h_driver);
    return true;
}

fn void load_driver(String driver_name, String driver_path)
{
    io::printfn("[*] Loading driver '%s' from '%s'...", driver_name, driver_path);

    void* scm = svc::open_sc_manager(null, null, win32::SC_MANAGER_ALL_ACCESS);
    if (scm == null)
    {
        uint err = win32::getLastError();
        io::printfn("[-] Failed to open SCM. Error code: %d", err);
        return;
    }
    io::printn("[+] SCM opened successfully.");
    defer svc::close_service_handle(scm);

    void* svc_handle = svc::create_service(
        scm,
        driver_name.ptr,
        driver_name.ptr,
        win32::SERVICE_ALL_ACCESS,
        win32::SERVICE_KERNEL_DRIVER,
        win32::SERVICE_DEMAND_START,
        win32::SERVICE_ERROR_NORMAL,
        driver_path.ptr,
        null, null, null, null, null
    );

    if (svc_handle == null)
    {
        uint err = win32::getLastError();
        io::printfn("[!] CreateService failed (code %d), trying to open existing service...", err);
        svc_handle = svc::open_service(scm, driver_name, win32::SERVICE_ALL_ACCESS);
        if (svc_handle == null)
        {
            err = win32::getLastError();
            io::printfn("[-] OpenService also failed. Error code: %d", err);
            return;
        }
        io::printn("[+] Existing service opened successfully.");
    }
    else
    {
        io::printn("[+] Service created successfully.");
    }
    defer svc::close_service_handle(svc_handle);

    io::printn("[*] Starting service (StartService)...");
    int ok = svc::start_service(svc_handle, 0, null);
    if (ok == 0)
    {
        uint err = win32::getLastError();
        if (err == 1056)
        {
            io::printn("[!] Driver is already running in kernel.");
        }
        else
        {
            io::printfn("[-] StartService failed. Error code: %d", err);
            return;
        }
    }
    else
    {
        io::printn("[+] Driver loaded into kernel successfully.");
    }
}

fn void unload_driver()
{
    io::printfn("[*] Unloading driver '%s'...", global::SERVICE_NAME);

    void* scm = svc::open_sc_manager(null, null, win32::SC_MANAGER_ALL_ACCESS);
    if (scm == null)
    {
        uint err = win32::getLastError();
        io::printfn("[-] Failed to open SCM. Error code: %d", err);
        return;
    }
    io::printn("[+] SCM opened successfully.");
    defer svc::close_service_handle(scm);

    void* svc_handle = svc::open_service(scm, global::SERVICE_NAME, win32::SERVICE_ALL_ACCESS);
    if (svc_handle == null)
    {
        uint err = win32::getLastError();
        io::printfn("[-] Service not found. Error code: %d", err);
        return;
    }
    io::printn("[+] Service found.");
    defer svc::close_service_handle(svc_handle);

    io::printn("[*] Sending SERVICE_CONTROL_STOP...");
    ServiceStatus status;
    int ok = svc::control_service(svc_handle, svc::SERVICE_CONTROL_STOP, &status);
    if (ok == 0)
    {
        uint err = win32::getLastError();
        io::printfn("[!] ControlService failed (code %d), attempting delete anyway...", err);
    }
    else
    {
        io::printn("[+] Stop signal sent successfully.");
    }

    io::printn("[*] Deleting service entry...");
    ok = svc::delete_service(svc_handle);
    if (ok == 0)
    {
        uint err = win32::getLastError();
        io::printfn("[-] DeleteService failed. Error code: %d", err);
        return;
    }

    io::printn("[+] Driver unloaded and service entry removed.");
}