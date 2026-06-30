# Getting Started

This guide takes you from zero to your first automated task.

---

## What is a Terminal?

A terminal is a text-based way to control your computer. You type commands instead of clicking buttons. You need it to install BaseCraft and run some tasks.

**How to open it:**

| OS | How |
|----|-----|
| **Windows** | Press `Windows key + R`, type `cmd`, press Enter. A black window opens. |
| **Mac** | Press `Cmd + Space`, type `Terminal`, press Enter. |
| **Linux** | Press `Ctrl + Alt + T`. |

When this guide says "open terminal and type something," this is what it means.

---

## Show File Extensions

You need to see file extensions (like `.py`, `.txt`) so you can save files correctly. Do this before anything else.

| OS | Steps |
|----|-------|
| **Windows 11** | Open any folder → "View" → "Show" → check "File name extensions" |
| **Windows 10** | Open any folder → "View" → check "File name extensions" |
| **Mac** | Open Finder → "Finder" in menu bar → "Settings" → "Advanced" → check "Show all filename extensions" |
| **Linux** | Open your file manager → press `Ctrl+L` or click the address bar → enable "Show Hidden Files" |

---

## Text Editor

When AI gives you code to save, you need a text editor.

- **Basic:** Notepad (already on your computer). Right-click the file → "Open with" → "Notepad"
- **Better:** [Notepad++](https://notepad-plus-plus.org) (free, see code colors, open multiple files in tabs)

---

## Step 1: Download

1. Click the green `<> Code` button at the top of this page
2. Click "Download ZIP"
3. Extract the ZIP to your Desktop
4. You now have a `BaseCraft` folder

---

## Step 2: Install

**Windows:**
1. Open the `BaseCraft` folder
2. Double-click `install.bat`
3. Wait for it to finish (this may take a few minutes)

**Mac/Linux:**
1. Open terminal (see above)
2. Type `cd ` then drag the `BaseCraft` folder into the terminal window
3. Press Enter
4. Type `bash install.sh` and press Enter
5. Wait for it to finish

---

## Step 3: os.txt

During installation, `os.txt` was created automatically with your operating system. You don't need to do anything here.

If you need to change it (for example, if it detected the wrong OS):

1. Open the `BaseCraft` folder
2. Open `os.txt` in Notepad
3. Type exactly: `windows` (or `linux` or `mac`)
4. Save and close

---

## Step 4: Upload to AI Chat

1. Open an AI chatbot (ChatGPT, Gemini, Claude, or similar)
2. Upload these two files:
   - `AGENTS.md` (inside the BaseCraft folder)
   - `os.txt` (the file you just created)
3. Tell AI what you want to automate

**That's it!** AI will guide you step by step.

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

## Getting Help

If something goes wrong:

1. **Copy the error message** and send it to AI
2. **Ask AI again:** "I got this error, how do I fix it?"
3. **Check your files** — make sure they're in the right place
