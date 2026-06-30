# BaseCraft

**Tired of doing the same thing over and over? Let AI do it for you.**

You don't need to know programming. You don't need to learn code. Just tell AI what you want in plain English, and it writes the script for you. Then you double-click to run it. That's it.

BaseCraft gives you everything you need to get started — just download, install, and start automating.

---

## Quick Start (2 Minutes)

### 1. Download

1. Click the green `<> Code` button
2. Click "Download ZIP"
3. Extract to your Desktop

### 2. Install

**Windows:**
1. Open the `BaseCraft` folder
2. Double-click `install.bat`
3. Wait for it to finish

**Mac/Linux:**
1. Open Terminal
2. Type `cd ` then drag the `BaseCraft` folder into Terminal
3. Press Enter
4. Type `bash install.sh` and press Enter

### 3. Create os.txt

1. Open the `BaseCraft` folder
2. Create a new file called `os.txt`
3. Write `windows`, `linux`, or `mac` inside
4. Save it

### 4. Upload to AI Chat

1. Open an AI chatbot (like ChatGPT, Gemini, or Claude)
2. Upload these two files:
   - `AGENTS.md`
   - `os.txt`
3. Tell AI what you want to automate

**That's it!** AI will guide you step by step.

---

## How It Works

```
You tell AI what you want
        ↓
AI writes the code
        ↓
You save the file
        ↓
You run it
        ↓
Task done!
```

### Example

**You say:** "I have 100 photos. Combine them into a 10x10 grid."

**AI does:**
- Writes the code
- Tells you exactly what to save and where

**You do:**
- Copy the code into a file
- Double-click to run
- Get your grid image!

---

## Before You Start: Three Important Settings

### 1. Show File Extensions

You need to see file extensions (like `.py`, `.txt`) to edit files correctly.

**Windows 11:**
1. Open any folder
2. Click "View" at the top
3. Click "Show"
4. Check "File name extensions"

**Windows 10:**
1. Open any folder
2. Click "View" at the top
3. Check "File name extensions"

**Mac:**
1. Open Finder
2. Click "Finder" in the menu bar → "Settings"
3. Click "Advanced"
4. Check "Show all filename extensions"

**Linux:**
1. Open your file manager
2. Press `Ctrl+L` or click the address bar
3. Look for "Show Hidden Files" and enable it

### 2. Edit Files with Notepad

When AI gives you code to save, you need a text editor.

**Basic option:** Use Notepad (already on your computer)
- Right-click the file → "Open with" → "Notepad"

**Better option:** Install Notepad++ (free, multi-tab)
- Download from: https://notepad-plus-plus.org
- Open multiple files in tabs
- See code colors clearly

### 3. Open Terminal

Terminal is a text-based way to control your computer. You need it to run commands.

**Windows:**
1. Press `Windows key + R`
2. Type `cmd` and press Enter
3. A black window opens — that's your terminal

**Mac:**
1. Press `Cmd + Space`
2. Type `Terminal` and press Enter

**Linux:**
1. Press `Ctrl + Alt + T`

---

## Your Workspace

The `workspace/` folder is where you put your files for AI to process.

```
BaseCraft/
├── workspace/          # Put your files here
├── scripts/            # Don't touch this
├── os.txt              # Your operating system
└── README.md           # This file
```

---

## Examples

| Task | What You Tell AI |
|------|------------------|
| **Image Grid** | "Combine all images in workspace into a grid" |
| **File Organizer** | "Sort files by type: images to 'images', documents to 'docs'" |
| **CSV Processor** | "Read this CSV and calculate the average of column B" |
| **Batch Renamer** | "Rename all files to include today's date" |

---

## Tips

- **Be specific**: "Resize all images to 800x600" is better than "make images smaller"
- **Mention file types**: Tell AI if files are JPG, PNG, CSV, etc.
- **Describe the output**: What should the result look like?

---

## Going Further: Agent Tools

If you want more power and automation, you can set up **agent tools** that let AI directly work with your files — no copy-paste needed.

### Free Agent Tools

| Tool | What It Does | Cost |
|------|--------------|------|
| **MimoCode** | AI coding assistant (VS Code extension) | Free tier available |
| **Cursor** | AI-powered code editor | Free tier available |
| **Claude Code** | Anthropic's CLI agent | Free with API key |

### How to Set Up

**Step 1:** Open terminal (see "Open Terminal" above)

**Step 2:** Follow the tool's official installation instructions

**Step 3:** Tell AI to use it:
> "I have [tool name] set up. Please write the code directly to my files."

### Learn More

These Telegram channels teach AI tools and automation in Persian:
- [t.me/MatinSenPaii](https://t.me/MatinSenPaii)
- [t.me/appxa](https://t.me/appxa)

---

## Getting Help

If something goes wrong:

1. **Copy the error message** and send it to AI
2. **Ask AI again**: "I got this error, how do I fix it?"
3. **Check your files** — make sure they're in the right place

---

## Translations

- [Persian (فارسی)](README.fa.md)
- [Spanish (Español)](README.es.md)
