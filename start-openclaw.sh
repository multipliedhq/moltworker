#!/bin/bash
set -e

CONFIG_DIR="/root/.openclaw"
CONFIG_FILE="$CONFIG_DIR/openclaw.json"

mkdir -p "$CONFIG_DIR"

if [ ! -f "$CONFIG_FILE" ]; then
  echo '{}' > "$CONFIG_FILE"
fi

echo "Starting OpenClaw Gateway on 18789..."
exec openclaw gateway --port 18789 --verbose --allow-unconfigured --bind lan
