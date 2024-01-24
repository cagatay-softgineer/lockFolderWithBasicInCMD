@shift /0
cls
@echo off
title Folder Kilitli
if EXIST "Control Panel.{21EC202O-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Kilitli goto MDKilitli
:CONFIRM
echo Klasor kilitlensin mi?(e/h)
set /p "cho=>"
if %cho%==e goto LOCK
if %cho%==E goto LOCK
if %cho%==h goto END
if %cho%==H goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren Kilitli "Control Panel.{21EC202O-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC202O-3AEA-1069-A2DD-08002B30309D}"
echo Folder Locked
goto END
:UNLOCK
echo Sifreyi giriniz:
set /p "pass=>"
if NOT %pass%== ##Wanted Password## goto FAIL
attrib -h -s "Control Panel.{21EC202O-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC202O-3AEA-1069-A2DD-08002B30309D}" Kilitli
echo Folder Unlocked successaaaay
goto END
:FAIL
echo Inavalid password
goto END
:MDKilitli
MD Kilitli
echo Locker created successaaaay
goto END
:END
color c
pause

















