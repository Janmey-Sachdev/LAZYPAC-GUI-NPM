$ErrorActionPreference = "Stop"
$TempDir = "$env:TEMP\LAZYPAC"
New-Item -ItemType Directory -Force -Path $TempDir | Out-Null

# Direct download link to your LAZYPAC.exe (e.g., from a GitHub Release)
$DownloadUrl = "https://github.com/Janmey-Sachdev/LAZYPAC-GUI-NPM/releases/download/v1.0.0/LAZYPAC.exe"
$OutputExe = "$TempDir\LAZYPAC.exe"

Write-Host "Downloading LAZYPAC NPM Package Installer..." -ForegroundColor Cyan
Invoke-WebRequest -Uri $DownloadUrl -OutFile $OutputExe

Write-Host "Launching LAZYPAC NPM Package Installer..." -ForegroundColor Green
Start-Process $OutputExe