@echo off

set steamcmdpath="C:\SteamCMD"

set /p login=Steam Login: 
echo.

::set /p pass=Steam Password:
::echo.

:: DABS FRAMEWORK
set id="2545327648"
%steamcmdpath%\steamcmd +login %login% +force_install_dir C:\dayzserver +workshop_download_item 221100 %id% validate +quit
if exist @Dabs Framework\ (
	rmdir /Q /S "C:\dayzserver\@Dabs Framework"
)
move "C:\dayzserver\steamapps\workshop\content\221100\%id%" "C:\dayzserver\@Dabs Framework"
copy /y "C:\dayzserver\@Dabs Framework\Keys\*.bikey" "C:\dayzserver\keys\"
echo Dabs Framework installed
:: END DABS FRAMEWORK

pause