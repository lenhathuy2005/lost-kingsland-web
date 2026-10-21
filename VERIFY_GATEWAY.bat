@echo off
setlocal
cd /d "%~dp0"
set "ROOT=%CD%"
if not exist "%ROOT%\pom.xml" if exist "%ROOT%\..\pom.xml" for %%I in ("%ROOT%\..") do set "ROOT=%%~fI"
set "DEST=%ROOT%\src\main\java\com\lostkingsland\web\gateway"
echo Project root: %ROOT%
echo.
for %%F in (GameCoreGateway.java ActionController.java WheelPortalController.java) do (
  if exist "%DEST%\%%F" (echo [OK] %%F) else (echo [MISSING] %%F)
)
pause
