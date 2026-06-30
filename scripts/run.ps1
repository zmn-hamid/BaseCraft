# Script Runner
# Usage: .\scripts\run.ps1 my_script.py
# This runs any Python script using the correct uv environment.

$ErrorActionPreference = "Stop"

if ($args.Count -eq 0) {
    Write-Host "Usage: .\scripts\run.ps1 <script_name.py>" -ForegroundColor Yellow
    Write-Host "Example: .\scripts\run.ps1 my_task.py" -ForegroundColor Yellow
    exit 1
}

$script = $args[0]

if (-not (Test-Path $script)) {
    Write-Host "Error: Script '$script' not found." -ForegroundColor Red
    exit 1
}

Write-Host "Running $script..." -ForegroundColor Cyan
uv run python $script
Write-Host "Done!" -ForegroundColor Green