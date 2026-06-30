@echo off
REM Run all validation checks

echo Running pyrefly type check...
uv run pyrefly check
if %errorlevel% neq 0 exit /b %errorlevel%

echo Running ruff lint...
uv run ruff check . --fix
if %errorlevel% neq 0 exit /b %errorlevel%

echo All checks passed.
