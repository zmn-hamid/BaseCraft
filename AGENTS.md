# AGENTS.md

Instructions for AI agents helping users with BaseCraft.

---

## The Golden Rule

**Be short. Be clear. Never confuse the user with too much text.**

The user is a non-programmer. They know how to use a computer (files, folders, copy/paste) but don't know programming. Every instruction you give must be:

- **One step at a time**
- **Exact copy-paste ready**
- **No jargon** — say "folder" not "directory", "run" not "execute"
- **Minimal text** — if you can say it in 2 lines, don't write 5

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

**Example instruction to user:**
```
1. Open Notepad
2. Paste this code:
[code here]
3. Save as: workspace\script.py (inside the BaseCraft folder)
4. Double-click run.bat to run it
```

### Agent Tool Mode

You are running in MimoCode, Cursor, Claude Code, or similar. You CAN access files directly.

**How to detect:** You have file system access (can read/write files).

**What to do:**
1. Write files directly
2. Run validation scripts
3. Create run scripts

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
2. **Always provide the relative save path** — from BaseCraft folder
3. **Always tell them how to run it** — double-click this file, or type this command

### Path Format (Relative to BaseCraft folder)

**Windows:**
```
workspace\script.py
```

**Mac/Linux:**
```
workspace/script.py
```

### Run Instructions

**Windows:**
```
Double-click run.bat in the BaseCraft folder
```

**Mac/Linux:**
```
Open Terminal in BaseCraft folder, type:
uv run python workspace/script.py
```

### Asking User to Validate

When you need to check code but can't run it yourself:
```
Double-click validate.bat in the BaseCraft folder.
Copy everything it shows and send it to me.
```

### Package Installation

If your code needs a package (like `pillow` for images), tell user:
```
Open Terminal in BaseCraft folder, type:
uv add pillow
```

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

- Python scripts → `workspace/` folder
- User files → `workspace/`
- Run scripts → project root (create when needed)

### Run Scripts

After writing a Python script, create a run script for the user:

**Windows (`run.bat`):**
```bat
@echo off
uv run python workspace\script_name.py
```

**Mac/Linux (`run.sh`):**
```bash
#!/bin/bash
uv run python workspace/script_name.py
```

---

## Communication Rules

### What to Say

| Situation | What to Say |
|-----------|-------------|
| Starting | "What do you want to automate?" |
| Need info | "How many images? What size?" |
| Giving code | "Copy this code and save it as [relative path]" |
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
3. Tell user where to save and how to run

### "Rename files"

1. Ask: "What pattern? (date, sequential, custom?)"
2. Provide complete code
3. Tell user where to save and how to run

### "Process CSV"

1. Ask: "What calculations? What output?"
2. Provide complete code
3. Tell user where to save and how to run

---

## Error Handling

When something goes wrong:

1. **Don't blame** — say "Let me fix this"
2. **Explain simply** — "This means Python couldn't find the file"
3. **Give exact fix** — "Run this command: ..."
4. **Verify** — "Try running it again"

---

## Project Structure

```
BaseCraft/
├── workspace/          # User's files go here
├── validate.bat        # Agent runs this (Windows)
├── validate.sh         # Agent runs this (Mac/Linux)
├── os.txt              # User's OS
├── pyproject.toml      # Don't modify
└── README.md           # User guide
```

---

## Quick Reference

| Action | Chatbot Mode | Agent Mode |
|--------|--------------|------------|
| Run script | Tell user to double-click run.bat | Run directly |
| Add package | Tell user: `uv add package` | Run `uv add package` |
| Validate | N/A | Run `.\validate.bat` or `./validate.sh` |
