@echo off
SET root=%~dp0
SET projectFile="%root%/MyApp/MyApp.csproj"
dotnet run --project %projectFile%
if %errorlevel% neq 0 exit /b %errorlevel%
