#!/bin/bash
set -euo pipefail

INPUT="$(cat)"

if echo "$INPUT" | grep -Eiq "rm -rf /|rm -rf ~|drop table|npm publish|pnpm publish|yarn publish|git push --force|git push -f"; then
  echo "Blocked dangerous action."
  exit 1
fi

exit 0
