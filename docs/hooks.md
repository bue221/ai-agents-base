# Hooks

Zero-token guardrails that run outside the model context.

## Included hooks
- `dangerous-actions-blocker.sh`: blocks destructive commands and publishes.
- `prompt-injection-detector.sh`: blocks common jailbreak attempts.
- `output-scanner.sh`: warns on potential secrets in output.
- `sensitive-file-guard.sh`: blocks access to sensitive files.
- `pre-compact.sh`: saves git state before context compaction.

## Installation (manual)
1) Copy hooks to your CLI hooks directory.
   - Example (Claude CLI): `~/.claude/hooks/` or `~/.claude/hooks/neural/`
2) Add hook entries to your CLI settings.json.
3) Ensure scripts are executable (e.g. `chmod +x *.sh`).

## Notes
- Hook interfaces vary by CLI; these scripts expect input via STDIN.
- Treat them as a baseline; adjust patterns to your risk profile.
- `sensitive-file-guard.sh` allows `.env.example` by default.
