<#
.SYNOPSIS
    Builds gvrdian and links the hypervisor into a test-signed .sys.

.DESCRIPTION
    Steps performed:
      1. `c3c build` in hypervisor/ -> produces the .obj files (the "gvrdian" target is object-files)
      1b.`c3c build` in client/     -> produces client.exe, linking the Windows CRT statically
                                       ("wincrt": "static") so it needs no CRT DLLs on other PCs
      2. ml64 on asm/*.asm          -> assembles the hand written assembly (VMX, getters, setters, etc)
      3. link /driver               -> links everything into hypervisor\build\gvrdian.sys (Native
                                       subsystem, no CRT: it only imports ntoskrnl.exe)
      4. signtool                   -> signs the .sys with a self-signed test certificate
      5. dumpbin                    -> lists the dependencies of both binaries at the end

    Note about the kernel import library:
      If the WDK is installed the official ntoskrnl.lib is used. Otherwise the script reads the
      exports of the running ntoskrnl.exe and generates its own import library (ntoskrnl.lib).

.EXAMPLE
    .\build.ps1              # build hypervisor + client, link and sign
    .\build.ps1 -DriverOnly  # only the .sys (skip the client build)
    .\build.ps1 -NoSign      # build and link without signing
    .\build.ps1 -Clean       # delete the previous build output before building
#>
[CmdletBinding()]
param(
    [switch]$Clean,
    [switch]$NoSign,
    [switch]$DriverOnly,
    [string]$CertSubject = 'CN=gvrdian Test Signing',
    [string]$KernelLib
)

$ErrorActionPreference = 'Stop'

function Write-Step($msg) { Write-Host "[*] $msg" -ForegroundColor Cyan }
function Write-Ok($msg)   { Write-Host "[ok] $msg" -ForegroundColor Green }
function Fail($msg)       { Write-Host "[error] $msg" -ForegroundColor Red; exit 1 }

# Lists the modules a binary imports and warns if a dynamic CRT is required.
function Show-Imports($path, $dumpbin) {
    if (-not $dumpbin -or -not (Test-Path $path)) { return }
    $mods = @(& $dumpbin /imports $path 2>$null |
              Select-String -Pattern '^\s{4}\S+\.(dll|exe|DLL|EXE)\s*$' |
              ForEach-Object { $_.ToString().Trim() } | Sort-Object -Unique)
    Write-Host ("    {0}: {1}" -f (Split-Path $path -Leaf), $(if ($mods) { $mods -join ', ' } else { '(none)' })) -ForegroundColor DarkGray
    $crt = @($mods | Where-Object { $_ -match '^(ucrt|msvcrt|vcruntime|msvcp|api-ms-win-crt)' })
    if ($crt.Count -gt 0) {
        Write-Host ("[warn] depends on the dynamic CRT: " + ($crt -join ', ')) -ForegroundColor Yellow
    }
}

# ---------------------------------------------------------------- base paths
$Root    = $PSScriptRoot
$HvDir   = Join-Path $Root 'hypervisor'
$ClientDir = Join-Path $Root 'client'
$AsmDir  = Join-Path $HvDir 'asm'
$BuildDir = Join-Path $HvDir 'build'
$ObjDir  = Join-Path $BuildDir 'obj\windows-x64'
$AsmObjDir = Join-Path $BuildDir 'obj\asm'
$SysPath = Join-Path $BuildDir 'gvrdian.sys'
$ExePath = Join-Path $ClientDir 'build\client.exe'

if (-not (Test-Path (Join-Path $HvDir 'project.json'))) {
    Fail "hypervisor\project.json not found (script dir: $Root)"
}

# ---------------------------------------------------------------- locate tools
function Find-C3C {
    $c3c = Get-Command c3c -ErrorAction SilentlyContinue
    if ($c3c) { return $c3c.Source }
    $local = Join-Path $env:LOCALAPPDATA 'c3\c3c.exe'
    if (Test-Path $local) { return $local }
    return $null
}

function Find-MSVCBin {
    $candidates = @()
    $vswhere = Join-Path ${env:ProgramFiles(x86)} 'Microsoft Visual Studio\Installer\vswhere.exe'
    if (Test-Path $vswhere) {
        $inst = & $vswhere -latest -products * -property installationPath 2>$null
        if ($inst) { $candidates += $inst }
    }
    foreach ($base in @("C:\Program Files\Microsoft Visual Studio", "C:\Program Files (x86)\Microsoft Visual Studio")) {
        if (Test-Path $base) {
            $candidates += Get-ChildItem $base -Directory -ErrorAction SilentlyContinue | ForEach-Object { $_.FullName }
        }
    }
    foreach ($root in $candidates) {
        $msvcRoot = Join-Path $root 'VC\Tools\MSVC'
        if (-not (Test-Path $msvcRoot)) { continue }
        $ver = Get-ChildItem $msvcRoot -Directory | Sort-Object Name -Descending | Select-Object -First 1
        $bin = Join-Path $ver.FullName 'bin\Hostx64\x64'
        if ((Test-Path (Join-Path $bin 'link.exe')) -and
            (Test-Path (Join-Path $bin 'ml64.exe')) -and
            (Test-Path (Join-Path $bin 'lib.exe'))) { return $bin }
    }
    return $null
}

function Find-SignTool {
    foreach ($kitsRoot in @("C:\Program Files (x86)\Windows Kits\10\bin", "C:\Program Files\Windows Kits\10\bin")) {
        if (-not (Test-Path $kitsRoot)) { continue }
        $ver = Get-ChildItem $kitsRoot -Directory -ErrorAction SilentlyContinue |
               Where-Object { $_.Name -match '^\d+\.\d+' } | Sort-Object Name -Descending | Select-Object -First 1
        if (-not $ver) { continue }
        foreach ($arch in @('x64', 'x86')) {
            $st = Join-Path $ver.FullName "$arch\signtool.exe"
            if (Test-Path $st) { return $st }
        }
    }
    return $null
}

function Find-WDKKernelLib {
    foreach ($kitsRoot in @("C:\Program Files (x86)\Windows Kits\10\Lib", "C:\Program Files\Windows Kits\10\Lib")) {
        if (-not (Test-Path $kitsRoot)) { continue }
        $ver = Get-ChildItem $kitsRoot -Directory -ErrorAction SilentlyContinue | Sort-Object Name -Descending | Select-Object -First 1
        if (-not $ver) { continue }
        $lib = Join-Path $ver.FullName 'km\x64\ntoskrnl.lib'
        if (Test-Path $lib) { return $lib }
    }
    return $null
}

$c3c = Find-C3C
if (-not $c3c) { Fail 'c3c not found. Install C3 (https://c3-lang.org) or add it to PATH.' }
$msvcBin = Find-MSVCBin
if (-not $msvcBin) { Fail 'MSVC not found (link.exe/ml64.exe). Install Visual Studio with "Desktop development with C++".' }
$env:PATH = "$msvcBin;$env:PATH"

# ---------------------------------------------------------------- 1. c3c build (hypervisor)
if ($Clean) {
    Write-Step "cleaning $BuildDir"
    if (Test-Path $BuildDir) { Remove-Item $BuildDir -Recurse -Force }
}

Write-Step "c3c build (target gvrdian -> objects) in $HvDir"
Push-Location $HvDir
try {
    & $c3c build
    if ($LASTEXITCODE -ne 0) { Fail "c3c build failed (exit code $LASTEXITCODE)" }
} finally {
    Pop-Location
}

$c3Objs = @(Get-ChildItem $ObjDir -Filter *.obj -ErrorAction SilentlyContinue)
if ($c3Objs.Count -eq 0) { Fail "no objects were generated in $ObjDir" }
Write-Ok ("{0} C3 objects" -f $c3Objs.Count)

# ---------------------------------------------------------------- 1b. client (usermode exe)
if (-not $DriverOnly) {
    if (-not (Test-Path (Join-Path $ClientDir 'project.json'))) {
        Fail "client\project.json not found"
    }
    Write-Step "c3c build (target client -> static exe) in $ClientDir"
    Push-Location $ClientDir
    try {
        & $c3c build client
        if ($LASTEXITCODE -ne 0) { Fail "c3c build of the client failed (exit code $LASTEXITCODE)" }
    } finally {
        Pop-Location
    }
    if (-not (Test-Path $ExePath)) { Fail 'client.exe was not generated' }
    Write-Ok ("client.exe generated ({0} bytes)" -f (Get-Item $ExePath).Length)
}

# ---------------------------------------------------------------- 2. assemble asm
Write-Step 'assembling asm\*.asm with ml64'
$ml64 = Join-Path $msvcBin 'ml64.exe'
New-Item -ItemType Directory -Force $AsmObjDir | Out-Null
$asmObjs = @()
foreach ($src in (Get-ChildItem $AsmDir -Filter *.asm)) {
    $out = Join-Path $AsmObjDir ($src.BaseName + '.obj')
    & $ml64 /nologo /c /Fo$out $src.FullName | Out-Null
    if ($LASTEXITCODE -ne 0) { Fail "ml64 failed on $($src.Name) (exit code $LASTEXITCODE)" }
    $asmObjs += $out
}
if ($asmObjs.Count -eq 0) { Fail "no .asm files were found in $AsmDir" }
Write-Ok ("{0} assembly objects" -f $asmObjs.Count)

# ---------------------------------------------------------------- 3. kernel import library
$kernelLib = $KernelLib
if (-not $kernelLib) { $kernelLib = Find-WDKKernelLib }
if ($kernelLib) {
    Write-Step "using the WDK ntoskrnl.lib: $kernelLib"
} else {
    Write-Step 'no WDK: generating ntoskrnl.lib from the exports of the running ntoskrnl.exe'
    $dumpbin = Join-Path $msvcBin 'dumpbin.exe'
    $libExe  = Join-Path $msvcBin 'lib.exe'
    $ntdll   = Join-Path $env:SystemRoot 'System32\ntoskrnl.exe'
    $defPath = Join-Path $BuildDir 'ntoskrnl.def'
    $kernelLib = Join-Path $BuildDir 'ntoskrnl.lib'

    $exports = & $dumpbin /exports $ntdll 2>$null
    $names = foreach ($line in $exports) {
        if ($line -match '^\s+\d+\s+[0-9A-Fa-f]+\s+[0-9A-Fa-f]+\s+(\S+)') { $Matches[1] }
    }
    $names = @($names | Sort-Object -Unique | Where-Object { $_ -match '^[A-Za-z_][A-Za-z0-9_]*$' })
    if ($names.Count -eq 0) { Fail "could not read the exports of $ntdll" }

    New-Item -ItemType Directory -Force $BuildDir | Out-Null
    @('LIBRARY ntoskrnl.exe', 'EXPORTS') + ($names | ForEach-Object { "    $_" }) |
        Set-Content -Encoding ascii $defPath

    & $libExe /nologo "/def:$defPath" /machine:x64 "/out:$kernelLib" | Out-Null
    if ($LASTEXITCODE -ne 0) { Fail "lib.exe failed while generating the import library (exit code $LASTEXITCODE)" }
    Write-Ok ("ntoskrnl.lib generated with {0} exports" -f $names.Count)
}

# ---------------------------------------------------------------- 4. link -> .sys
Write-Step "linking $SysPath"
$link = Join-Path $msvcBin 'link.exe'
New-Item -ItemType Directory -Force $BuildDir | Out-Null
& $link /nologo /driver /machine:x64 /entry:DriverEntry /subsystem:native `
        /incremental:no /nodefaultlib "/out:$SysPath" `
        @($c3Objs.FullName) @($asmObjs) $kernelLib
if ($LASTEXITCODE -ne 0) { Fail "link failed (exit code $LASTEXITCODE)" }
if (-not (Test-Path $SysPath)) { Fail 'the .sys was not generated' }
Write-Ok ("gvrdian.sys generated ({0} bytes)" -f (Get-Item $SysPath).Length)

# ---------------------------------------------------------------- 5. test signature
if ($NoSign) {
    Write-Host '[*] -NoSign: skipping the signature' -ForegroundColor Yellow
} else {
    Write-Step 'creating/looking for the self-signed test certificate'
    $cert = Get-ChildItem Cert:\CurrentUser\My -CodeSigningCert -ErrorAction SilentlyContinue |
            Where-Object { $_.Subject -eq $CertSubject -and $_.NotAfter -gt (Get-Date).AddDays(30) } |
            Select-Object -First 1
    if (-not $cert) {
        $cert = New-SelfSignedCertificate -Type CodeSigningCert -Subject $CertSubject `
                    -CertStoreLocation Cert:\CurrentUser\My -KeyExportPolicy Exportable `
                    -KeyAlgorithm RSA -KeyLength 2048 -HashAlgorithm SHA256 `
                    -NotAfter (Get-Date).AddYears(5)
    }
    Write-Ok ("certificate: {0} (thumbprint {1})" -f $cert.Subject, $cert.Thumbprint)

    # Trust the certificate so Windows accepts the signature in test mode.
    # When the script runs as administrator it is installed into the machine stores,
    # which are the ones the kernel looks at when loading a driver.
    $isAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).
               IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
    $stores = if ($isAdmin) { @('LocalMachine\Root', 'LocalMachine\TrustedPublisher') }
              else          { @('CurrentUser\Root', 'CurrentUser\TrustedPublisher') }
    foreach ($storePath in $stores) {
        try {
            # $storePath is "CurrentUser\Root" -> store location and store name
            $location, $storeName = $storePath.Split('\')
            $store = New-Object System.Security.Cryptography.X509Certificates.X509Store($storeName, $location)
            $store.Open([System.Security.Cryptography.X509Certificates.OpenFlags]::ReadWrite)
            $store.Add($cert)
            $store.Close()
            Write-Ok ("certificate installed into {0}" -f $storePath)
        } catch {
            Write-Host ("[warn] could not install the certificate into {0}: {1}" -f $storePath, $_.Exception.Message) -ForegroundColor Yellow
        }
    }

    Write-Step "signing $SysPath"
    $signtool = Find-SignTool
    if (-not $signtool) {
        Write-Host '[warn] signtool.exe not found (install the Windows SDK): the .sys is left unsigned' -ForegroundColor Yellow
    } else {
        & $signtool sign /v /fd SHA256 /sha1 $cert.Thumbprint /s My $SysPath
        if ($LASTEXITCODE -ne 0) { Fail "signtool sign failed (exit code $LASTEXITCODE)" }

        & $signtool verify /pa $SysPath
        if ($LASTEXITCODE -ne 0) { Fail 'signtool verify did not validate the signature' }
        Write-Ok 'test signature applied and verified'
    }
}

# ---------------------------------------------------------------- 6. summary
Write-Host ''
Write-Ok "driver: $SysPath"
if (-not $DriverOnly) { Write-Ok "client: $ExePath" }

Write-Step 'dependencies (check here that no DLL is missing on another machine)'
$dumpbin = Join-Path $msvcBin 'dumpbin.exe'
Show-Imports $SysPath $dumpbin
if (-not $DriverOnly) { Show-Imports $ExePath $dumpbin }

Write-Host ''
Write-Host 'To load the driver in test mode (risky: development machines only):' -ForegroundColor Yellow
Write-Host '    bcdedit /set testsigning on     (requires administrator and Secure Boot disabled)' -ForegroundColor Yellow
Write-Host '    reboot, then install/load the .sys with your preferred tool' -ForegroundColor Yellow
exit 0
