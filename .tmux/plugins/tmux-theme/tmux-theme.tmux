#!/usr/bin/env bash

CUSTOM_THEME="src/theme.sh"
CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

tmux source-file "$CURRENT_DIR/$CUSTOM_THEME"
