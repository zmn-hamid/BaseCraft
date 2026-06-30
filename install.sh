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

# Step 2: Install Python
echo "[2/3] Checking for Python..."
if command -v python3 &> /dev/null; then
    echo "  Python is already installed!"
else
    echo "  Installing Python via uv..."
    uv python install 3.13
    echo "  Python installed!"
fi

# Step 3: Install project dependencies
echo "[3/3] Installing project dependencies..."
uv sync
echo "  Dependencies installed!"

echo ""
echo "========================================"
echo "  Installation complete!"
echo "========================================"
echo ""
echo "You can now use BaseCraft!"
echo "Check README.md for instructions on how to get started."