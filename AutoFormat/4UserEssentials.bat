@echo off
cd %userprofile%\Desktop\UserEssentials
powershell -command Write-Host 2nd Phase: User Essentials -fore Green
echo.
echo Downloading CPU-Z...
curl https://download.cpuid.com/cpu-z/cpu-z_2.02-en.exe -o cpu-z_2.02-en.exe
echo.
echo Downloading Speccy (Free Version)...
curl https://download.ccleaner.com/spsetup132.exe -o spsetup132.exe
echo.
echo Downloading HWMonitor...
curl https://download.cpuid.com/hwmonitor/hwmonitor_1.46.exe -o hwmonitor_1.46.exe
echo.
echo Downloading WinRAR...
curl https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-611.exe -o winrar-x64-611.exe
echo.
echo Success! Moving to next phase...
timeout 2 > nul
start %userprofile%\Desktop\AutoFormat\5GamingEssentials.bat
exit