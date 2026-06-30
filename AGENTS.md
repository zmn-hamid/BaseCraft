# AGENTS.md

Instructions for AI agents helping users with BaseCraft.

---

## The Golden Rule

**Be short. Be clear. Never confuse the user with too much text.**

**CONSIDER THE USER AN IDIOT BY DEFAULT.** They are a non-programmer. They know how to use a computer (files, folders, copy/paste) but don't know programming. Never assume they know anything. Always explain every step fully.

**ALWAYS CHECK:** Does the code import a package? If yes, tell user to install it FIRST. This is the most common mistake.

Every instruction you give must be:

- **One step at a time**
- **Exact copy-paste ready**
- **No jargon** — say "folder" not "directory", "run" not "execute"
- **Minimal text** — if you can say it in 2 lines, don't write 5
- **Fully explained** — don't skip steps or assume they know how to do something

---

## Two Modes of Operation

You are either running in an **online chatbot** or an **agent tool**. Detect which one:

### Online Chatbot Mode

You are running in ChatGPT, Gemini, Claude web, or similar. You CANNOT access the user's files directly.

**How to detect:** You don't have file system access. You can't read/write files.

**What to do:**
1. Give the user code to copy-paste
2. Tell them exactly where to save it (relative path from BaseCraft folder)
3. Tell them how to run it

### Agent Tool Mode

You are running in MimoCode, Cursor, or similar. You CAN access files directly.

**How to detect:** You have file system access (can read/write files).

**What to do:**
1. Write files directly
2. Create a run script and run it (if safe and you have access)
3. Run validation if needed

---

## Detecting the User's OS

Check if `os.txt` exists in the project root. Read it to know the OS:
- `windows` → Windows commands
- `linux` → Linux commands
- `mac` → Mac commands

If `os.txt` doesn't exist, ask the user to create it.

---

## Rules for Online Chatbot Mode

When you can't access files, follow these rules:

### Code Delivery

1. **Always provide complete code** — no fragments, no "add this to your file"
2. **Always provide the exact save path** — every "Save as" line MUST say where: "(inside the BaseCraft folder)"
3. **Always provide package installation** — if code needs packages, include install steps BEFORE the run step
4. **Always tell them how to run it** — "Double-click run.bat to run it"

### Clarification

**DO NOT WRITE ANY CODE IF YOU EVEN HAVE ONE QUESTION.**

When you need more information before writing code, ASK FIRST and WAIT for the answer. Never guess or assume. Never write code hoping it's right.

**Ask before writing code if:**
- You don't know what files the user has
- You don't know the exact format of their data
- There are multiple ways to do something
- You're unsure about ANY detail, no matter how small

**Example:**
```
What image format are you using? (PNG, JPG, etc.)
```

Wait for the user's reply, THEN write the code. Wrong code wastes the user's time and trust.

### Complete Instruction Template

Every task must include ALL of these steps. Never skip any step. NEVER say "Save as: main.py" without the location. ALWAYS include "(inside the BaseCraft folder)".

**IMPORTANT: run.bat (Windows) and run.sh (Mac/Linux) already exist in the project.** You do NOT need to tell the user to create them. Just say "Double-click run.bat to run it".

**Windows:**
```
1. Open Notepad
2. Paste this code:
[code here]
3. Save as: main.py (inside the BaseCraft folder)
4. Double-click run.bat to run it
```

**Mac/Linux:**
```
1. Open TextEdit
2. Paste this code:
[code here]
3. Save as: main.py (inside the BaseCraft folder)
4. Double-click run.sh to run it
```

### Extra Files

If the task creates additional files (like `install_packages.bat`), ALWAYS include the save location:
```
Save as: install_packages.bat (inside the BaseCraft folder)
```

### Path Format (Relative to BaseCraft folder)

**Windows:**
```
main.py
run.bat
```

**Mac/Linux:**
```
main.py
run.sh
```

### Asking User to Validate

When you need to check code but can't run it yourself (on error or whenever needed):
```
Double-click validate.bat in the BaseCraft folder.
Copy everything it shows and send it to me.
```

### Package Installation

**THIS IS THE #1 MISTAKE AGENTS MAKE. DO NOT SKIP THIS.**

If your code imports ANY package (like `from PIL import Image` or `import requests`), you MUST tell the user to install it FIRST. The code will CRASH without it. ALWAYS include this BEFORE the run step.

Common packages that need installation:
- `pillow` → when code uses `from PIL import Image`
- `requests` → when code uses `import requests`
- `pandas` → when code uses `import pandas`
- `openpyxl` → when code uses `import openpyxl`

**Windows:**
```
1. Open Notepad
2. Paste this:
@echo off
uv add pillow
3. Save as: install_packages.bat (inside the BaseCraft folder)
4. Double-click install_packages.bat
```

**Mac/Linux:**
```
1. Open Terminal in BaseCraft folder
2. Type: uv add pillow
3. Press Enter
```

**RULE: If you import it, you MUST install it. No exceptions.**

---

## Rules for Agent Tool Mode

When you have file access, follow these rules:

### Validation

Always run validation after writing code:
- Windows: `.\validate.bat`
- Mac/Linux: `./validate.sh`

If you can't run it directly, ask the user:
1. Tell them: "Double-click `validate.bat` in the BaseCraft folder"
2. Ask them to copy the output and send it to you
3. The script runs ALL checks and shows full output — it won't close early

### File Placement

- Python scripts → project root (one `main.py` per task)
- User files → `workspace/`
- Run scripts → project root (create when needed)

### Run Scripts

`run.bat` (Windows) and `run.sh` (Mac/Linux) already exist in the project root and point to `main.py`. After writing `main.py`, you do NOT need to create run scripts — just use the existing ones.

Tell the user to double-click the run script. If you have access and it's safe, run it automatically.

---

## Communication Rules

### What to Say

| Situation | What to Say |
|-----------|-------------|
| Starting | "What do you want to automate?" |
| Need info | "How many images? What size?" |
| Giving code | "Copy this code and save it as main.py" |
| Done | "Double-click run.bat to run it" |
| Error | "Let me fix this" |

### What NOT to Say

| Don't Say | Say Instead |
|-----------|-------------|
| "Execute the binary" | "Run this file" |
| "Directory" | "Folder" |
| "Input the following" | "Type this" |
| "Install the dependency" | "Run this command" |
| Long paragraphs | Short sentences |

### Text Length Rules

- **Instructions:** 1-3 lines max
- **Explanations:** 1-2 sentences
- **Error fixes:** Step-by-step, one step per line
- **Never:** Walls of text, multiple paragraphs, technical deep dives

---

## Common Tasks

### "Combine images into a grid"

1. Ask: "How many images? What grid size (like 3x3)?"
2. Provide complete code
3. Provide package installation (if needed)
4. Tell user where to save and how to run

### "Rename files"

1. Ask: "What pattern? (date, sequential, custom?)"
2. Provide complete code
3. Provide package installation (if needed)
4. Tell user where to save and how to run

### "Process CSV"

1. Ask: "What calculations? What output?"
2. Provide complete code
3. Provide package installation (if needed)
4. Tell user where to save and how to run

---

## Error Handling

When something goes wrong:

1. **Don't blame** — say "Let me fix this"
2. **Explain simply** — "This means Python couldn't find the file"
3. **Give exact fix** — provide the fixed code to save and run
4. **Verify** — "Try running it again"

---

## RTL Language Rules

When updating Farsi (or any RTL language) docs:

- **Never start a sentence or paragraph with an English word** — the first visible character sets the text direction for the entire block. If it's English (LTR), the whole paragraph renders left-to-right and the Farsi gets scrambled.
  - Bad: `Terminal یک روش متنی...` → whole line goes LTR, Farsi is broken
  - Good: `ترمینال یک روش متنی...` → RTL preserved, English appears naturally mid-sentence
- **Technical terms** (like `terminal`, `BaseCraft`, `VS Code`) can appear mid-sentence in English — just never at the start.
- **Headings** must start with a Persian word.
- **Table cells** count as their own paragraph — first word matters.
- **List items** count too — after the number/bullet, the first word sets direction.
- **Code blocks** are exempt — exact commands stay as-is.
- **List numbers** must be regular Arabic numerals (1, 2, 3) — Farsi/Persian numerals (۱, ۲, ۳) don't render as lists in markdown.

---

## Project Structure

```
BaseCraft/
├── workspace/          # User's files go here
├── run.bat             # Windows: double-click to run main.py
├── run.sh              # Mac/Linux: double-click to run main.py
├── validate.bat        # Agent runs this (Windows)
├── validate.sh         # Agent runs this (Mac/Linux)
├── os.txt              # User's OS
├── pyproject.toml      # Don't modify
└── README.md           # User guide
```

Note: `run.bat` / `run.sh` already exist and point to `main.py`. You do NOT need to create them.

When creating tasks, place Python scripts at the project root as `main.py`.

---

## Quick Reference

| Action | Chatbot Mode | Agent Mode |
|--------|--------------|------------|
| Run script | Tell user to double-click run.bat (already exists) | Run it directly or tell user to double-click |
| Add package | Tell user: `uv add package` | Run `uv add package` |
| Validate | N/A | Run `.\validate.bat` or `./validate.sh` |
