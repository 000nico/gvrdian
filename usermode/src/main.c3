module usermode;

import win32;
import loader;
import global;
import std::io;

fn void main()
{
    io::printn("[*] Starting driver loader...");

    io::printn("[*] Attempting cleanup of any existing service...");
    loader::unload_driver();

    loader::load_driver(global::SERVICE_NAME.str_view(), global::DRIVER_PATH.str_view());

    win32::Handle h_driver;
    if (!loader::open_driver(&h_driver))
    {
        io::printn("[-] Aborting: could not get device handle.");
        return;
    }
    defer handle::close_handle(h_driver);

    io::printn("[+] Ready to send IOCTLs.");

    io::printn("[*] Cleaning up...");
    loader::unload_driver();
    io::printn("[+] Done.");
}