# 1. Force modern TLS protocol for secure downloading
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 -bor [Net.SecurityProtocolType]::Tls13

# 2. Define your direct release URL and destination path
$DownloadUrl = "https://github.com/Janmey-Sachdev/LAZYPAC-GUI-NPM/releases/download/v1.0.0/LAZYPAC.exe"
$OutputExe = "$PSScriptRoot\LAZYPAC.exe"

# 3. Download the file
Write-Host "Downloading LAZYPAC NPM Package Installer..." -ForegroundColor Cyan
Invoke-WebRequest -Uri $DownloadUrl -OutFile $OutputExe

Write-Host "Download complete! Saved to: $OutputExe" -ForegroundColor Green
