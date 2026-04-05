# Guía de Setup: ai-agents-base

Pille parce, si usted es de los que les gusta entender qué pasa por debajo del capó, aquí le explico cómo funciona la magia.

## 🔗 Cómo funciona la centralización

Cada asistente CLI (Gemini, Claude, OpenCode) lee sus instrucciones de un archivo específico. En lugar de tener tres archivos diferentes, lo que hacemos es crear **enlaces simbólicos** (symlinks) que apuntan todos a un único archivo en este repositorio: `agents.md`.

- **Gemini CLI:** Lee de `~/.gemini/GEMINI.md`.
- **Claude Code:** Lee de `~/.claude/CLAUDE.md`.
- **OpenCode:** Lee de `~/.opencode/AGENTS.md`.

## 🛠️ Instalación Manual

Si no quiere usar los scripts de `scripts/`, puede hacerlo a mano, mka:

1. **Clonar el repo:**
   ```bash
   git clone https://github.com/tu-usuario/ai-agents-base.git ~/ai-agents-base
   ```

2. **Crear los enlaces (Ejemplo para Gemini):**
   ```bash
   ln -s ~/ai-agents-base/agents.md ~/.gemini/GEMINI.md
   ```

## 🧠 Estructura de agents.md

El archivo `agents.md` está diseñado con una mentalidad **Token-First**. Esto significa que usamos frases cortas y directas para no gastar el contexto de la IA innecesariamente.

Si quiere cambiar su identidad o reglas, edite ese archivo y ¡pum!, todos sus agentes se actualizan de una.
