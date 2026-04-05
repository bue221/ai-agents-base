# forge

## Description
End-to-end dev pipeline: scan, plan, execute, review, ship.

## When to use
- Medium/large tasks needing structured execution.
- Risky changes where quality gates matter.

## Steps
1) Scan: read relevant files, history, and constraints.
2) Plan: list requirements, acceptance criteria, and tasks.
3) Execute: implement in small, reversible steps.
4) Review: security + quality check (fresh context if needed).
5) Ship: summarize changes and wait for confirmation.

## Output
- Short status per stage.
- Final summary + risks.

## Notes
- Prefer hooks for enforcement when available.
