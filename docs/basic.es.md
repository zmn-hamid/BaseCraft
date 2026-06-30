# Primeros Pasos

Esta guía te lleva de cero a tu primera tarea automatizada.

## ¿Qué es una Terminal?

Una terminal es una forma de texto para controlar tu computadora. Escribes comandos en lugar de hacer clic en botones. La necesitas para instalar BaseCraft y ejecutar algunas tareas.

**Cómo abrirla:**

| SO | Cómo |
|----|------|
| **Windows** | Presiona `Windows key + R`, escribe `cmd`, presiona Enter. Se abre una ventana negra. |
| **Mac** | Presiona `Cmd + Space`, escribe `Terminal`, presiona Enter. |
| **Linux** | Presiona `Ctrl + Alt + T`. |

Cuando esta guía dice "abre terminal y escribe algo", esto es lo que significa.

> En Windows puedes usar `PowerShell` en su lugar. Puedes abrir ambos buscándolos.

## Mostrar Extensiones de Archivo

Necesitas ver las extensiones (como `.py`, `.txt`) para guardar archivos correctamente. Haz esto antes que todo lo demás.

| SO | Pasos |
|----|-------|
| **Windows 11** | Abre cualquier carpeta → "View" → "Show" → marca "File name extensions" |
| **Windows 10** | Abre cualquier carpeta → "View" → marca "File name extensions" |
| **Mac** | Abre Finder → "Finder" en la barra de menú → "Settings" → "Advanced" → marca "Show all filename extensions" |
| **Linux** | Abre tu gestor de archivos → presiona `Ctrl+L` o haz clic en la barra de direcciones → activa "Show Hidden Files" |

## Editor de Texto

Cuando un chatbot de IA te dé código para guardar, necesitas un editor de texto.

- **Básico:** Notepad (ya está en tu computadora). Clic derecho en el archivo → "Open with" → "Notepad"
- **Mejor:** [Notepad++](https://notepad-plus-plus.org) (gratis, abrir múltiples archivos en pestañas, más legible)

## Paso 1: Descargar

1. Haz clic en el botón verde `<> Code` en la parte superior de esta página
2. Haz clic en "Download ZIP"
3. Extrae el archivo ZIP en tu Escritorio (o en cualquier otro lugar)
4. Ahora tienes una carpeta `BaseCraft`

## Paso 2: Instalar

**Windows:**
1. Abre la carpeta `BaseCraft`
2. Haz doble clic en `install.bat`
3. Espera a que termine (puede tardar unos minutos)

**Mac/Linux:**
1. Abre terminal (ver arriba)
2. Escribe `cd ` (nota el espacio después) luego arrastra la carpeta `BaseCraft` a la ventana de terminal
3. Presiona Enter
4. Escribe `bash install.sh` y presiona Enter
5. Espera a que termine

## Paso 3: Subir al Chat de IA

1. Abre un chatbot de IA (ChatGPT, Gemini, Claude o similar)
2. Sube estos dos archivos:
   - `AGENTS.md` (dentro de la carpeta BaseCraft)
   - `os.txt` (el archivo que acabas de crear)
3. Dile a la IA qué quieres automatizar

**¡Eso es todo!** La IA te guiará paso a paso.

## Tu Espacio de Trabajo

La carpeta `workspace/` es donde pones tus archivos para que la IA los procese.

```
BaseCraft/
├── workspace/          # Pon tus archivos aquí
├── scripts/            # No tocar
├── os.txt              # Tu sistema operativo
└── README.md           # Este archivo
```

## Consejos para Mejores Resultados

- **Sé específico**: "Redimensiona a 800x600" es mejor que "haz las imágenes más pequeñas"
- **Menciona tipos de archivo**: Dile si son JPG, PNG o CSV
- **Describe la salida**: ¿Cómo debe verse el resultado?

## Ejemplos

| Tarea | Qué Le Dices a la IA |
|-------|----------------------|
| **Cuadrícula de Imágenes** | "Combina todas las imágenes en workspace en una cuadrícula" |
| **Organizador de Archivos** | "Ordena archivos por tipo: imágenes a 'images', documentos a 'docs'" |
| **Procesador CSV** | "Lee este CSV y calcula el promedio de la columna B" |
| **Renombrador por Lotes** | "Renombra todos los archivos incluyendo la fecha de hoy" |

## Obteniendo Ayuda

Si algo sale mal:

1. **Copia el mensaje de error** y envíalo a la IA
2. **Pregunta de nuevo**: "Obtuve este error, ¿cómo lo arreglo?"
3. **Revisa tus archivos** — asegúrate de que estén en el lugar correcto
