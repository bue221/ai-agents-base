# 🔍 Project-Context Skill
> **"Dígame en qué cancha estamos jugando, parce."** Escanea el proyecto actual para entender el stack técnico y las reglas de juego.

## <instructions>
1. **Initial Scan:** When activated, list the root directory and key files (`package.json`, `README.md`, `tsconfig.json`, `Cargo.toml`, `.env.example`, etc.) using `ls` or `glob`.
2. **Deep Dive:** Read the main dependencies and scripts from `package.json` (or equivalent) and any architectural notes in `README.md`.
3. **Analyze Structure:** Identify the project pattern (e.g., Clean Architecture, MVC, Monorepo, etc.) based on folder structure.
4. **Summary & Memory:** Generate a technical summary of:
   - **Stack:** (e.g., Next.js, Prisma, TypeScript).
   - **Conventions:** (e.g., Tailing commas, specific folder for components).
   - **Gaps:** (e.g., missing tests, outdated README).
5. **Persistence:** Use `mem_save` to store this "Project Context" so subsequent turns don't need a re-scan mka.
6. **Confirmation:** Tell the user: "Mka, ya pillé que estamos en un proyecto de [STACK]. Todo listo para camellar, parce."
</instructions>
