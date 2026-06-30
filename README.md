# BaseCraft

**Turn your daily repetitive tasks into simple scripts — no programming knowledge required.**

BaseCraft is a starter project that helps you create small automation tools using AI. You describe what you want in plain English, and AI writes the code for you.

---

## Getting Started (2 Minutes)

### Step 1: Download the Project

1. Go to the project's GitHub page
2. Click the green "<> Code" button
3. Click "Download ZIP"
4. Extract the ZIP file to somewhere easy to find (like your Desktop)

### Step 2: Install Everything

**Windows:**
1. Open the `BaseCraft` folder
2. Right click on `install.ps1` and choose "Run with PowerShell"
3. If Windows asks "Do you want to run this script?", click "Open" or "Run anyway"
4. Wait for it to finish

**Mac/Linux:**
1. Open Terminal
2. Type `cd ` then drag the `BaseCraft` folder into Terminal (this types the path for you)
3. Press Enter
4. Type `bash install.sh` and press Enter
5. Wait for it to finish

This installs the Python language and everything else you need. You only do this once.

### Step 3: Tell AI Your Operating System

AI needs to know your operating system to help you properly.

1. Open the `BaseCraft` folder
2. Create a new text file called `os.txt`
3. Write one of these inside: `windows`, `linux`, or `mac`
4. Save the file

That's it. You're ready to start!

---

## How It Works

1. **You tell AI what you want** — in plain English
2. **AI writes the code** — saves it in your project
3. **You run it** — your task is automated!

### Example: Combining Images into a Grid

Let's say you have 100 photos and want to combine them into a single grid image.

**What you tell AI:**

> "I have 100 JPG images in a folder called 'photos'. I want to combine them into a 10x10 grid image. Save the result as 'grid.jpg'."

**What AI does:**
- Writes a Python script for you
- Creates a simple script to run it

**What you do next:**
- Put your photos in the `workspace` folder
- Run the script AI created
- Get your grid image!

---

## Running Your Scripts (Program)

When AI writes a script for you, it will also create a simple "run" script in the main folder.

Just double-click that script to run it. That's it.

---

## Your Workspace

The `workspace` folder is where you put your files for AI to work with.

```
BaseCraft/
├── workspace/          # Put your files here
├── scripts/            # Helper scripts (don't touch)
├── install.ps1         # Windows installer
├── install.sh          # Mac/Linux installer
├── os.txt              # Your operating system (create this)
└── README.md           # This file
```

If your files are somewhere else, you need to specifically tell ai to look up there.

---

## Real-World Examples

Here are some things you can automate with BaseCraft:

| Task | What You Ask AI |
|------|-----------------|
| **Image Grid** | "Combine all images in workspace into a grid" |
| **File Organizer** | "Sort files by type: images to 'images', documents to 'docs'" |
| **CSV Processor** | "Read this CSV and calculate the average of column B" |
| **Batch Renamer** | "Rename all files to include today's date" |

---

## Tips for Talking to AI

The better you describe what you want, the better the result.

- **Be specific**: "Resize all images to 800x600 pixels" is better than "make images smaller"
- **Mention file types**: Tell AI what format your files are (JPG, PNG, CSV, etc.)
- **Describe the output**: What should the result look like? Where should it be saved?

---

## Getting Help

If something doesn't work:

1. **Check the error message** — AI can help you fix it if you share the error
2. **Ask AI again** — paste the error and say "I got this error, how do I fix it?"

---

## What's Next?

Once you're comfortable with the basics, you can:

- Create more complex automations
- Combine multiple scripts
- Build small applications

The possibilities are endless — and you don't need to learn programming to make them happen.

---

## Translations

This README is available in other languages:

- [Persian (فارسی)](README.fa.md)
- [Spanish (Español)](README.es.md)