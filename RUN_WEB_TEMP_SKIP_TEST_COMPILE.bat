@echo off
cd /d "%~dp0"
set "ROOT=%CD%"
if not exist "%ROOT%\pom.xml" if exist "%ROOT%\..\pom.xml" for %%I in ("%ROOT%\..") do set "ROOT=%%~fI"
cd /d "%ROOT%"
echo TEMPORARY START: Maven test sources will be skipped.
echo Fix gateway sources permanently with APPLY_V283_FIX.bat.
mvn -Dmaven.test.skip=true spring-boot:run
pause
