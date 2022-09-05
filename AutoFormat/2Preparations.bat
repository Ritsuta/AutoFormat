@echo off
powershell -command Write-Host Preparations: Checking internet connectivity... -fore Green
echo.
ping -n 1 -w 1000 www.google.com > nul
IF NOT ERRORLEVEL 1 goto :SUCCESS
IF     ERRORLEVEL 1 goto :TRYAGAIN
:SUCCESS
powershell -command Write-Host You are connected to the internet. -fore Green
echo.
echo Creating folders...
if exist "%userprofile%\Desktop" (
mkdir "%userprofile%\Desktop\GamingEssentials"
) else (
echo moving to the next phase...
)
if exist "%userprofile%\Desktop" (
mkdir "%userprofile%\Desktop\UserEssentials"
) else (
echo Moving to the next phase...
)
echo Moving to the next phase...
timeout 2 > nul
start %userprofile%\Desktop\AutoFormat\3SystemChanges.bat
exit
:TRYAGAIN
echo You are NOT connected to the internet. 
pause
exit