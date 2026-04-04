# overseer

## Description
Run a focused security + quality review of recent changes.

## When to use
- Before merge/ship.
- After sensitive changes (auth, payments, data).

## Steps
1) Review diffs for security risks and data handling.
2) Check for correctness, tests, and edge cases.
3) Flag slop: dead code, vague TODOs, over-abstraction.
4) Provide fixes or follow-ups.

## Output
- Findings + recommended changes.

## Notes
- Keep it actionable and concise.
