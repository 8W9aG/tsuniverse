#!/bin/sh

set -e

echo "Formatting..."
echo "--- Ruff ---"
ruff format tsuniverse
echo "--- isort ---"
isort tsuniverse

echo "Checking..."
echo "--- Flake8 ---"
flake8 tsuniverse
echo "--- pylint ---"
pylint tsuniverse
echo "--- mypy ---"
mypy tsuniverse
echo "--- Ruff ---"
ruff check tsuniverse
echo "--- pyright ---"
pyright tsuniverse
