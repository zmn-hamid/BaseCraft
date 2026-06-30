#!/usr/bin/env bash
# Script Runner
# Usage: ./scripts/run.sh my_script.py
# This runs any Python script using the correct uv environment.

set -e

if [ $# -eq 0 ]; then
    echo "Usage: ./scripts/run.sh <script_name.py>"
    echo "Example: ./scripts/run.sh my_task.py"
    exit 1
fi

script="$1"

if [ ! -f "$script" ]; then
    echo "Error: Script '$script' not found."
    exit 1
fi

echo "Running $script..."
uv run python "$script"
echo "Done!"