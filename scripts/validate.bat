@echo off
REM Run all validation checks

set "failed=0"

echo Running pyrefly type check...
uv run pyrefly check
if %errorlevel% neq 0 set "failed=1"

echo Running ruff lint...
uv run ruff check . --fix
if %errorlevel% neq 0 set "failed=1"

if %failed% neq 0 (
    echo Some checks failed.
    exit /b 1
)

echo All checks passed.
