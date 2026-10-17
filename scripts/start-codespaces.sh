#!/usr/bin/env bash
set -euo pipefail
if [[ -z "${CODESPACE_NAME:-}" ]]; then
  echo "This launcher is for GitHub Codespaces." >&2
  exit 1
fi
export HOST=0.0.0.0
export PORT=4173
export GEV_ALLOWED_HOSTS="${CODESPACE_NAME}-4173.app.github.dev"
echo "Starting God's Eye View on your private Codespaces port 4173"
npm run dev
