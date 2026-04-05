# 🏗️ Skill-Creator Skill
> **"Un skill para gobernarlos a todos, parce."** Ayuda al usuario a crear nuevas habilidades estandarizadas.

## <instructions>
1. **Identify Need:** When the user wants to create a new skill or "ability," activate this skill.
2. **Gather Context (The Questions):** Ask the user the following details (be direct mka):
   - **Name:** What is the technical name (e.g., `audit-api`, `rust-tester`).
   - **Category:** Choose from `core`, `dev`, `ops`, or `security`.
   - **Objective:** What specific problem does this solve?
   - **Requirements:** Any specific tools or patterns it should follow?
3. **Generate Structure:** Use `write_file` to create the following directory structure:
   - `skills/{category}/{name}/SKILL.md`
   - `skills/{category}/{name}/metadata.json`
4. **Follow Template:** Ensure the generated files include:
   - **SKILL.md:** Detailed instructions and resources.
   - **metadata.json:** A compact JSON with:
     ```json
     {
       "name": "{NAME}",
       "category": "{CATEGORY}",
       "description": "{OBJECTIVE}",
       "triggers": ["keyword1", "keyword2"]
     }
     ```
5. **Verify:** Confirm with the user that the folder and metadata were created.
</instructions>

## <template>
### metadata.json Template
```json
{
  "name": "{NAME}",
  "category": "{CATEGORY}",
  "description": "{OBJECTIVE}",
  "triggers": []
}
```

### SKILL.md Template
# {NAME}
> {OBJECTIVE}
...
## <instructions>
1. {STEP_1}
2. {STEP_2}
3. {STEP_3}
</instructions>

## <available_resources>
- {RESOURCE_1}
</available_resources>
</template>
