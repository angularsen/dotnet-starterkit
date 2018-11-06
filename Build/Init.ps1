$root = Resolve-Path $PSScriptRoot/..
$appSettingsDevTemplateFile = "$root/MyApp/appsettings.Development-template.json"
$appSettingsDevFile = "$root/MyApp/appsettings.Development.json"

if (!(Test-Path $appSettingsDevFile)) {
    Write-Host -Foreground Blue "Creating local settings file"
    Copy-Item $appSettingsDevTemplateFile $appSettingsDevFile

    Write-Host "Created: $appSettingsDevFile"
    Write-Host "Add your credentials and secrets to it."
}

Write-Host -ForegroundColor Green "Initialized."