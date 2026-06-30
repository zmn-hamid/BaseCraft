# Getting Started

This guide takes you from zero to your first automated task.

## What is a Terminal?

A terminal is a text-based way to control your computer. You type commands instead of clicking buttons. You need it to install BaseCraft and run some tasks.

**How to open it:**

| OS | How |
|----|-----|
| **Windows** | Press `Windows key + R`, type `cmd`, press Enter. A black window opens. |
| **Mac** | Press `Cmd + Space`, type `Terminal`, press Enter. |
| **Linux** | Press `Ctrl + Alt + T`. |

When this guide says "open terminal and type something," this is what it means.

> For Windows you can use `PowerShell` instead. You can open both of them by searching too.

## Show File Extensions

You need to see file extensions (like `.py`, `.txt`) so you can save files correctly. Do this before anything else.

| OS | Steps |
|----|-------|
| **Windows 11** | Open any folder → "View" → "Show" → check "File name extensions" |
| **Windows 10** | Open any folder → "View" → check "File name extensions" |
| **Mac** | Open Finder → "Finder" in menu bar → "Settings" → "Advanced" → check "Show all filename extensions" |
| **Linux** | Open your file manager → press `Ctrl+L` or click the address bar → enable "Show Hidden Files" |

## Text Editor

When an AI chatbot gives you code to save, you need a text editor.

- **Basic:** Notepad (already on your computer). Right-click the file → "Open with" → "Notepad"
- **Better:** [Notepad++](https://notepad-plus-plus.org) (free, open multiple files in tabs, more readable)

## Step 1: Download

1. Click the green `<> Code` button at the top of this page
2. Click "Download ZIP"
3. Extract the ZIP to your Desktop (or anywhere else)
4. You now have a `BaseCraft` folder

## Step 2: Install

**Windows:**
1. Open the `BaseCraft` folder
2. Double-click `install.bat`
3. Wait for it to finish (this may take a few minutes)

**Mac/Linux:**
1. Open terminal (see above)
2. Type `cd ` (notice the space afterwards) then drag the `BaseCraft` folder into the terminal window
3. Press Enter
4. Type `bash install.sh` and press Enter
5. Wait for it to finish

## Step 3: Upload to AI Chat

1. Open an AI chatbot (ChatGPT, Gemini, Claude, or similar)
2. Upload these two files:
   - `AGENTS.md` (inside the BaseCraft folder)
   - `os.txt` (the file you just created)
3. Tell AI what you want to automate

**That's it!** AI will guide you step by step.

## Your Workspace

The `workspace/` folder is where you put your files for AI to process.

```
BaseCraft/
├── workspace/          # Put your files here
├── scripts/            # Don't touch this
├── os.txt              # Your operating system
└── README.md           # This file
```

## Tips for Better Results

- **Be specific:** "Resize all images to 800x600" is better than "make images smaller"
- **Mention file types:** Tell AI if files are JPG, PNG, CSV, etc.
- **Describe the output:** What should the result look like?

## Examples

| Task | What You Tell AI |
|------|------------------|
| **Image Grid** | "Combine all images in workspace into a grid" |
| **File Organizer** | "Sort files by type: images to 'images', documents to 'docs'" |
| **CSV Processor** | "Read this CSV and calculate the average of column B" |
| **Batch Renamer** | "Rename all files to include today's date" |

## Getting Help

If something goes wrong:

1. **Copy the error message** and send it to AI
2. **Ask AI again:** "I got this error, how do I fix it?"
3. **Check your files** — make sure they're in the right place
