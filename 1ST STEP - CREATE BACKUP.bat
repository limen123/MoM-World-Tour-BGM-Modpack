@echo off
if exist "Songs\KH1\1" (GOTO :NEXT) else (mkdir "Songs\KH1\1" && GOTO :NEXT)

:NEXT
  ECHO Searching for default game directory..
  IF exist "%CD:~0,2%\%ProgramFiles%\Epic Games\KH_MoM\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\bgm\" (ECHO Window will automatically close when backup is created && ECHO Creating backup.. && >NUL copy "%CD:~0,2%\%ProgramFiles%\KH_MoM\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\bgm\BGM_MENU_WORLDTRIP_001.win.sab.bytes" "Songs\KH1\1") else (ECHO Default directory not found! && GOTO :NEXT2)
  GOTO END_CASE
:NEXT2
  set /p id="Enter Game Directory: "
  IF exist "%id%\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\bgm\" (ECHO Window will automatically close when backups are created && ECHO Creating backups.. && >NUL copy "%id%\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\bgm\BGM_MENU_WORLDTRIP_001.win.sab.bytes" "Songs\KH1\1") ELSE (ECHO Directory does not exist! Try again. && goto :NEXT2)
  GOTO END_CASE
:END_CASE
  EXIT /B