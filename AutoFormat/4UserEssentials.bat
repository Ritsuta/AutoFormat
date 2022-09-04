@echo off
cd %userprofile%\Downloads
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
echo Downloading TronScript...
curl https://codeload.github.com/bmrf/tron/zip/refs/tags/v11.2.1 -o tron-11.2.1.zip
echo.
timeout 2 > nul
start cpu-z_2.02-en.exe
start spsetup132.exe
start hwmonitor_1.46.exe
start winrar-x64-611.exe
echo Extracting TronScript...
powershell -command Expand-Archive -Force %userprofile%\Downloads\tron-11.2.1.zip %userprofile%\Downloads
echo Success! Moving to next phase...
timeout 2 > nul
start %userprofile%\Desktop\AutoFormat\5GamingEssentials.bat
exit