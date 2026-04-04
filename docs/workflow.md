# Workflow

## Default flow
1) Understand the request and confirm scope.
2) Decide task size (small/medium/large).
3) For large tasks, complete `docs/spec-template.md` and update `docs/decisions.md`.
4) Execute changes with minimal risk.
5) Validate with tests or checks.
6) If logic changed, update relevant docs/README/decisions.

## Brainstorming flow
1) Generate options.
2) Compare tradeoffs.
3) Choose a direction.

## Risk reduction
- Always call out edge cases.
- Prefer reversible changes.
- Prefer hooks for enforcement when available.
