#!/usr/bin/env bash
# Run all validation checks.

failed=0

echo "Running pyrefly type check..."
uv run pyrefly check || failed=1

echo ""
echo "Running ruff lint..."
uv run ruff check . --fix || failed=1

echo ""
if [ $failed -ne 0 ]; then
    echo "Some checks failed. Copy the output above and send it to AI."
else
    echo "All checks passed."
fi
