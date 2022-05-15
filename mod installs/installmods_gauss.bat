@echo off

set steamcmdpath="C:\SteamCMD"

set /p login=Steam Login: 
echo.

::set /p pass=Steam Password:
::echo.

:: GAUSS RIFLE
set id="2307022759"
%steamcmdpath%\steamcmd +login %login% +force_install_dir C:\dayzserver +workshop_download_item 221100 %id% validate +quit
if exist @GRW ER7 Gauss Rifle\ (
	rmdir /Q /S "C:\dayzserver\@GRW ER7 Gauss Rifle"
)
move "C:\dayzserver\steamapps\workshop\content\221100\%id%" "C:\dayzserver\@GRW ER7 Gauss Rifle"
copy /y "C:\dayzserver\@GRW ER7 Gauss Rifle\Keys\*.bikey" "C:\dayzserver\keys\"
echo GRW ER7 Gauss Rifle installed
:: END GAUSS RIFLE

pause