@echo off
echo Disabling automatic Windows Update...
sc config wuauserv start=disabled
exit