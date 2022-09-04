@echo off
powershell -command Write-Host 3rd Phase: Gaming Essentials -fore Green
echo.
echo Would you like to download Steam, Discord, Spotify, qBittorrent, OBS Studio? y/n
set /p answer= 
if %answer%==y (
cls
powershell -command Write-Host 3rd Phase: Gaming Essentials -fore Green
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