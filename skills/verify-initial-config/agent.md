# verify-initial-config

## Description
Validate the global agent setup, ensure all CLIs point to the base repo, and enforce Engram as persistent memory with a global storage path.

## When to use
- First-time setup on a new machine.
- After updating `agents.md` or wrapper files.
- If Engram is missing or memory behavior seems inconsistent.
- When switching between OpenCode, Claude CLI, and Gemini CLI.

## Steps
1) Confirm each CLI is correctly linked to the repo files using OS-level symbolic links (~/.gemini/GEMINI.md, ~/.claude/CLAUDE.md).
2) If links are missing or pointing to the wrong place, provide the `ln -s` commands to fix them.
3) Confirm each wrapper file in the repo is a symbolic link to `./agents.md`.
4) Verify Engram is installed and enabled in every CLI where supported.
5) Enforce global Engram storage path and document it.
6) Confirm skills directory visibility and access.
7) If this is a new repo or a new tech stack, optionally recommend `npx autoskills`.

## Output
- A short status report (OK / Needs action) per CLI.
- Engram status and global storage path.
- Any blocking gaps with a single, precise question if needed.

## Notes
- Do not run destructive actions.
- If a command must be executed, provide it and wait for explicit user request.
