#!/bin/bash
set -euo pipefail

INPUT="$(cat)"

if echo "$INPUT" | grep -Eiq "ignore previous|disregard above|system prompt|jailbreak|role:? system|you are now"; then
  echo "Blocked potential prompt injection."
  exit 1
fi

exit 0
