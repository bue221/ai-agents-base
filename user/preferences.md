---
description: User Coding Preferences and Styles
globs: ["**/*"]
alwaysApply: true
---
# 🛠️ Mis Preferencias Técnicas (User Preferences)

> **"A mí me gusta el código así, parce."** Aquí van mis gustos personales, patrones favoritos y lo que NO quiero que la AI use.

## 💻 Estilo de Código
- **Lenguaje:** JavaScript/TypeScript (preferiblemente).
- **Semántica:** Nombres descriptivos (nada de `data1`, `tmp_var` mka).
- **Formatting:** Use Prettier (si está configurado). Nada de punto y coma (o sí, según su gusto mka).
- **Patrones:** Prefiero composición sobre herencia. Use Hooks en React, nada de clases.

## 🚫 Lo que NO me gusta
- Nada de `Any` en TypeScript (siempre use tipos específicos mka).
- Evite lógica compleja en el `return` de los componentes.
- No use librerías externas si se puede hacer nativo y fácil.

## 🏗️ Stack Favorito
- **Frontend:** Next.js, Tailwind CSS, Shadcn/UI.
- **Backend:** Node.js, Fastify, Prisma/Drizzle.
- **Tools:** Bun, Vitest, Git.

## 💬 Comunicación
- Explíqueme el **"Por qué"** de los cambios, no solo el **"Qué"**.
- Si el código es una mka ineficiente, dígame de una, no me lo oculte parce.
