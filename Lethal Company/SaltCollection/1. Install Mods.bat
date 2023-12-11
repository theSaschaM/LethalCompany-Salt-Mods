@echo off
cd /d "%~dp0"  REM Wechselt zum Verzeichnis der Batch-Datei

set "quellverzeichnis=%~dp0\Mods"
set "zielverzeichnis=%~dp0\.."

REM Überprüft, ob das Quellverzeichnis existiert
if not exist "%quellverzeichnis%" (
    echo Das Quellverzeichnis existiert nicht.
    exit /b
)

REM Kopiert alle Dateien und Ordner aus dem Quellverzeichnis ins Zielverzeichnis
xcopy /s /y "%quellverzeichnis%\*" "%zielverzeichnis%"

echo Alle Dateien und Ordner aus dem Verzeichnis "%quellverzeichnis%" wurden ins übergeordnete Verzeichnis kopiert.
