@echo off
setlocal EnableDelayedExpansion

set "ML64=C:\Program Files\Microsoft Visual Studio\18\Community\VC\Tools\MSVC\14.51.36231\bin\Hostx64\x64\ml64.exe"
set "LINKER=C:\Program Files\Microsoft Visual Studio\18\Community\VC\Tools\MSVC\14.51.36231\bin\Hostx64\x64\link.exe"
set "C3C=c3c"
set "MAKECERT=C:\Program Files (x86)\Windows Kits\10\bin\10.0.28000.0\x64\MakeCert.exe"
set "SIGNTOOL=C:\Program Files (x86)\Windows Kits\10\bin\10.0.28000.0\x64\signtool.exe"
set "C3_OBJ_DIR=build\obj\windows-x64"
set "ROOT=%~dp0"
set "BUILD=%ROOT%build"
set "ASM_DIR=%ROOT%asm"

if not exist "%BUILD%" mkdir "%BUILD%"

echo [1/4] Assembling MASM stubs...
"%ML64%" /nologo /c /Fo"%BUILD%\getters.obj" "%ASM_DIR%\getters.asm"
if errorlevel 1 ( echo ERROR: getters.asm failed & goto :error )
"%ML64%" /nologo /c /Fo"%BUILD%\setters.obj" "%ASM_DIR%\setters.asm"
if errorlevel 1 ( echo ERROR: setters.asm failed & goto :error )
"%ML64%" /nologo /c /Fo"%BUILD%\vmx.obj" "%ASM_DIR%\vmx.asm"
if errorlevel 1 ( echo ERROR: vmx.asm failed & goto :error )

echo [2/4] Compiling C3 sources...
"%C3C%" build
if errorlevel 1 ( echo ERROR: C3 compilation failed & goto :error )

set "RSP=%BUILD%\link.rsp"
(echo /OUT:"%BUILD%\gvrdian.sys")> "%RSP%"
(echo /NODEFAULTLIB)>> "%RSP%"
(echo /SUBSYSTEM:NATIVE)>> "%RSP%"
(echo /DRIVER)>> "%RSP%"
(echo /ENTRY:DriverEntry)>> "%RSP%"
(echo /ALIGN:0x1000)>> "%RSP%"
(echo /MERGE:.rdata=.text)>> "%RSP%"
(echo /MACHINE:X64)>> "%RSP%"
(echo /LIBPATH:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.28000.0\km\x64")>> "%RSP%"
(echo ntoskrnl.lib)>> "%RSP%"
(echo hal.lib)>> "%RSP%"
(echo BufferOverflowK.lib)>> "%RSP%"
(echo libcntpr.lib)>> "%RSP%"
(echo wdm.lib)>> "%RSP%"
(echo "%BUILD%\getters.obj")>> "%RSP%"
(echo "%BUILD%\setters.obj")>> "%RSP%"
(echo "%BUILD%\vmx.obj")>> "%RSP%"
for %%f in ("%C3_OBJ_DIR%\*.obj") do (echo "%ROOT%%%f")>> "%RSP%"

echo [3/4] Linking gvrdian.sys...
"%LINKER%" /nologo @"%RSP%"
if errorlevel 1 ( echo ERROR: Linking failed & goto :error )

echo [4/4] Test-signing gvrdian.sys...
set "CERT_NAME=gvrdian Test Certificate"
set "CER=%BUILD%\gvrdian_test.cer"
if not exist "%CER%" (
    echo   Creating test certificate...
    "%MAKECERT%" -r -pe -ss My -n "CN=%CERT_NAME%" -eku 1.3.6.1.5.5.7.3.3 -a sha256 "%CER%" >nul
    if errorlevel 1 ( echo ERROR: MakeCert failed & goto :error )
)
"%SIGNTOOL%" sign /a /fd sha256 /n "%CERT_NAME%" "%BUILD%\gvrdian.sys"
if errorlevel 1 ( echo ERROR: SignTool failed & goto :error )

echo.
echo ========================================================
echo  BUILD SUCCESSFUL
echo  Output : %BUILD%\gvrdian.sys
echo  Cert   : %CER%
echo ========================================================
echo.
echo  TO INSTALL CERTIFICATE (Run elevated CMD once):
echo    certutil -addstore "Root" "%CER%"
echo    certutil -addstore "TrustedPublisher" "%CER%"
echo.
echo  TO ENABLE TEST SIGNING (Run elevated CMD, then reboot):
echo    bcdedit /set testsigning on
echo.
goto :eof

:error
echo.
echo  BUILD FAILED
exit /b 1
