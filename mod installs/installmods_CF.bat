@echo off

set steamcmdpath="C:\SteamCMD"

set /p login=Steam Login: 
echo.

::set /p pass=Steam Password:
::echo.

:: CF	
set id="1559212036"
%steamcmdpath%\steamcmd +login %login% +force_install_dir C:\dayzserver +workshop_download_item 221100 %id% validate +quit
if exist @CF\ (
	rmdir /Q /S "C:\dayzserver\@CF"
)
move "C:\dayzserver\steamapps\workshop\content\221100\%id%" "C:\dayzserver\@CF"
copy /y "C:\dayzserver\@CF\Keys\*.bikey" "C:\dayzserver\keys\"
echo CF installed
:: END CF

pause