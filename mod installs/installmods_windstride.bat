@echo off

set steamcmdpath="C:\SteamCMD"

set /p login=Steam Login: 
echo.

::set /p pass=Steam Password:
::echo.

:: WINDSTRIDES CLOTHING PACK
set id="1797720064"
%steamcmdpath%\steamcmd +login %login% +force_install_dir C:\dayzserver +workshop_download_item 221100 %id% validate +quit
if exist @WindstridesClothingPack\ (
	rmdir /Q /S "C:\dayzserver\@WindstridesClothingPack"
)
move "C:\dayzserver\steamapps\workshop\content\221100\%id%" "C:\dayzserver\@WindstridesClothingPack"
copy /y "C:\dayzserver\@WindstridesClothingPack\Keys\*.bikey" "C:\dayzserver\keys\"
echo WindstridesClothingPack installed
:: END WINDSTRIDES CLOTHING PACK

pause