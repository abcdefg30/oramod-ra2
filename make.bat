@echo off
echo "cl" to Clean Mod folder
echo "cp" to Copy the Mod
echo "cc" to Clean folder and Copy the Mod
echo "cpback" to Copy the Mod from "openra\mods\ra2" to "ra2"
set /p cmd=Command:
 
echo "You chose %cmd%.."
 
goto :do_%cmd%
 
:do_cl
echo Cleaning...
rd /s /q "openra\mods\ra2\"
echo.
echo Done.
goto end

:do_cp
echo Copying...
xcopy ra2 "openra\mods\ra2\" /e /Y
echo.
echo Done.
goto end

:do_cc
echo Cleaning....
rd /s /q "openra\mods\ra2\"
echo.
echo Done.
echo Copying...
xcopy ra2 "openra\mods\ra2\" /e /Y
echo.
echo Done.
goto end

:do_cpback
echo Copying...
xcopy "openra\mods\ra2" ra2 /e /Y
echo.
echo Done.
goto end

:end
pause
