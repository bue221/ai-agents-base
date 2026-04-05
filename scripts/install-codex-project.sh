#!/bin/bash

# ==============================================================================
#  AI-Agents-Base Codex Project Installer
#  "Enlaza AGENTS.md del proyecto al cerebro central."
# ==============================================================================

set -euo pipefail

GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
AGENTS_CENTRAL="$REPO_DIR/agents.md"

if [ ! -f "$AGENTS_CENTRAL" ]; then
  echo -e "${RED}❌ Error: No encontré agents.md en $REPO_DIR${NC}"
  exit 1
fi

echo -e "${BLUE}🚀 Configurando Codex para este proyecto, parce...${NC}"

# Codex CLI típicamente toma instrucciones del repo via ./AGENTS.md
if [ -e "AGENTS.md" ] && [ ! -L "AGENTS.md" ]; then
  echo -e "${YELLOW}⚠️  AGENTS.md existe y no es symlink. Backup a AGENTS.md.bak...${NC}"
  mv "AGENTS.md" "AGENTS.md.bak"
elif [ -L "AGENTS.md" ]; then
  rm "AGENTS.md"
fi

ln -s "$AGENTS_CENTRAL" "AGENTS.md"
echo -e "${GREEN}✅ Listo: AGENTS.md -> $AGENTS_CENTRAL${NC}"

echo -e "${YELLOW}Pille: para skills globales ejecute también ./scripts/install.sh en ai-agents-base${NC}"
