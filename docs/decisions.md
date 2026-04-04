# Decision Log

Use this file for large tasks. Record the key tradeoffs and why.

## Template
- Date:
- Decision:
- Options considered:
- Why this option:
- Risks:
- Follow-ups:

## 2026-04-04
- Decision: Compact core rules + on-demand skills + optional hooks for token reduction.
- Options considered: keep full rules in agents.md vs compact core with skills/hooks.
- Why this option: reduce per-message token overhead while preserving guardrails via hooks and skills.
- Risks: compact rules may lose nuance; hook compatibility varies by CLI.
- Follow-ups: validate CLI hook support and run verify-initial-config.
