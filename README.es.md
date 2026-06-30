# BaseCraft

**¿Cansado de hacer lo mismo una y otra vez? Deja que la IA lo haga por ti.**

No necesitas saber programar. No necesitas aprender código. Solo dile a la IA qué quieres en palabras simples y ella escribirá el script por ti. Luego haz doble clic para ejecutarlo. Eso es todo.

BaseCraft te da todo lo que necesitas para empezar — solo descarga, instala y comienza a automatizar.

---

## Inicio Rápido (2 Minutos)

### 1. Descargar

1. Haz clic en el botón verde `<> Code`
2. Haz clic en "Download ZIP"
3. Extrae el archivo en tu Escritorio

### 2. Instalar

**Windows:**
1. Abre la carpeta `BaseCraft`
2. Haz doble clic en `install.bat`
3. Espera a que termine

**Mac/Linux:**
1. Abre Terminal
2. Escribe `cd ` luego arrastra la carpeta `BaseCraft` al Terminal
3. Presiona Enter
4. Escribe `bash install.sh` y presiona Enter

### 3. Crear os.txt

1. Abre la carpeta `BaseCraft`
2. Crea un archivo nuevo llamado `os.txt`
3. Escribe `windows`, `linux` o `mac` dentro
4. Guarda el archivo

### 4. Subir al Chat de IA

1. Abre un chatbot de IA (como ChatGPT, Gemini o Claude)
2. Sube estos dos archivos:
   - `AGENTS.md`
   - `os.txt`
3. Dile a la IA qué quieres automatizar

**¡Eso es todo!** La IA te guiará paso a paso.

---

## Cómo Funciona

```
Le dices a la IA qué quieres
        ↓
La IA escribe el código
        ↓
Tú guardas el archivo
        ↓
Lo ejecutas
        ↓
¡Listo!
```

### Ejemplo

**Tú dices:** "Tengo 100 fotos. Combínalas en una cuadrícula de 10x10."

**La IA hace:**
- Escribe el código
- Te dice exactamente qué guardar y dónde

**Tú haces:**
- Copias el código en un archivo
- Haces doble clic para ejecutar
- ¡Obtienes tu cuadrícula!

---

## Antes de Empezar: Tres Ajustes Importantes

### 1. Mostrar Extensiones de Archivo

Necesitas ver las extensiones (como `.py`, `.txt`) para editar archivos correctamente.

**Windows 11:**
1. Abre cualquier carpeta
2. Haz clic en "View" arriba
3. Haz clic en "Show"
4. Marca "File name extensions"

**Windows 10:**
1. Abre cualquier carpeta
2. Haz clic en "View" arriba
3. Marca "File name extensions"

**Mac:**
1. Abre Finder
2. Haz clic en "Finder" en la barra de menú → "Settings"
3. Haz clic en "Advanced"
4. Marca "Show all filename extensions"

**Linux:**
1. Abre tu gestor de archivos
2. Presiona `Ctrl+L` o haz clic en la barra de direcciones
3. Busca "Show Hidden Files" y actívalo

### 2. Editar Archivos con Notepad

Cuando la IA te dé código para guardar, necesitas un editor de texto.

**Opción básica:** Usa Notepad (ya está en tu computadora)
- Clic derecho en el archivo → "Open with" → "Notepad"

**Opción mejor:** Instala Notepad++ (gratis, multi-pestaña)
- Descarga desde: https://notepad-plus-plus.org
- Abre múltiples archivos en pestañas
- Ve el código con colores

### 3. Abrir Terminal

Terminal es una forma de texto para controlar tu computadora. Lo necesitas para ejecutar comandos.

**Windows:**
1. Presiona `Windows key + R`
2. Escribe `cmd` y presiona Enter
3. Se abre una ventana negra — eso es tu Terminal

**Mac:**
1. Presiona `Cmd + Space`
2. Escribe `Terminal` y presiona Enter

**Linux:**
1. Presiona `Ctrl + Alt + T`

---

## Tu Espacio de Trabajo

La carpeta `workspace/` es donde pones tus archivos para que la IA los procese.

```
BaseCraft/
├── workspace/          # Pon tus archivos aquí
├── scripts/            # No tocar
├── os.txt              # Tu sistema operativo
└── README.md           # Este archivo
```

---

## Ejemplos

| Tarea | Qué Le Dices a la IA |
|-------|----------------------|
| **Cuadrícula de Imágenes** | "Combina todas las imágenes en workspace en una cuadrícula" |
| **Organizador de Archivos** | "Ordena archivos por tipo" |
| **Procesador CSV** | "Lee este CSV y calcula el promedio de la columna B" |
| **Renombrador por Lotes** | "Renombra todos los archivos incluyendo la fecha de hoy" |

---

## Consejos

- **Sé específico**: "Redimensiona a 800x600" es mejor que "haz las imágenes más pequeñas"
- **Menciona tipos de archivo**: Dile si son JPG, PNG o CSV
- **Describe la salida**: ¿Cómo debe verse el resultado?

---

## Avanzado: Herramientas Agent

Si quieres más poder, puedes instalar **herramientas Agent** para que la IA trabaje directamente con tus archivos — sin copiar.

### Herramientas Agent Gratis

| Herramienta | Qué Hace | Costo |
|-------------|----------|-------|
| **MimoCode** | Asistente de IA para código | Gratis |
| **Cursor** | Editor de código con IA | Gratis |
| **Claude Code** | CLI agent de Anthropic | Gratis con API key |

### Instalación

**Paso 1:** Abre Terminal (ve "Abrir Terminal" arriba)

**Paso 2:** Sigue las instrucciones oficiales de la herramienta

**Paso 3:** Dile a la IA que la use:
> "Tengo [nombre de herramienta] instalado. Por favor escribe el código directamente en mis archivos."

### Aprende Más

Estos canales de Telegram enseñan herramientas de IA y automatización:
- [t.me/MatinSenPaii](https://t.me/MatinSenPaii)
- [t.me/appxa](https://t.me/appxa)

---

## Obteniendo Ayuda

Si algo sale mal:

1. **Copia el mensaje de error** y envíalo a la IA
2. **Pregunta de nuevo**: "Obtuve este error, ¿cómo lo arreglo?"
3. **Revisa tus archivos** — asegúrate de que estén en el lugar correcto

---

## Traducciones

- [English](README.md)
- [Persian (فارسی)](README.fa.md)
