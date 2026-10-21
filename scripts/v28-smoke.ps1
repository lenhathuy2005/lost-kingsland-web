param([string]$BaseUrl = "http://127.0.0.1:8788")
$ErrorActionPreference = "Stop"
$BaseUrl = $BaseUrl.TrimEnd('/')
$checks = @(
  "/",
  "/ops.html",
  "/payment/success?orderCode=123",
  "/payment/cancel?orderCode=123",
  "/api/integrations/status"
)
foreach ($path in $checks) {
  try {
    $r = Invoke-WebRequest -UseBasicParsing -Uri ($BaseUrl + $path) -TimeoutSec 8
    Write-Host ("PASS {0} -> {1}" -f $path, $r.StatusCode) -ForegroundColor Green
  } catch {
    Write-Host ("FAIL {0} -> {1}" -f $path, $_.Exception.Message) -ForegroundColor Red
  }
}
Write-Host "Webhook is intentionally not POST-tested here because it may trigger the Bot payment endpoint." -ForegroundColor Yellow
