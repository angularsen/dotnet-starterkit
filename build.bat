@echo off
SET root=%~dp0
SET slnFile="%root%/MyApp.sln"
dotnet build %slnFile%
if %errorlevel% neq 0 exit /b %errorlevel%