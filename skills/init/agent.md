# init

## Description
Generate a project-specific agent file from the compact base.

## When to use
- New project setup.
- When project constraints changed significantly.

## Steps
1) Scan repo structure, README, and docs.
2) Extract key constraints, stack, and workflows.
3) Create a minimal project agent file referencing the base rules.
4) Report what was generated and where it lives.

## Output
- Project agent file path + summary of assumptions.

## Notes
- Keep it short; move details into skills if needed.
