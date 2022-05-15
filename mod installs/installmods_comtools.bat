@echo off

set steamcmdpath="C:\SteamCMD"

set /p login=Steam Login: 
echo.

::set /p pass=Steam Password:
::echo.

:: COMMUNITY ONLINE TOOLS
set id="1564026768"
%steamcmdpath%\steamcmd +login %login% +force_install_dir C:\dayzserver +workshop_download_item 221100 %id% validate +quit
if exist @Community-Online-Tools\ (
	rmdir /Q /S "C:\dayzserver\@Community-Online-Tools"
)
move "C:\dayzserver\steamapps\workshop\content\221100\%id%" "C:\dayzserver\@Community-Online-Tools"
copy /y "C:\dayzserver\@Community-Online-Tools\Keys\*.bikey" "C:\dayzserver\keys\"
echo Community-Online-Tools installed
:: END COMMUNITY ONLINE TOOLS


pause