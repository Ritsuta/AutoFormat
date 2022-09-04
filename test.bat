@echo off
cd %userprofile%\Desktop
start test1.bat
cd %userprofile%\Downloads
curl https://download.cpuid.com/cpu-z/cpu-z_2.02-en.exe -o cpu-z_2.02-en.exe
curl https://download.ccleaner.com/spsetup132.exe -o spsetup132.exe
curl https://download.cpuid.com/hwmonitor/hwmonitor_1.46.exe -o hwmonitor_1.46.exe
curl https://codeload.github.com/bmrf/tron/zip/refs/tags/v11.2.1 -o tron-11.2.1.zip
timeout 2 > nul
start cpu-z_2.02-en.exe
start spsetup132.exe
start hwmonitor_1.46.exe
powershell -command Expand-Archive -Force %userprofile%\Downloads\tron-11.2.1.zip %userprofile%\Downloads
start tron-11.2.1
pause
exit
