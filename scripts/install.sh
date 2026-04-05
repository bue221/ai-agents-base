#!/bin/bash

# ==============================================================================
#  AI-Agents-Base Universal Installer (macOS/Linux) - FULL SYNC VERSION
#  "Sincronización total: Instrucciones, Skills y Subagentes."
# ==============================================================================

# Colores para que se vea elegante mka
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}🚀 Arrancando sincronización total de ai-agents-base, parce...${NC}"

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
AGENTS_FILE="$REPO_DIR/agents.md"
SKILLS_DIR="$REPO_DIR/skills"
SUBAGENTS_DIR="$REPO_DIR/subagents"

# Verificar que el repo tenga lo básico mka
if [ ! -f "$AGENTS_FILE" ]; then
    echo -e "${RED}❌ Error: No encontré el archivo agents.md en el repo.${NC}"
    exit 1
fi

# Función para crear el symlink mka (archivos o carpetas)
create_link() {
    local target=$1
    local link_name=$2
    local label=$3

    # Si el destino ya existe y no es un link, hacemos backup mka
    if [ -e "$link_name" ] && [ ! -L "$link_name" ]; then
        echo -e "  ⚠️  $label real detectado en $link_name. Haciendo backup a .bak..."
        mv "$link_name" "${link_name}.bak"
    elif [ -L "$link_name" ]; then
        # echo -e "  ♻️  Link anterior detectado en $link_name. Reemplazando..."
        rm "$link_name"
    fi

    # Crear el directorio padre si no existe (ej. ~/.gemini)
    mkdir -p "$(dirname "$link_name")"

    # ¡Pum! Link simbólico mka
    ln -s "$target" "$link_name"
    echo -e "${GREEN}  ✅ $label configurado.${NC}"
}

sync_cli() {
    local cli_name=$1
    local config_dir=$2
    local instructions_file=$3

    echo -e "\n${YELLOW}🛠️ Sincronizando $cli_name...${NC}"
    
    # Enlazar Instrucciones Base
    create_link "$AGENTS_FILE" "$config_dir/$instructions_file" "Instrucciones ($instructions_file)"
    
    # Enlazar Skills
    create_link "$SKILLS_DIR" "$config_dir/skills" "Carpeta de Skills"
    
    # Enlazar Subagentes
    create_link "$SUBAGENTS_DIR" "$config_dir/agents" "Carpeta de Subagentes"
}

# 1. Gemini CLI (~/.gemini/)
sync_cli "Gemini CLI" "$HOME/.gemini" "GEMINI.md"

# 2. Claude Code (~/.claude/)
sync_cli "Claude Code" "$HOME/.claude" "CLAUDE.md"

# 3. OpenCode (~/.opencode/)
sync_cli "OpenCode" "$HOME/.opencode" "AGENTS.md"

echo -e "\n${GREEN}✨ ¡TODO MELO, PARCE! ✨${NC}"
echo -e "${BLUE}Sus tres CLIs ahora comparten el mismo Cerebro, Skills y Subagentes.${NC}"
echo -e "${YELLOW}Pille: Cualquier cambio en su repo se refleja instantáneamente mka.${NC}"
