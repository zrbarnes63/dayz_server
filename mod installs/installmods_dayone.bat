@echo off

set steamcmdpath="C:\SteamCMD"

set /p login=Steam Login: 
echo.

::set /p pass=Steam Password:
::echo.

:: DAYONE
set id="2110459075"
%steamcmdpath%\steamcmd +login %login% +force_install_dir C:\dayzserver +workshop_download_item 221100 %id% validate +quit
if exist @DayOne\ (
	rmdir /Q /S "C:\dayzserver\@DayOne"
)
move "C:\dayzserver\steamapps\workshop\content\221100\%id%" "C:\dayzserver\@DayOne"
copy /y "C:\dayzserver\@DayOne\Keys\*.bikey" "C:\dayzserver\keys\"
echo DayOne installed
:: END DAYONE

pause