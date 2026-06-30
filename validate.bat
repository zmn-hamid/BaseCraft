@echo off
REM Run all validation checks

set "failed=0"

echo Running pyrefly type check...
uv run pyrefly check
if %errorlevel% neq 0 set "failed=1"

echo.
echo Running ruff lint...
uv run ruff check . --fix
if %errorlevel% neq 0 set "failed=1"

echo.
if %failed% neq 0 (
    echo Some checks failed. Copy the output above and send it to AI.
) else (
    echo All checks passed.
)

pause
