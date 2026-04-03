# AI Agents Base

Single source of truth for OpenCode, Claude CLI, and Gemini CLI.

## Key principles
- One global `agents.md` with the full agent profile.
- CLI wrapper files reference `./agents.md` as the base instructions.
- Skills live under `skills/` with a consistent structure.
- Engram is mandatory wherever supported, using a global storage path.

## Quick start
1) Clone this repo.
2) Point each CLI to its wrapper file:
   - `opencode.md`
   - `claude.md`
   - `gemini.md`
3) Run the `verify-initial-config` skill on first use.

## Structure
- `agents.md`: global rules and personality.
- `skills/`: reusable skills.
- `subagents/`: modular subagent prompts.
- `docs/`: workflow, templates, and conventions.
- `patterns/`: curated prompts.

## Large tasks
- Must complete `docs/spec-template.md`.
- Must update `docs/decisions.md`.

## Optional tools
See `docs/optional-tools.md`.
