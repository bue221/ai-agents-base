#!/bin/bash
set -euo pipefail

ROOT_DIR="${CLAUDE_PRE_COMPACT_DIR:-$HOME/.claude/pre-compact}"
STAMP="$(date +%Y%m%d-%H%M%S)"
OUT_DIR="$ROOT_DIR/$STAMP"

mkdir -p "$OUT_DIR"

if command -v git &>/dev/null; then
  git status -sb > "$OUT_DIR/git-status.txt" 2>/dev/null || true
  git diff > "$OUT_DIR/git-diff.txt" 2>/dev/null || true
  git log -5 --oneline > "$OUT_DIR/git-log.txt" 2>/dev/null || true
fi

echo "Saved pre-compact snapshot to $OUT_DIR"
exit 0
