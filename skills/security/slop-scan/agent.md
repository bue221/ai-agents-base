# slop-scan

## Description
Detect AI slop, tech debt, and dead/unused code.

## When to use
- Before shipping or refactors.
- After large edits by AI.

## Steps
1) Identify dead code, unused exports, and redundant abstractions.
2) Flag vague TODOs or low-signal comments.
3) Suggest removals or tighter implementations.

## Output
- List of slop findings + suggested fixes.

## Notes
- Prefer deletion over piling on abstractions.
