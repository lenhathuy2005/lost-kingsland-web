param(
    [int]$Port = 0
)

$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

function Import-DotEnv([string]$Path) {
    if (-not (Test-Path $Path)) { return }
    Get-Content $Path | ForEach-Object {
        $line = $_.Trim()
        if (-not $line -or $line.StartsWith('#') -or -not $line.Contains('=')) { return }
        $parts = $line.Split('=', 2)
        $name = $parts[0].Trim()
        $value = $parts[1].Trim().Trim('"').Trim("'")
        if ($name) { [Environment]::SetEnvironmentVariable($name, $value, 'Process') }
    }
}

function Test-PortInUse([int]$CheckPort) {
    try {
        $listeners = [System.Net.NetworkInformation.IPGlobalProperties]::GetIPGlobalProperties().GetActiveTcpListeners()
        return ($listeners | Where-Object { $_.Port -eq $CheckPort } | Measure-Object).Count -gt 0
    }
    catch {
        return $false
    }
}

Import-DotEnv (Join-Path $PSScriptRoot '.env')

Write-Host "Lost Kingsland Web V28.1 Connected Portal" -ForegroundColor Yellow
Write-Host "Checking Java 21..."
java -version
if ($LASTEXITCODE -ne 0) { throw "JDK 21 is required." }

Write-Host "Checking Maven..."
mvn -v
if ($LASTEXITCODE -ne 0) { throw "Maven 3.9+ is required." }

# Port priority:
# 1) -Port argument
# 2) WEB_PORT from .env
# 3) default 8790 (kept away from Admin 8787/8788)
if ($Port -gt 0) {
    $requestedPort = $Port
}
elseif ($env:WEB_PORT) {
    try { $requestedPort = [int]$env:WEB_PORT }
    catch { $requestedPort = 8790 }
}
else {
    $requestedPort = 8790
}

$selectedPort = $requestedPort
if (Test-PortInUse $selectedPort) {
    Write-Host "Port $selectedPort is already in use (likely Admin). Selecting another port..." -ForegroundColor Yellow
    $selectedPort = [Math]::Max(8790, $selectedPort + 1)
    while (Test-PortInUse $selectedPort) {
        $selectedPort++
        if ($selectedPort -gt 8899) { throw "Could not find a free web port between 8790 and 8899." }
    }
}

$env:WEB_PORT = "$selectedPort"

# Keep local Discord OAuth callback aligned with the actual web port.
if ($env:DISCORD_REDIRECT_URI -match '^http://(127\.0\.0\.1|localhost):\d+(/.*)$') {
    $redirectPath = $Matches[2]
    $env:DISCORD_REDIRECT_URI = "http://127.0.0.1:$selectedPort$redirectPath"
}
elseif (-not $env:DISCORD_REDIRECT_URI) {
    $env:DISCORD_REDIRECT_URI = "http://127.0.0.1:$selectedPort/auth/discord/callback"
}

$mode = if ($env:WEB_DATA_MODE) { $env:WEB_DATA_MODE } else { 'SNAPSHOT' }
Write-Host "Data mode: $mode" -ForegroundColor Cyan
if ($selectedPort -ne $requestedPort) {
    Write-Host "Requested port $requestedPort was busy -> using $selectedPort" -ForegroundColor Yellow
}
Write-Host "Starting Web: http://127.0.0.1:$selectedPort" -ForegroundColor Green
Write-Host "Discord callback: $env:DISCORD_REDIRECT_URI" -ForegroundColor DarkCyan

mvn spring-boot:run
