@echo off
rem Builds the hypervisor + client and links the hypervisor into a test-signed .sys.
rem See build.ps1 for the options (-Clean, -NoSign, -DriverOnly, -CertSubject, -KernelLib).
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0build.ps1" %*
exit /b %ERRORLEVEL%
