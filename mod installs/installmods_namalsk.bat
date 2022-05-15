@echo off

set steamcmdpath="C:\SteamCMD"

set namIsland="2288339650"

set namSurvival="2288336145"

set /p login=Steam Login: 

echo.

set /p pass=Steam Password:

echo.

%steamcmdpath%\steamcmd +login %login% %pass% +force_install_dir C:\dayzserver +workshop_download_item 221100 %namIsland% validate +force_install_dir C:\dayzserver +workshop_download_item 221100 %namSurvival% validate +quit

if exist @NamalskIsland\ (
	rmdir /Q /S "C:\dayzserver\@NamalskIsland"
)

move "C:\dayzserver\steamapps\workshop\content\221100\%namIsland%" "C:\dayzserver\@NamalskIsland"

if exist @NamalskSurvival\ (
	rmdir /Q /S "C:\dayzserver\@namalskSurvival"
)

move "C:\dayzserver\steamapps\workshop\content\221100\%namSurvival%" "C:\dayzserver\@NamalskSurvival"

copy /y "C:\dayzserver\@namalskIsland\Keys\*.bikey" "C:\dayzserver\keys\"


pause