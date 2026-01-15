#!/usr/bin/env bash
set -e

PYVER="$1"

if [ -z "$PYVER" ]; then
  echo "Error: Python version required."
  echo
  echo "Available pyenv versions:"
  echo
  pyenv versions
  echo
  echo "Usage:"
  echo "  source mkvenv <python-version>"
  exit 1
fi

pyenv local "$PYVER"

echo "Using Python:"
python -V

if [ -d ".venv" ]; then
  echo ".venv already exists"
else
  python -m venv .venv
  echo "Created .venv"
fi

# shellcheck disable=SC1091
source .venv/bin/activate

python -m pip install -U pip wheel setuptools

# Core dev tooling
python -m pip install -U black ruff pytest mypy

echo
echo "✔ .venv activated"
echo "✔ Installed: black, ruff, pytest, mypy"
python -V
