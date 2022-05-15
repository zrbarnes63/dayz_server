@echo off

set steamcmdpath="C:\SteamCMD"

set /p login=Steam Login: 
echo.

::set /p pass=Steam Password:
::echo.

:: ADVANCED WEAPON SCOPES
set id="2143128974"
%steamcmdpath%\steamcmd +login %login% +force_install_dir C:\dayzserver +workshop_download_item 221100 %id% validate +quit
if exist @AdvancedWeaponScopes\ (
	rmdir /Q /S "C:\dayzserver\@AdvancedWeaponScopes"
)
move "C:\dayzserver\steamapps\workshop\content\221100\%id%" "C:\dayzserver\@AdvancedWeaponScopes"
copy /y "C:\dayzserver\@AdvancedWeaponScopes\Keys\*.bikey" "C:\dayzserver\keys\"
echo Advanced Weapon Scopes installed
:: END ADVANCED WEAPON SCOPES

pause