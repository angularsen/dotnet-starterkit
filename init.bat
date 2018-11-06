@echo off
SET root=%~dp0
powershell -NoProfile %root%/Build/init.ps1
if %errorlevel% neq 0 exit /b %errorlevel%