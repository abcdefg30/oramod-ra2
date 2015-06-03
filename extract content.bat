@echo off
:start

echo This script extracts the required Red Alert 2 content (mix files)
echo from an INSTALLED version of Red Alert 2.
echo.

echo The default Red Alert 2 directory is "C:\Westwood\RA2".
echo (If you leave below empty this script will use "C:\Westwood\RA2" as default.)
set /p ra2dir=Please enter the path to your Red Alert 2 directory: 

if not defined ra2dir (set ra2dir="C:\Westwood\RA2")
if not exist %ra2dir% (
  echo.
  echo Error! %ra2dir% does not exist!
  pause >NUL
  cls
  goto start
)

rem LAZINESS: This can be done easier/cleaner/better etc.
cd %userprofile%\Documents\
if not exist OpenRA (md OpenRA)
cd OpenRA
if not exist Content (md Content)
cd Content
if not exist ra2 (md ra2)

echo.
if not exist %ra2dir%\ra2.mix (
  echo Could not find %ra2dir%\ra2.mix!
) else (
  copy %ra2dir%\ra2.mix ra2
  echo Copied %ra2dir%\ra2.mix into %cd%\ra2
)
echo.

if not exist %ra2dir%\language.mix (
  echo Could not find %ra2dir%\language.mix!
) else (
  copy %ra2dir%\language.mix ra2
  echo Copied %ra2dir%\language.mix into %cd%\ra2
)
echo.

if not exist %ra2dir%\theme.mix (
  echo Could not find %ra2dir%\theme.mix!
) else (
  copy %ra2dir%\theme.mix ra2
  echo Copied %ra2dir%\theme.mix into %cd%\ra2
)
echo.

echo Done! Press any key to exit.
pause >NUL
exit