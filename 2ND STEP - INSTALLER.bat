@echo off
ECHO ***********************************************************************
ECHO MAKE SURE YOU HAVE READ THE README AND CREATED YOUR BACKUPS BEFORE USE
ECHO 			    Choose a pack:
ECHO 1. KH1
ECHO 2. KH2
ECHO 3. BBS
ECHO 4. DDD
ECHO 5. KH3
ECHO ***********************************************************************

:BEGIN
  set /p case="Select Option: "
  2>NUL CALL :CASE_%case%
  IF ERRORLEVEL 1 GOTO :DEFAULT_CASE
  ECHO Done!
  pause
  EXIT /B

:CASE_1
  ECHO Original or Remaster?
  set /p option="Select 1 or 2: "
  IF exist "%CD:~0,3%\Program Files\Epic Games\KH_MoM\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\bgm\" (ECHO Installing.. && >NUL copy "Songs\KH1\%option%\*.*" "%CD:~0,3%\Program Files\KH_MoM\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\bgm\") ELSE (ECHO Default directory not found! && GOTO DIR_%case%)
  GOTO END_CASE
:CASE_2
  ECHO Original or Remaster?
  set /p option="Select 1 or 2: "
  IF exist "%CD:~0,3%\Program Files\Epic Games\KH_MoM\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\bgm\" (ECHO Installing.. && >NUL copy "Songs\KH2\%option%\*.*" "%CD:~0,3%\Program Files\KH_MoM\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\bgm\") ELSE (ECHO Default directory not found! && GOTO DIR_%case%)
  GOTO END_CASE
:CASE_3
  IF exist "%CD:~0,3%\Program Files\Epic Games\KH_MoM\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\bgm\" (ECHO Installing.. && >NUL copy "Songs\BBS\*.*" "%CD:~0,3%\Program Files\KH_MoM\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\bgm\") ELSE (ECHO Default directory not found! && GOTO DIR_%case%)
  GOTO END_CASE
:CASE_4
  IF exist "%CD:~0,3%\Program Files\Epic Games\KH_MoM\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\bgm\" (ECHO Installing.. && >NUL copy "Songs\DDD\*.*" "%CD:~0,3%\Program Files\KH_MoM\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\bgm\") ELSE (ECHO Default directory not found! && GOTO DIR_%case%)
  GOTO END_CASE
:CASE_5
  IF exist "%CD:~0,3%\Program Files\Epic Games\KH_MoM\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\bgm\" (ECHO Installing.. && >NUL copy "Songs\KH3\*.*" "%CD:~0,3%\Program Files\KH_MoM\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\bgm\") ELSE (ECHO Default directory not found! && GOTO DIR_%case%)
  GOTO END_CASE
:DIR_1
  set /p id="Enter Game Directory: "
  IF exist "%id%\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\bgm\" (ECHO Installing.. && >NUL copy "Songs\KH1\%option%\*.*" "%id%\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\bgm\") ELSE (ECHO Directory does not exist! Try again. && goto :DIR_%case%)
  GOTO END_CASE
:DIR_2
  set /p id="Enter Game Directory: "
  IF exist "%id%\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\bgm\" (ECHO Installing.. && >NUL copy "Songs\KH2\%option%\*.*" "%id%\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\bgm\") ELSE (ECHO Directory does not exist! Try again. && goto :DIR_%case%)
  GOTO END_CASE
:DIR_3
  set /p id="Enter Game Directory: "
  IF exist "%id%\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\bgm\" (ECHO Installing.. && >NUL copy "Songs\BBS\*.*" "%id%\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\bgm\") ELSE (ECHO Directory does not exist! Try again. && goto :DIR_%case%)
  GOTO END_CASE
:DIR_4
  set /p id="Enter Game Directory: "
  IF exist "%id%\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\bgm\" (ECHO Installing.. && >NUL copy "Songs\DDD\*.*" "%id%\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\bgm\") ELSE (ECHO Directory does not exist! Try again. && goto :DIR_%case%)
  GOTO END_CASE
:DIR_5
  set /p id="Enter Game Directory: "
  IF exist "%id%\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\bgm\" (ECHO Installing.. && >NUL copy "Songs\KH3\*.*" "%id%\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\bgm\") ELSE (ECHO Directory does not exist! Try again. && goto :DIR_%case%)
  GOTO END_CASE
:DEFAULT_CASE
  ECHO Invalid Option "%case%"! Insert a valid option(1, 2, 3, 4, or 5) and try again.
  GOTO BEGIN
:END_CASE
  VER > NUL
  GOTO :EOF