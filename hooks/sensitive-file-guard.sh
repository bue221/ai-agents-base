#!/bin/bash
set -euo pipefail

INPUT="$(cat)"

if echo "$INPUT" | grep -Eiq "\.env|credentials\.json|id_rsa|id_ed25519|\.npmrc|\.aws/credentials"; then
  if echo "$INPUT" | grep -Eiq "\.env\.example"; then
    exit 0
  fi
  echo "Blocked access to sensitive file."
  exit 1
fi

exit 0
