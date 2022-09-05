@echo off
powershell -command Write-Host 1st Phase: System Changes -fore Green
echo.
echo Disabling automatic Windows Update...
sc config wuauserv start=disabled
echo.
echo Success! Moving to the next phase...
timeout 2 > nul
cls
start %userprofile%\Desktop\AutoFormat\4UserEssentials.bat
exit