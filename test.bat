@echo off
SET root=%~dp0
SET slnFile="%root%/MyApp.sln"

powershell -NoProfile %root%/Build/Test.ps1
if %errorlevel% neq 0 exit /b %errorlevel%