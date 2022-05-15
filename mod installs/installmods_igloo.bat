@echo off

set steamcmdpath="C:\SteamCMD"

set /p login=Steam Login: 
echo.

::set /p pass=Steam Password:
::echo.

:: NAMALSK IGLOO	
set id="2306929525"
%steamcmdpath%\steamcmd +login %login% +force_install_dir C:\dayzserver +workshop_download_item 221100 %id% validate +quit
if exist @Namalsk_Igloo\ (
	rmdir /Q /S "C:\dayzserver\@Namalsk_Igloo"
)
move "C:\dayzserver\steamapps\workshop\content\221100\%id%" "C:\dayzserver\@Namalsk_Igloo"
copy /y "C:\dayzserver\@Namalsk_Igloo\Keys\*.bikey" "C:\dayzserver\keys\"
echo Namalsk_Igloo installed
:: END NAMALSK IGLOO

pause