#!/usr/bin/env bash
# Run all validation checks.

failed=0

echo "Running pyrefly type check..."
uv run pyrefly check || failed=1

echo "Running ruff lint..."
uv run ruff check . --fix || failed=1

if [ $failed -ne 0 ]; then
    echo "Some checks failed."
    exit 1
fi

echo "All checks passed."
