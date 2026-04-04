#!/bin/bash
set -euo pipefail

INPUT="$(cat)"

if echo "$INPUT" | grep -Eiq "(sk-[a-zA-Z0-9]{20,}|xox[baprs]-|ghp_[a-zA-Z0-9]{20,}|AIza[0-9A-Za-z_-]{35})"; then
  echo "Warning: possible secret detected in output."
fi

exit 0
