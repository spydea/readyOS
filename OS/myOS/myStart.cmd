::DeliPetro Builder ile yapılmıştır.
echo off
chcp 65001 > NUL
setlocal enabledelayedexpansion
cls
title  DeliPetro
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set R=%%b)
cd /d "%~dp0"
for /f %%a in ('"cd"') do set Konum=%%a
reg query "HKU\S-1-5-19" > NUL 2>&1
	if %errorlevel% EQU 1 (Call :Powershell "Start-Process '%Konum%\DeliPetro.cmd' -Verb Runas"&exit)
Call :Powershell "Set-ExecutionPolicy Unrestricted"
cls&echo %R%[33m Masaüstü dosyaları çıkartılıyor...%R%[0m
"%Konum%\Bin\7z.exe" e "%Konum%\Masaustu.zip" -o"C:\Users\%username%\Desktop" -y > NUL 2>&1
DEL /F /Q /A "%Konum%\Masaustu.zip" > NUL 2>&1
echo %R%[36m
echo                         ████████ ████████
echo                         █░░░░░░█ █░░░░░░░
echo                         █░    ░█ █░
echo           ███████ █   █ █░    ░█ ████████
echo           █░░█░░█ █   █ █░    ░█ ░░░░░░░█
echo           █░ ░ ░█ █   █ █░    ░█       ░█
echo           █░   ░█ █████ ████████ ████████
echo           ░░   ░░ ░░░░█ ░░░░░░░░ ░░░░░░░░
echo                       █
echo                   █████
echo                   ░░░░░
echo.
echo %R%[33m Programlar yükleniyor...%R%[0m
%Konum%\Programlar\openshell.exe /qn ADDLOCAL=StartMenu
%Konum%\Programlar\memreduct.exe /s
%Konum%\Programlar\7zip.exe /S
%Konum%\Programlar\driver.exe
%Konum%\Programlar\runtimes.exe
timeout /t 1 /nobreak > NUL
cls
echo %R%[36m
echo                         ████████ ████████
echo                         █░░░░░░█ █░░░░░░░
echo                         █░    ░█ █░
echo           ███████ █   █ █░    ░█ ████████
echo           █░░█░░█ █   █ █░    ░█ ░░░░░░░█
echo           █░ ░ ░█ █   █ █░    ░█       ░█
echo           █░   ░█ █████ ████████ ████████
echo           ░░   ░░ ░░░░█ ░░░░░░░░ ░░░░░░░░
echo                       █
echo                   █████
echo                   ░░░░░
echo.
echo %R%[33m Sistem performans ayarları yapılıyor...%R%[0m
%~dp0\DevManView.exe /disable "WAN Miniport (IKEv2)" >nul 2>&1
%~dp0\DevManView.exe /disable "WAN Miniport (IP)" >nul 2>&1
%~dp0\DevManView.exe /disable "WAN Miniport (L2TP)" >nul 2>&1
%~dp0\DevManView.exe /disable "WAN Miniport (PPPOE)" >nul 2>&1
%~dp0\DevManView.exe /disable "WAN Miniport (PPTP)" >nul 2>&1
%~dp0\DevManView.exe /disable "WAN Miniport (SSTP)" >nul 2>&1
%~dp0\DevManView.exe /disable "WAN Miniport (Network Monitor)" >nul 2>&1
%~dp0\DevManView.exe /disable "High Precision Event Timer" >nul 2>&1
%~dp0\DevManView.exe /disable "Remote Desktop Device Redirector Bus" >nul 2>&1
%~dp0\DevManView.exe /disable "Microsoft GS Wavetable Synth" >nul 2>&1
%~dp0\DevManView.exe /disable "UMBus Root Bus Enumerator" >nul 2>&1
%~dp0\DevManView.exe /disable "NDIS Virtual Network Adapter Enumerator" >nul 2>&1
%~dp0\DevManView.exe /disable "Composite Bus Enumerator" >nul 2>&1
%~dp0\DevManView.exe /disable "SM Bus Controller" >nul 2>&1
%~dp0\DevManView.exe /disable "Programmable Interrupt Controller" >nul 2>&1
%~dp0\DevManView.exe /disable "Numeric Data Processor" >nul 2>&1
%~dp0\DevManView.exe /disable "PCI Data Acquisition and Signal Processing Controller" >nul 2>&1
%~dp0\DevManView.exe /disable "PCI Memory Controller" >nul 2>&1
%~dp0\DevManView.exe /disable "PCI Simple Communications Controller" >nul 2>&1
%~dp0\DevManView.exe /disable "Microsoft RRAS Root Enumerator" >nul 2>&1
%~dp0\DevManView.exe /disable "Microsoft Kernel Debug Network Adapter" >nul 2>&1
%~dp0\DevManView.exe /disable "System Speaker" >nul 2>&1
%~dp0\DevManView.exe /disable "System Timer" >nul 2>&1
bcdedit /set {current} description myOS 1909 >nul 2>&1
bcdedit /deletevalue useplatformclock >nul 2>&1
bcdedit /set disabledynamictick yes >nul 2>&1
bcdedit /set useplatformtick yes >nul 2>&1
schtasks /change /tn "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\Application Experience\StartupAppTask" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\Application Experience\AitAgent" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\Customer Experience Improvement Program\Uploader" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\AppID\SmartScreenSpecific" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\Autochk\Proxy" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\DiskFootprint\Diagnostics" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\FileHistory\File History (maintenance mode)" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\Maintenance\WinSAT" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\NetTrace\GatherNetworkInfo" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\PI\Sqm-Tasks" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\Time Synchronization\SynchronizeTime" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\ErrorDetails\EnableErrorDetailsUpdate" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\Windows Error Reporting\QueueReporting" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\WindowsUpdate\Automatic App Update" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\Device Information\Device" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\Shell\FamilySafetyMonitor" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\Shell\FamilySafetyRefresh" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\Shell\FamilySafetyUpload" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\Autochk\Proxy" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\FileHistory\File History (maintenance mode)" /disable >nul 2>&1
schtasks /Change /TN "Microsoft\Windows\WindowsUpdate\Automatic App Update" /Disable >nul 2>&1
schtasks /Change /TN "Microsoft\Windows\Shell\IndexerAutomaticMaintenance" /DISABLE >nul 2>&1
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\StorageSense" /DISABLE >nul 2>&1
schtasks /change /tn "Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /disable >nul 2>&1
SCHTASKS /Change /TN "Microsoft\Windows\WS\WSTask" /DISABLE >nul 2>&1
SCHTASKS /Change /TN "Microsoft\Windows\Work Folders\Work Folders Maintenance Work" /DISABLE >nul 2>&1
SCHTASKS /Change /TN "Microsoft\Windows\Work Folders\Work Folders Logon Synchronization" /DISABLE >nul 2>&1
SCHTASKS /Change /TN "Microsoft\Windows\WOF\WIM-Hash-Validation" /DISABLE >nul 2>&1
SCHTASKS /Change /TN "Microsoft\Windows\WOF\WIM-Hash-Management" /DISABLE >nul 2>&1
SCHTASKS /Change /TN "Microsoft\Windows\WindowsUpdate\sih" /DISABLE >nul 2>&1
SCHTASKS /Change /TN "Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange" /DISABLE >nul 2>&1
SCHTASKS /Change /TN "Microsoft\Windows\WDI\ResolutionHost" /DISABLE >nul 2>&1
SCHTASKS /Change /TN "Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /DISABLE >nul 2>&1
SCHTASKS /Change /TN "Microsoft\Windows\Sysmain\WsSwapAssessmentTask" /DISABLE >nul 2>&1
SCHTASKS /Change /TN "Microsoft\Windows\Sysmain\ResPriStaticDbSync" /DISABLE >nul 2>&1
SCHTASKS /Change /TN "Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskNetwork" /DISABLE >nul 2>&1
SCHTASKS /Change /TN "Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskLogon" /DISABLE >nul 2>&1
SCHTASKS /Change /TN "Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTask" /DISABLE >nul 2>&1
SCHTASKS /Change /TN "Microsoft\Windows\Shell\IndexerAutomaticMaintenance" /DISABLE >nul 2>&1
SCHTASKS /Change /TN "Microsoft\Windows\SettingSync\NetworkStateChangeTask" /DISABLE >nul 2>&1
SCHTASKS /Change /TN "Microsoft\Windows\SettingSync\BackgroundUploadTask" /DISABLE >nul 2>&1
SCHTASKS /Change /TN "Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" /DISABLE >nul 2>&1
SCHTASKS /Change /TN "Microsoft\Windows\Maps\MapsUpdateTask" /DISABLE >nul 2>&1
SCHTASKS /Change /TN "Microsoft\Windows\Maps\MapsToastTask" /DISABLE >nul 2>&1
SCHTASKS /Change /TN "Microsoft\Windows\File Classification Infrastructure\Property Definition Sync" /DISABLE >nul 2>&1
SCHTASKS /Change /TN "Microsoft\Windows\File Classification Infrastructure\Property Definition Sync" /DISABLE >nul 2>&1
SCHTASKS /Change /TN "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /DISABLE >nul 2>&1
SCHTASKS /Change /TN "Microsoft\Windows\Feedback\Siuf\DmClient" /DISABLE >nul 2>&1
SCHTASKS /Change /TN "Microsoft\Windows\CertificateServicesClient\UserTask-Roam" /DISABLE >nul 2>&1
SCHTASKS /Change /TN "Microsoft\Windows\AppxDeploymentClient\Pre-staged app cleanup" /DISABLE >nul 2>&1
FOR /F "tokens=2" %%a in ('systeminfo ^| find "Total Physical Memory"') do set Svchost=%%a >nul 2>&1
set Svchost=%Svchost:~0,-4% >nul 2>&1
set /a Svchost=%Svchost%*1024*1024+1024000 >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "0x%Svchost%" /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop" /v "DragFullWindows" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "9012038010020000" /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v "MinAnimate" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop" /v "FontSmoothing" /t REG_SZ /d "2" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "ShellState" /t REG_BINARY /d "240000003e20000000000000000000000000000001000000130000000000000063000000" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "IconsOnly" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewAlphaSelect" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewShadow" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAnimations" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "AlwaysHibernateThumbnails" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "EnableAeroPeek" /t REG_DWORD /d "0" /f >nul 2>&1
RD /S /Q "%UserProfile%\OneDrive" >nul 2>&1
RD /S /Q "%SystemDrive%\OneDriveTemp" >nul 2>&1
RD /S /Q "%LocalAppData%\Microsoft\OneDrive" >nul 2>&1
RD /S /Q "%ProgramData%\Microsoft OneDrive" >nul 2>&1
DEL /F /Q /A "%AppData%\Microsoft\Windows\Start Menu\Programs\OneDrive.lnk" >nul 2>&1
reg delete "HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f >nul 2>&1
reg delete "HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f >nul 2>&1
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "OneDriveSetup" /f >nul 2>&1
call :PowerShell -exec bypass -enc JABoAHUAYgBzACAAPQAgAEcAZQB0AC0AVwBtAGkATwBiAGoAZQBjAHQAIABXAGkAbgAzADIAXwBVAFMAQgBIAHUAYgANAAoAJABwAG8AdwBlAHIATQBnAG0AdAAgAD0AIABHAGUAdAAtAFcAbQBpAE8AYgBqAGUAYwB0ACAATQBTAFAAbwB3AGUAcgBfAEQAZQB2AGkAYwBlAEUAbgBhAGIAbABlACAALQBOAGEAbQBlAHMAcABhAGMAZQAgAHIAbwBvAHQAXAB3AG0AaQANAAoAZgBvAHIAZQBhAGMAaAAgACgAJABwACAAaQBuACAAJABwAG8AdwBlAHIATQBnAG0AdAApAA0ACgB7AA0ACgAgACAAJABJAE4AIAA9ACAAJABwAC4ASQBuAHMAdABhAG4AYwBlAE4AYQBtAGUALgBUAG8AVQBwAHAAZQByACgAKQANAAoAIAAgAGYAbwByAGUAYQBjAGgAIAAoACQAaAAgAGkAbgAgACQAaAB1AGIAcwApAA0ACgAgACAAewANAAoAIAAgACAAIAAkAFAATgBQAEQASQAgAD0AIAAkAGgALgBQAE4AUABEAGUAdgBpAGMAZQBJAEQADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAaQBmACAAKAAkAEkATgAgAC0AbABpAGsAZQAgACIAKgAkAFAATgBQAEQASQAqACIAKQANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAB7AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAJABwAC4AZQBuAGEAYgBsAGUAIAA9ACAAJABGAGEAbABzAGUADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAkAHAALgBwAHMAYgBhAHMAZQAuAHAAdQB0ACgAKQANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAB9AA0ACgAgACAAfQANAAoAfQANAAoAJABhAGQAYQBwAHQAZQByACAAPQAgAEcAZQB0AC0ATgBlAHQAQQBkAGEAcAB0AGUAcgAgAC0AUABoAHkAcwBpAGMAYQBsACAAfAAgAEcAZQB0AC0ATgBlAHQAQQBkAGEAcAB0AGUAcgBQAG8AdwBlAHIATQBhAG4AYQBnAGUAbQBlAG4AdAANAAoAJABhAGQAYQBwAHQAZQByACAAfAA/ACAAewANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAJABfAC4AQQBsAGwAbwB3AEMAbwBtAHAAdQB0AGUAcgBUAG8AVAB1AHIAbgBPAGYAZgBEAGUAdgBpAGMAZQAgAD0AIAAnAEQAaQBzAGEAYgBsAGUAZAAnAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAkAF8ALgBEAGUAdgBpAGMAZQBTAGwAZQBlAHAATwBuAEQAaQBzAGMAbwBuAG4AZQBjAHQAIAA9ACAAJwBEAGkAcwBhAGIAbABlAGQAJwANAAoAfQANAAoAJABhAGQAYQBwAHQAZQByACAAfAAgAFMAZQB0AC0ATgBlAHQAQQBkAGEAcAB0AGUAcgBQAG8AdwBlAHIATQBhAG4AYQBnAGUAbQBlAG4AdAA= >nul 2>&1
cls
Call :Powershell "Set-ExecutionPolicy restricted"
cls
echo.
echo %R%[92m İŞLEMLER TAMAMLANDI %R%[0m
(
echo echo off
echo cls
echo reg query "HKU\S-1-5-19" ^> NUL 2^>^&1
echo	if %%errorlevel%% NEQ 0 ^(Powershell -Command "Start-Process '%%temp%%\DeleteFiles.cmd' -Verb Runas"^&exit^)
DEL /F /Q /A "%Konum%\myStart.bat" ^> NUL 2^>^&1
RD /S /Q %Konum%\Programlar ^> NUL 2^>^&1
DEL /F /Q /A "%Konum%\DeleteFiles.bat" ^> NUL 2^>^&1
echo reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "myOS" /f ^> NUL 2^>^&1
echo reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "DeleteFiles" /f ^> NUL 2^>^&1
echo RD /S /Q %%temp%%\* ^> NUL 2^>^&1
echo DEL /F /Q /A %%temp%%\* ^> NUL 2^>^&1
echo exit
) > %Konum%\DeleteFiles.cmd
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "myOS" /f > NUL 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "DeleteFiles" /t REG_SZ /d "%temp%\DeleteFiles.cmd" /f > NUL 2>&1
shutdown -r -f -t 5
timeout /t 4 /nobreak > NUL
exit

:Powershell
chcp 437 > NUL 2>&1
Powershell -command %*
chcp 65001 > NUL 2>&1
goto :eof
