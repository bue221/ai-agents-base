# create-skill

## Description
Create a new skill with the standard structure, and decide whether it is global (in this repo) or local (project-specific).

## When to use
- You want to add a repeatable prompt or workflow.
- You need a standardized task checklist.

## Steps
1) Ask whether the skill is global or local.
2) Pick a short, kebab-case name.
3) Create `skills/<name>/agent.md` with Description first.
4) Optionally add `docs.md`, `script.sh`, and `assets/` if needed.
5) Update `docs/conventions.md` if new conventions were introduced.

## Template (agent.md)
Title: `<skill-name>`
Sections:
- Description
- When to use
- Steps
- Output
- Notes

## Notes
- Keep the Description short and precise.
- Avoid hidden assumptions.
