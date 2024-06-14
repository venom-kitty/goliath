@echo off
mode con cols=56 lines=16
chcp 65001
title GOLIATH MULTITOOL
color 4
:menu
mode con cols=56 lines=16
cls
echo  ██████╗  ██████╗ ██╗     ██╗ █████╗ ████████╗██╗  ██╗
echo ██╔════╝ ██╔═══██╗██║     ██║██╔══██╗╚══██╔══╝██║  ██║
echo ██║  ███╗██║   ██║██║     ██║███████║   ██║   ███████║
echo ██║   ██║██║   ██║██║     ██║██╔══██║   ██║   ██╔══██║
echo ╚██████╔╝╚██████╔╝███████╗██║██║  ██║   ██║   ██║  ██║
echo  ╚═════╝  ╚═════╝ ╚══════╝╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝
echo created by ven           ♥♥           x x love goliath
echo ======================================================
echo.
echo               ╔═══════════════════════╗
echo               ║ 1. IP Geolocation     ║
echo               ║ 2. WiFi Scanning      ║
echo               ║ 3. Check for updates  ║
echo               ║ 4. Exit Goliath       ║
echo               ╚═══════════════════════╝

set /p choice=""

if %choice%==1 goto geolocate
if %choice%==2 goto wifiscan
if %choice%==3 goto updates
if %choice%==4 exit
goto menu

:geolocate
mode con cols=85 lines=16
cls
echo.
echo  ██████╗ ███████╗ ██████╗ ██╗      ██████╗  ██████╗ █████╗ ████████╗███████╗██████╗ 
echo ██╔════╝ ██╔════╝██╔═══██╗██║     ██╔═══██╗██╔════╝██╔══██╗╚══██╔══╝██╔════╝██╔══██╗
echo ██║  ███╗█████╗  ██║   ██║██║     ██║   ██║██║     ███████║   ██║   █████╗  ██████╔╝
echo ██║   ██║██╔══╝  ██║   ██║██║     ██║   ██║██║     ██╔══██║   ██║   ██╔══╝  ██╔══██╗
echo ╚██████╔╝███████╗╚██████╔╝███████╗╚██████╔╝╚██████╗██║  ██║   ██║   ███████╗██║  ██║
echo  ╚═════╝ ╚══════╝ ╚═════╝ ╚══════╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═╝  ╚═╝
echo ====================================================================================
echo.
set /p ip="Enter target IP address: "
echo Scanning %ip%...
CALL :sleep
echo.
echo Geolocation Results for %ip% ===============================
echo.
curl https://ipinfo.io/%ip%/json/
echo.
echo.
pause
goto menu

:wifiscan
mode con cols=90 lines=16
cls
echo.
echo ██╗    ██╗██╗███████╗██╗    ███████╗ ██████╗ █████╗ ███╗   ██╗███╗   ██╗███████╗██████╗ 
echo ██║    ██║██║██╔════╝██║    ██╔════╝██╔════╝██╔══██╗████╗  ██║████╗  ██║██╔════╝██╔══██╗
echo ██║ █╗ ██║██║█████╗  ██║    ███████╗██║     ███████║██╔██╗ ██║██╔██╗ ██║█████╗  ██████╔╝
echo ██║███╗██║██║██╔══╝  ██║    ╚════██║██║     ██╔══██║██║╚██╗██║██║╚██╗██║██╔══╝  ██╔══██╗
echo ╚███╔███╔╝██║██║     ██║    ███████║╚██████╗██║  ██║██║ ╚████║██║ ╚████║███████╗██║  ██║
echo  ╚══╝╚══╝ ╚═╝╚═╝     ╚═╝    ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝
echo ========================================================================================
set /p wifi="Enter (previously connected) internet name here: "
mode con cols=80 lines=40
echo Scanning %wifi%...
CALL :sleep
netsh wlan show profile name= %wifi% key=clear
pause
echo.
goto menu


:updates
cls
start https://github.com/venom-kitty/goliath
exit



pause

exit

:sleep
ping 127.0.0.1 -n 2 -w 1000 > NUL
ping 127.0.0.1 -n %1 -w 1000 > NUL









