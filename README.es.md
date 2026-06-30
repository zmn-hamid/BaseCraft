# BaseCraft

**Convierte tus tareas repetitivas diarias en scripts simples — sin necesidad de conocimientos de programación.**

BaseCraft es un proyecto inicial que te ayuda a crear pequeñas herramientas de automatización usando inteligencia artificial. Describes lo que quieres en inglés sencillo y la IA escribe el código por ti.

---

## Comenzando (2 Minutos)

### Paso 1: Descargar el Proyecto

1. Ve a la página de GitHub del proyecto
2. Haz clic en el botón verde "<> Code"
3. Haz clic en "Download ZIP"
4. Extrae el archivo ZIP en un lugar fácil de encontrar (como tu Escritorio)

### Paso 2: Instalar Todo

**Windows:**
1. Abre la carpeta `BaseCraft`
2. Haz clic derecho en `install.ps1` y elige "Run with PowerShell"
3. Si Windows pregunta "¿Deseas ejecutar este script?", haz clic en "Open" o "Run anyway"
4. Espera a que termine

**Mac/Linux:**
1. Abre Terminal
2. Escribe `cd ` luego arrastra la carpeta `BaseCraft` al Terminal (esto escribe la ruta por ti)
3. Presiona Enter
4. Escribe `bash install.sh` y presiona Enter
5. Espera a que termine

Esto instala Python y todo lo que necesitas. Solo haces esto una vez.

### Paso 3: Dice a la IA tu Sistema Operativo

La IA necesita saber tu sistema operativo para ayudarte correctamente.

1. Abre la carpeta `BaseCraft`
2. Crea un nuevo archivo de texto llamado `os.txt`
3. Escribe uno de estos dentro: `windows`, `linux` o `mac`
4. Guarda el archivo

¡Eso es todo! Estás listo para empezar.

---

## Cómo Funciona

1. **Le dices a la IA qué quieres** — en inglés sencillo
2. **La IA escribe el código** — lo guarda en tu proyecto
3. **Tú lo ejecutas** — ¡tu tarea se automatiza!

### Ejemplo: Combinar Imágenes en una Cuadrícula

Digamos que tienes 100 fotos y quieres combinarlas en una sola imagen de cuadrícula.

**Lo que le dices a la IA:**

> "Tengo 100 imágenes JPG en una carpeta llamada 'photos'. Quiero combinarlas en una cuadrícula de 10x10. Guarda el resultado como 'grid.jpg'."

**Lo que hace la IA:**
- Escribe un script de Python por ti
- Crea un script simple para ejecutarlo

**Lo que haces tú:**
- Pon tus fotos en la carpeta `workspace`
- Ejecuta el script que la IA creó
- ¡Obtén tu imagen de cuadrícula!

---

## Ejecutando Tus Scripts (Programa)

Una vez que la IA escribe un script para ti, crea un script "ejecutar" simple en la carpeta principal.

Solo haz doble clic en ese script para ejecutarlo. Eso es todo.

---

## Tu Espacio de Trabajo

La carpeta `workspace` es donde pones tus archivos para que la IA los procese.

```
BaseCraft/
├── workspace/          # Pon tus archivos aquí
├── scripts/            # Scripts auxiliares (no tocar)
├── install.ps1         # Instalador para Windows
├── install.sh          # Instalador para Mac/Linux
├── os.txt              # Tu sistema operativo (crea esto)
└── README.md           # Este archivo
```

Si tus archivos están en otro lugar, necesitas decirle específicamente a la IA que busque allí.

---

## Ejemplos del Mundo Real

Aquí hay algunas cosas que puedes automatizar con BaseCraft:

| Tarea | Qué Le Dices a la IA |
|-------|----------------------|
| **Cuadrícula de Imágenes** | "Combina todas las imágenes en workspace en una cuadrícula" |
| **Organizador de Archivos** | "Ordena archivos por tipo: imágenes a 'images', documentos a 'docs'" |
| **Procesador CSV** | "Lee este CSV y calcula el promedio de la columna B" |
| **Renombrador por Lotes** | "Renombra todos los archivos incluyendo la fecha de hoy" |

---

## Consejos para Hablar con la IA

Cuanto mejor describas lo que quieres, mejor será el resultado.

- **Sé específico**: "Redimensiona todas las imágenes a 800x600 píxeles" es mejor que "haz las imágenes más pequeñas"
- **Menciona los tipos de archivo**: Dile a la IA en qué formato están tus archivos (JPG, PNG, CSV, etc.)
- **Describe la salida**: ¿Cómo debe verse el resultado? ¿Dónde debe guardarse?

---

## Obteniendo Ayuda

Si algo no funciona:

1. **Revisa el mensaje de error** — la IA puede ayudarte a arreglarlo si compartes el error
2. **Pregunta a la IA de nuevo** — pega el error y di "Obtuve este error, ¿cómo lo arreglo?"

---

## ¿Qué Sigue?

Una vez que estés cómodo con lo básico, puedes:

- Crear automatizaciones más complejas
- Combinar múltiples scripts
- Construir pequeñas aplicaciones

¡Las posibilidades son infinitas — y no necesitas aprender programación para hacerlas realidad!

---

## Traducciones

Este README está disponible en otros idiomas:

- [English](README.md)
- [Persian (فارسی)](README.fa.md)