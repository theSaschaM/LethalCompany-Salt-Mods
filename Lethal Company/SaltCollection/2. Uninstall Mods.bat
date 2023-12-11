@echo off
cd /d "%~dp0"  REM Wechselt zum Verzeichnis der Batch-Datei

set "zielverzeichnis=%~dp0\..\BepInEx\plugins"

REM Überprüft, ob das Zielverzeichnis existiert
if not exist "%zielverzeichnis%" (
    echo Das Zielverzeichnis existiert nicht.
    exit /b
)

REM Navigiert zum Zielverzeichnis
cd /d "%zielverzeichnis%"

REM Löscht alle Inhalte im Zielverzeichnis
del /q *.* 2>nul

echo Alle Inhalte im Verzeichnis "%zielverzeichnis%" wurden gelöscht.
