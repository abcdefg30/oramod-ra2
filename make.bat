@echo off
echo "cl" to Clean Mod folder, "cp" to Copy the Mod, "cc" to Clean folder and Copy the Mod
set /p cmd=Command:
 
echo "You chose %cmd%.."
 
goto :do_%cmd%
 
:do_cl
echo Cleaning...
rd /s /q "openra\mods\ra2\"
echo:
echo:done.
goto end

:do_cp
echo:Copying...
xcopy ra2 openra\mods\ra2\ /e /Y
echo:
echo:done.
goto end

:do_cc
echo Cleaning....
rd /s /q "openra\mods\ra2\"
echo:
echo:done.
echo:
echo:Copying...
echo:
xcopy ra2 openra\mods\ra2\ /e /Y
echo:
echo:done.
goto end
:end
