#!/bin/bash

# ==============================================================================
#  AI-Agents-Base Cursor Installer (Modern Project-level 2025)
#  "Sincronización de un solo cerebro con Cursor mka."
# ==============================================================================

# Colores mka
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${BLUE}🚀 Configurando reglas de Cursor en este proyecto desde su cerebro central, parce...${NC}"

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
AGENTS_CENTRAL="$REPO_DIR/agents.md"
PREFERENCES_CENTRAL="$REPO_DIR/user/preferences.md"

# 1. Crear la carpeta .cursor/rules si no existe mka
mkdir -p .cursor/rules

# 2. Enlazar el cerebro central mka (Cero duplicados)
ln -sf "$AGENTS_CENTRAL" ".cursor/rules/global.mdc"
echo -e "${GREEN}  ✅ Link simbólico a agents.md configurado como global.mdc.${NC}"

# 3. Enlazar las preferencias mka
ln -sf "$PREFERENCES_CENTRAL" ".cursor/rules/preferences.mdc"
echo -e "${GREEN}  ✅ Link simbólico a user/preferences.md configurado como preferences.mdc.${NC}"

echo -e "\n${GREEN}✨ ¡Todo melo, parce! Cursor ahora usa el mismo cerebro que Gemini y Claude mka.${NC}"
echo -e "${YELLOW}Pille: Solo un archivo de verdad, cero duplicados en el repo.${NC}"
