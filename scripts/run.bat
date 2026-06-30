@echo off
REM Script Runner
REM Usage: scripts\run.bat my_script.py

if "%~1"=="" (
    echo Usage: scripts\run.bat ^<script_name.py^>
    echo Example: scripts\run.bat my_task.py
    exit /b 1
)

if not exist "%~1" (
    echo Error: Script '%~1' not found.
    exit /b 1
)

echo Running %~1...
uv run python "%~1"
echo Done!
