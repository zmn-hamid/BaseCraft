@echo off
REM Script Runner
REM Usage: scripts\run.bat my_script.py

if "%~1"=="" (
    echo Usage: scripts\run.bat ^<script_name.py^>
    echo Example: scripts\run.bat my_task.py
    exit /b 1
)

REM If no path prefix, assume workspace/
set "script=%~1"
if not exist "%script%" (
    if not exist "workspace\%script%" (
        echo Error: Script '%script%' not found.
        exit /b 1
    )
    set "script=workspace\%script%"
)

echo Running %script%...
uv run python "%script%"
echo Done!
