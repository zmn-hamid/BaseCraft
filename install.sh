#!/usr/bin/env bash
# BaseCraft Installer
# This script installs everything you need to use BaseCraft.
# You only need to run this once.

set -e

echo "========================================"
echo "  BaseCraft Installer"
echo "========================================"
echo ""

# Step 1: Install uv (Python package manager)
echo "[1/3] Checking for uv..."
if command -v uv &> /dev/null; then
    echo "  uv is already installed!"
else
    echo "  Installing uv..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
    
    # Source the env to pick up uv
    export PATH="$HOME/.local/bin:$PATH"
    
    echo "  uv installed!"
fi

# Step 2: Install project dependencies
echo "[2/3] Installing project dependencies..."
uv sync
echo "  Dependencies installed!"

# Step 3: Create os.txt if it doesn't exist
echo "[3/3] Detecting operating system..."
if [ ! -f "os.txt" ]; then
    if [[ "$OSTYPE" == "darwin"* ]]; then
        echo "mac" > os.txt
        echo "  Created os.txt (detected: mac)"
    elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
        echo "linux" > os.txt
        echo "  Created os.txt (detected: linux)"
    else
        echo "linux" > os.txt
        echo "  Created os.txt (detected: linux)"
    fi
else
    echo "  os.txt already exists!"
fi

echo ""
echo "========================================"
echo "  Installation complete!"
echo "========================================"
echo ""
echo "You can now use BaseCraft!"
echo "Check README.md for instructions on how to get started."
