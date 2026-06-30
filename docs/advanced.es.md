# Avanzado

> Todo en esta página es para usuarios que quieren más poder y control. Vuelve aquí después de completar tu primera tarea.

---

## Consejos para Mejores Resultados

- **Sé específico**: "Redimensiona a 800x600" es mejor que "haz las imágenes más pequeñas"
- **Menciona tipos de archivo**: Dile si son JPG, PNG o CSV
- **Describe la salida**: ¿Cómo debe verse el resultado?

---

## Ejemplos

| Tarea | Qué Le Dices a la IA |
|-------|----------------------|
| **Cuadrícula de Imágenes** | "Combina todas las imágenes en workspace en una cuadrícula" |
| **Organizador de Archivos** | "Ordena archivos por tipo: imágenes a 'images', documentos a 'docs'" |
| **Procesador CSV** | "Lee este CSV y calcula el promedio de la columna B" |
| **Renombrador por Lotes** | "Renombra todos los archivos incluyendo la fecha de hoy" |

---

## Herramientas Agent: Que la IA Trabaje Directamente en Tus Archivos

Con la [configuración básica](basic.es.md), usas chatbots en línea (ChatGPT, Gemini, Claude web). La IA escribe código, tú lo copias y pegas, lo ejecutas. Funciona, pero es lento y manual.

**Las herramientas Agent** cambian esto. Permiten que la IA lea y escriba archivos directamente en tu computadora. Sin copiar y pegar. Sin "guarda este archivo aquí." La IA ve tu proyecto, escribe el código y lo ejecuta por ti.

Esta es la forma más poderosa de usar BaseCraft.

### Chatbot en Línea vs Herramienta Agent

| | Chatbot en Línea | Herramienta Agent |
|--|------------------|--------------------|
| **Cómo funciona** | Copias y pegas código manualmente | La IA escribe archivos directamente |
| **Velocidad** | Lento (copiar y pegar cada vez) | Rápido (un clic) |
| **Corrección de errores** | Copias el error de vuelta al chat | La IA ve y corrige errores sola |
| **Mejor para** | Tareas simples y rápidas | Tareas complejas o repetitivas |

### Herramientas Agent Disponibles

| Herramienta | Qué Hace | Costo |
|-------------|----------|-------|
| **MimoCode** | Asistente de IA para código (extensión VS Code) | Gratis |
| **OpenCode** | [OpenCode](https://github.com/opencode-ai/opencode) — Editor de código con IA | Gratis |
| **Claude Code** | CLI agent de Anthropic | Gratis con API key |
| **Hermes** | [Hermes](https://github.com/anthropics/hermes) — Framework de AI agent | Gratis |

### Cómo Configurar (Cualquier Herramienta)

1. Instala la herramienta (sigue las instrucciones oficiales)
2. Abre la carpeta `BaseCraft` en la herramienta
3. Empieza a hablar con la IA — ahora puede ver tus archivos, escribir código y ejecutarlo

Eso es todo. Sin paso de subida. Sin copiar y pegar. La IA ya ve tu proyecto.

### Ejemplo con MimoCode

1. Instala MimoCode (extensión VS Code)
2. Abre VS Code
3. Haz clic en "File" → "Open Folder" → selecciona la carpeta `BaseCraft`
4. Abre el panel de MimoCode (generalmente un ícono en la barra lateral)
5. Escribe: "Combina todas las imágenes en workspace en una cuadrícula"
6. La IA escribe el código directamente en tus archivos y lo ejecuta

### Ejemplo con Claude Code

1. Instala Claude Code (`npm install -g @anthropic-ai/claude-code`)
2. Abre terminal en la carpeta BaseCraft
3. Escribe `claude`
4. Empieza a hablar — Claude puede ver tus archivos y trabajar con ellos directamente

### Aprende Más

Estos canales de Telegram enseñan herramientas de IA y automatización (el idioma es Persa/Farsi pero puedes traducir automáticamente en Telegram):
- [t.me/MatinSenPaii](https://t.me/MatinSenPaii)
- [t.me/appxa](https://t.me/appxa)
