# 🛠️ Add-CLI Skill
> **"Mka, ¿salió otro CLI? ¡Venga lo amarramos al parche!"** Guía para integrar nuevos asistentes al cerebro central.

## <instructions>
1. **Research (Standard Discovery):** Use `google_web_search` or `run_shell_command` to find:
   - Where the new CLI stores its system instructions (e.g., `~/.config/cli/config.json`, `.clauderc`, `~/.cursor/rules/`).
   - If it supports local Markdown files, YAML, or only global app settings.
2. **Strategy & Planning:** Propose a plan to use **symlinks** from the CLI's config path back to `agents.md` in this repo.
   - If the CLI requires a specific format (e.g., MDC for Cursor), plan how to adapt `agents.md` without duplicating content.
3. **Execution (Implementation):**
   - Generate a specialized installer script (e.g., `scripts/install-newcli.sh`).
   - Update the main `install.sh` if the CLI is a major player (like Gemini or Claude).
4. **Documentation Update:** Add the new CLI to `README.md` and `docs/setup.md`.
5. **Verification:** Confirm that the new CLI is reading the identity from `agents.md`. Ask: "Mka, ¿ya me ve como mentor colombiano en [NEW_CLI]?"
</instructions>
