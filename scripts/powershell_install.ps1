# BaseCraft Installer
# This script installs everything you need to use BaseCraft.
# You only need to run this once.

$ErrorActionPreference = "Stop"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  BaseCraft Installer" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Install uv (Python package manager)
Write-Host "[1/3] Checking for uv..." -ForegroundColor Yellow
$uvInstalled = Get-Command uv -ErrorAction SilentlyContinue
if ($uvInstalled) {
    Write-Host "  uv is already installed!" -ForegroundColor Green
} else {
    Write-Host "  Installing uv..." -ForegroundColor Yellow
    powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
    
    # Refresh PATH
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
    
    Write-Host "  uv installed!" -ForegroundColor Green
}

# Step 2: Install Python
Write-Host "[2/3] Checking for Python..." -ForegroundColor Yellow
$pythonInstalled = Get-Command python -ErrorAction SilentlyContinue
if ($pythonInstalled) {
    Write-Host "  Python is already installed!" -ForegroundColor Green
} else {
    Write-Host "  Installing Python via uv..." -ForegroundColor Yellow
    uv python install 3.13
    Write-Host "  Python installed!" -ForegroundColor Green
}

# Step 3: Install project dependencies
Write-Host "[3/3] Installing project dependencies..." -ForegroundColor Yellow
uv sync
Write-Host "  Dependencies installed!" -ForegroundColor Green

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "  Installation complete!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "You can now use BaseCraft!" -ForegroundColor Cyan
Write-Host "Check README.md for instructions on how to get started." -ForegroundColor Cyan
Write-Host ""
Write-Host "Press any key to exit..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
