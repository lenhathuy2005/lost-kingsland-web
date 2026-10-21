Lost Kingsland Web V28.1 - Port Hotfix

- Web default port changed from 8788 to 8790.
- run.ps1 now detects an occupied port and automatically selects the next free port.
- Local DISCORD_REDIRECT_URI is automatically adjusted to the selected port for this process.
- run.bat bypasses PowerShell execution-policy blocking for this launcher only.
- Existing .env is NOT included or overwritten.

Recommended:
  run.bat

Or PowerShell:
  powershell.exe -ExecutionPolicy Bypass -File .\run.ps1

Optional fixed port:
  powershell.exe -ExecutionPolicy Bypass -File .\run.ps1 -Port 8795
