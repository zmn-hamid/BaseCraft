#!/usr/bin/env bash
# Run all validation checks, stopping on first failure.
set -euo pipefail

echo "Running pyrefly type check..."
uv run pyrefly check

echo "Running ruff lint..."
uv run ruff check . --fix

echo "All checks passed."