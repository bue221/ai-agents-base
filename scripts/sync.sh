#!/bin/bash

# ==============================================================================
#  AI-Agents-Base Sync Script
#  "Mantenga su cerebro central al día, parce."
# ==============================================================================

# Colores mka
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' 

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo -e "${BLUE}🔄 Sincronizando ai-agents-base con el remoto, parce...${NC}"

cd "$REPO_DIR" || exit

# Verificar si es un repo git mka
if [ ! -d ".git" ]; then
    echo -e "${YELLOW}⚠️  No es un repositorio Git. No puedo sincronizar mka.${NC}"
    exit 1
fi

# Intentar hacer el pull mka
if git pull origin main --quiet 2>/dev/null || git pull origin master --quiet 2>/dev/null; then
    echo -e "${GREEN}✅ ¡Cerebro actualizado con éxito! Todo melo.${NC}"
else
    echo -e "${YELLOW}⚠️  No pude sincronizar (de pronto no hay internet o hay conflictos mka).${NC}"
fi
