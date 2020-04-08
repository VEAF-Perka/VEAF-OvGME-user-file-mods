@echo off
echo.
echo ========================================
echo     Building DCS VEAF user mods
echo ========================================
echo.

rem FTP setup
set url=http://aggressors.free.fr/repos_ovgme/VEAF_user_mods/
rem Create build folder if needed
mkdir .\build

echo.
echo ----------------------------------------
echo  Packing mods
echo ----------------------------------------
echo.

rem Pack mods
for /f "tokens=*" %%i in ('DIR /a:d /b _*') DO (
    rem -- compile the mod
    call :packmods "%%i"
    call :rename_packed_folder "%%i"
)

rem Build xml file
setlocal enabledelayedexpansion
echo ^<?xml version="1.0"?^> >.\build\veaf_user_mods.xml
echo ^<mod_list^> >>.\build\veaf_user_mods.xml
for /f "tokens=*" %%i in ('DIR /a:d /b x*') DO (
    rem -- add the mod to the xml file
    call :xml_lines "%%i"
)
echo ^</mod_list^> >>.\build\veaf_user_mods.xml

rem -- Pack built !
echo.
echo ----------------------------------------
echo  DCS VEAF user mods built
echo ----------------------------------------
echo.

echo.
echo ----------------------------------------
echo  Pushing mods on VEAF user mods repos
echo ----------------------------------------
echo.

rem Pushing files
ftp -s:remoterepository.ftp
rd /s /q .\build

rem -- Mods pushed !
echo.
echo ========================================
echo   VEAF user mods pushed on repository
echo ========================================
echo.

pause
GOTO :exit

rem Routine to pack mods
:packmods
 set temp=%1
 set modname=%temp:~2,-1%
 7za a -r -tzip .\build\%modname%.zip .\%1\* -x!".deleteme" -mem=AES256  >nul 2>&1
 cd build
 ren %modname%.zip "%modname:_= %.zip"
 cd ..
 echo %modname% packed
 GOTO :eof

rem Routine to rename mod folder
:rename_packed_folder
 set oldfoldername=%1
 set newfoldername="x%oldfoldername:~2,-1%"
 if exist %oldfoldername%\.deleteme (
     rem file exists
     rd /s/q %oldfoldername%
 ) else (
     rem file doesn't exist
     move "%oldfoldername%" "%newfoldername%"
 )
 GOTO :eof

rem Routine to build xml line for each mod
:xml_lines
 set temp=%1
 set modname=!temp:~2,-1!
 set modnamecleaned=%modname:_=^ %
 set filename=!modname:_=%%20!
 set /p version=< .\%temp%\VERSION.txt
 set /p description=< .\%temp%\README.txt
 echo|set /p="<mod name="%modnamecleaned%" version="%version%" url="%url%%filename%.zip">%description%</mod>" >>.\build\veaf_user_mods.xml
 echo. >>.\build\veaf_user_mods.xml
 GOTO :eof


:exit
