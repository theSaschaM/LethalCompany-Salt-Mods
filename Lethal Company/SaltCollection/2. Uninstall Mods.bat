@echo off
title Uninstall Mods
cd /d "%~dp0"  REM Changes to the directory of the batch file

set "destination_directory=%~dp0\..\BepInEx\plugins"

REM Checks if the destination directory exists
if not exist "%destination_directory%" (
    echo The destination directory does not exist.
    exit /b
)

REM Navigates to the destination directory
cd /d "%destination_directory%"

REM Deletes all contents in the destination directory
del /q *.* 2>nul

echo All contents in the directory "%destination_directory%" have been deleted.

PAUSE
