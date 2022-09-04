@echo off
echo 1st Phase: System Changes
echo.
echo Disabling automatic Windows Update...
sc config wuauserv start=disabled
echo.
echo Success! Moving to next phase...
timeout 5  > nul
cls
cd %userprofile%\Downloads
echo 2nd Phase: User Essentials
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
timeout 5 > nul
cls
echo 3rd Phase: Gaming Essentials
echo.
echo Would you like to download Steam, Discord, Spotify, qBittorrent, OBS Studio? y/n
set /p answer= 
if %answer%==y (
cls
echo 2nd Phase: Gaming Essentials
echo Downloading Steam...
curl https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe -o SteamSetup.exe
echo.
echo Downloading Discord...
curl https://dl.discordapp.net/distro/app/stable/win/x86/1.0.9005/DiscordSetup.exe -o DiscordSetup.exe
echo.
echo Downloading Spotify...
curl https://download.scdn.co/SpotifySetup.exe -o SpotifySetup.exe
echo.
echo Downloading qBittorrent...
curl https://download.fosshub.com/Protected/expiretime=1659929160;badurl=aHR0cHM6Ly93d3cuZm9zc2h1Yi5jb20vaHR0cHM6JiN4MkY7JiN4MkY7Zm9zc2h1Yi5jb20mI3gyRjtxQml0dG9ycmVudC1vbGQuaHRtbA==/0b531666b795b0b991b6b3b23b0e156f568726277f74de331e55d1d43fbeb42e/5b8793a7f9ee5a5c3e97a3b2/5dbb6f0be9416f0a00026731/qbittorrent_4.1.9.1_x64_setup.exe -o qbittorrent_4.1.9.1_x64_setup.exe
echo.
echo Downloading OBS Studio...
curl https://cdn-fastly.obsproject.com/downloads/OBS-Studio-27.2.4-Full-Installer-x64.exe -o OBS-Studio-27.2.4-Full-Installer-x64.exe
echo.
echo Sucess! Moving to next phase...
pause
exit
)else (
cls
exit
)
pause
exit
