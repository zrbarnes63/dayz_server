@echo off
set serverName=Fadesfast Namalsk Server
set serverLocation="C:\dayzserver"
set serverPort=2302
set serverProfile=Namalsk
set serverConfig=serverDZ.cfg
set serverCPU=1
set serverMods=@CF;@DabsFramework;@Community-Online-Tools;@DayOne;@NamalskIsland;@NamalskSurvival;@GRWER7GaussRifle;@AdvancedWeaponScopes;@Namalsk_Igloo;@WindstridesClothingPack;
title %serverName% batch
cd "%serverLocation%"
echo (%time%) %serverName% started.
start "DayZ Server" /min "DayZServer_x64.exe" -config=%serverConfig% -port=%serverPort% -profiles=%serverProfile% -cpuCount=%serverCPU% -mod=%serverMods% -dologs -adminlog -netlog -freezecheck