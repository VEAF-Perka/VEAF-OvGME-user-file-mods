@echo off
set modname=Liveries - FA-18C - Perka 14F OP Mousquetaire LV
set modnamecleaned=%modname: =^_%
set liveryname=14F - OP Mousquetaire LV

rem Deploy the mod to a temporary folder for the main build_and_push.cmd script to consume

set destination=..\_%modnamecleaned%

echo destination=[%destination%]

rd /s/q "%destination%"
md "%destination%"
copy README.txt "%destination%\"
copy VERSION.txt "%destination%\"
echo " " > "%destination%\.deleteme"

rem -- create a skin folder for each version of the base skin
FOR %%f IN (versions\*.dds) DO call :_build_version %destination% %%f

goto :exit
:_build_version
	rem make a version of the mod with the specific pilot name
	rem -- parameter 1 is the destination folder, parameter 2 is the name of the specific texture file

	set callsign=%~n2
	set destination=%1\%modname%\Liveries\FA-18C_hornet\%liveryname% - %callsign%
	set texture=%2

	echo prepare the version for [%callsign%] in [%destination%]

	echo destination=[%destination%]
	echo callsign=[%callsign%]
	echo texture=[%texture%]

	md "%destination%"
	copy "mod\%modname%\Liveries\FA-18C_hornet\%liveryname%\*" "%destination%\"
	copy %texture% "%destination%\F18C_1_DIFF_default.dds"
	powershell -Command "(gc '%destination%\description.lua') -replace '%liveryname%', '%liveryname% - %callsign%' | sc '%destination%\description.lua'"
GOTO :eof

:exit
