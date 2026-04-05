# 🧠 AI Agents Base

> **Un solo cerebro, todos tus CLIs.** Configuración centralizada para Gemini CLI, Claude Code y OpenCode.

Este repositorio es la fuente de la verdad para tus asistentes de IA. Olvídate de configurar la identidad, las reglas de respuesta y los skills en tres lugares diferentes. Con **AI Agents Base**, lo haces una vez y se refleja en todos lados.

## ✨ Características

- 🇨🇴 **Identidad Unificada:** Mentor técnico experto con tono colombiano (opcional pero recomendado mka).
- 🚀 **Instalación en un paso:** Scripts para macOS, Linux y Windows.
- 🛠️ **Skills Modulares:** Habilidades compartidas que tus agentes cargan bajo demanda.
- ⚡ **Token-First:** Reglas compactas diseñadas para ahorrar contexto y ser eficientes.

## 🚀 Instalación Rápida

Pille, parce, es muy sencillo. Solo clone el repo y corra el instalador:

```bash
git clone https://github.com/tu-usuario/ai-agents-base.git
cd ai-agents-base
./scripts/install.sh
```

**¿Estás en Windows?** Mka, no hay problema:
```powershell
.\scripts\install.ps1
```

## 📂 Estructura del Proyecto

- `agents.md`: **El Cerebro.** Aquí vive la identidad, tono y reglas globales.
- `skills/`: Habilidades específicas (ej. seguridad, testing, refactorización). **Cada skill DEBE incluir un `metadata.json`** para facilitar su descubrimiento dinámico por parte de la IA.

## 🧱 Estándar de Skills

Para que un skill sea válido, su carpeta debe contener:
1. `SKILL.md`: Instrucciones detalladas.
2. `metadata.json`: Metadatos compactos (`name`, `description`, `triggers`) que la AI lee antes de cargar toda la habilidad.

¿Tiene un skill melo o una regla que ahorra mil tokens? ¡Mande el PR, parce!
1. Lea [docs/contributing.md](docs/contributing.md).
2. Cree su rama y proponga el cambio.

---
Hecho con ❤️ por [Tu Nombre/Usuario]
