#!/usr/bin/env bash
set -euo pipefail
if [[ -z "${CODESPACE_NAME:-}" ]]; then
  echo "Run this script inside GitHub Codespaces." >&2
  exit 1
fi
export HOST=0.0.0.0
export PORT=4173
export GEV_ALLOWED_HOSTS="${CODESPACE_NAME}-4173.app.github.dev"
export PUPPETEER_SKIP_DOWNLOAD=1
echo "Node: $(node --version)"
if [[ ! -d node_modules/vite ]]; then
  echo "Installing application dependencies (browser test binaries skipped)..."
  npm ci --no-audit --no-fund
fi
echo "Open the private 4173 port in the Ports tab after the server starts."
exec npm run dev
