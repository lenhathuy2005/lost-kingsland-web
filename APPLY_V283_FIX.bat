@echo off
setlocal EnableExtensions EnableDelayedExpansion
cd /d "%~dp0"

set "ROOT=%CD%"
if exist "%ROOT%\pom.xml" goto :root_ok
if exist "%ROOT%\..\pom.xml" (
  for %%I in ("%ROOT%\..") do set "ROOT=%%~fI"
  goto :root_ok
)

echo [ERROR] Cannot find pom.xml in this folder or its parent.
echo Extract this ZIP into C:\Project\lost-kingsland-web and run again.
pause
exit /b 1

:root_ok
set "DEST=%ROOT%\src\main\java\com\lostkingsland\web\gateway"
echo Project root: %ROOT%
echo Restoring gateway sources to:
echo   %DEST%

if not exist "%DEST%" mkdir "%DEST%"
copy /Y "%~dp0_patch_gateway\GameCoreGateway.java" "%DEST%\GameCoreGateway.java" >nul
copy /Y "%~dp0_patch_gateway\ActionController.java" "%DEST%\ActionController.java" >nul
copy /Y "%~dp0_patch_gateway\WheelPortalController.java" "%DEST%\WheelPortalController.java" >nul

for %%F in (GameCoreGateway.java ActionController.java WheelPortalController.java) do (
  if not exist "%DEST%\%%F" (
    echo [ERROR] Missing after copy: %%F
    pause
    exit /b 2
  )
)

echo.
echo [OK] All 3 gateway source files restored.
echo.
echo Verifying files:
dir /B "%DEST%\*.java"
echo.
echo Now run:
echo   cd /d "%ROOT%"
echo   mvn clean test
pause
