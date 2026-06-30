# Run all validation checks, stopping on first failure.
$ErrorActionPreference = "Stop"

Write-Host "Running pyrefly type check..." -ForegroundColor Cyan
uv run pyrefly check
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

Write-Host "Running ruff lint..." -ForegroundColor Cyan
uv run ruff check . --fix
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

Write-Host "All checks passed." -ForegroundColor Green
