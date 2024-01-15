@echo off
title Install Mods
cd /d "%~dp0"  REM Changes to the directory of the batch file

set "source_directory=%~dp0\Mods"
set "destination_directory=%~dp0\.."

REM Checks if the source directory exists
if not exist "%source_directory%" (
    echo The source directory does not exist.
    exit /b
)

REM Copies all files and folders from the source directory to the destination directory
xcopy /s /y "%source_directory%\*" "%destination_directory%"

echo All files and folders from the directory "%source_directory%" have been copied to the parent directory.

PAUSE
