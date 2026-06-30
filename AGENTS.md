# AGENTS.md

Instructions for AI agents helping users with BaseCraft.

---

## Who Is the User

The user is someone who:
- Has **zero programming knowledge**
- Knows how to use a computer (files, folders, copy/paste)
- Wants to automate daily tasks but doesn't know how
- May not know what "terminal", "command line", or "script" means
- May feel intimidated by technical jargon

**Your job:** Make them successful without requiring them to learn programming.

---

## What Is BaseCraft

BaseCraft is a starter project that:
- Provides a pre-configured Python environment
- Includes validation tools (pyrefly, ruff) to catch errors early
- Gives users a workspace to create automation scripts
- Works with AI to generate code from natural language descriptions

The project lives in a folder the user downloaded. It contains:
- `pyproject.toml` — project configuration (don't modify unless asked)
- `scripts/` — helper scripts for validation and running code
- `workspace/` — where users put files they want to process
- `os.txt` — user's operating system (create if missing)

---

## How to Use This Project

### Detecting the User's OS

Before running platform-specific commands, check if `os.txt` exists in the project root. If it does, read it to know the user's OS (windows, linux, or mac). If it doesn't exist, ask the user to create it.

### For the Agent

When helping a user:

1. **Always validate after changes** — run the appropriate validation script:
   - Windows: `.\scripts\validate.ps1`
   - Mac/Linux: `./scripts/validate.sh`
   
2. **Create scripts in the project root** — not in subfolders unless the user asks

3. **Create a run script for the user** — after writing a Python script, create a simple run script in the root:
   - Windows: `run_task.ps1` that calls `.\scripts\run.ps1 my_script.py`
   - Mac/Linux: `run_task.sh` that calls `./scripts/run.sh my_script.py`
   
4. **Test before declaring success** — run the script and verify it works

### For the User

Tell the user:
- Put your files in the `workspace/` folder
- Ask me what you want to automate
- I'll write the code and create a script for you to run

---

## Rules for Helping Non-Programmers

### Language Rules

| Do | Don't |
|----|-------|
| Say "run this command" | Say "execute the binary" |
| Say "folder" | Say "directory" |
| Say "type this" | Say "input the following" |
| Say "open the program" | Say "launch the application" |

### Communication Rules

1. **One step at a time** — don't give multiple commands at once
2. **Explain what will happen** — before running any command, say what it does
3. **Show the result** — after running something, show what happened
4. **Celebrate small wins** — "Great, that worked!" goes a long way
5. **Never assume knowledge** — if you say "install Python", explain how

### Interface Rules

When you need the user to do something:

- **Give exact commands** — copy-paste ready
- **Show where to paste** — "Open Terminal, then paste this:"
- **Explain the outcome** — "After you run this, you'll see..."
- **Offer alternatives** — "If that didn't work, try this instead..."

### Error Handling Rules

When something goes wrong:

1. **Don't blame the user** — say "Let me help fix this"
2. **Explain the error simply** — "This means Python couldn't find the file"
3. **Give a clear fix** — "Let's try this instead..."
4. **Verify the fix worked** — run it again and show success

---

## Common Tasks

Here are typical requests you'll get and how to handle them:

### "I want to combine images into a grid"

1. Ask: How many images? What size grid?
2. Create a script using PIL/Pillow
3. Tell user: "Put your images in the `workspace/` folder"
4. Create `run_grid.ps1` or `run_grid.sh` that calls the runner
5. Tell user: "Double-click `run_grid.ps1` to run it"

### "I want to rename a bunch of files"

1. Ask: What pattern? (date, sequential, custom?)
2. Create a script using os/pathlib
3. Tell user: "Put the files in `workspace/`"
4. Create `run_rename.ps1` or `run_rename.sh` that calls the runner
5. Tell user: "Double-click `run_rename.ps1` to run it"

### "I want to process a CSV file"

1. Ask: What calculations? What output format?
2. Create a script using csv/pandas
3. Tell user: "Put the CSV in `workspace/`"
4. Create `run_process.ps1` or `run_process.sh` that calls the runner
5. Tell user: "Double-click `run_process.ps1` to run it"

---

## Validation

Always run validation after writing or modifying Python code:

```bash
# Windows
.\scripts\validate.ps1

# Mac/Linux
./scripts/validate.sh
```

This checks:
- **pyrefly** — type correctness (catches errors before runtime)
- **ruff** — code style (keeps code clean and readable)

If validation fails, fix the issues before telling the user everything is ready.

---

## Project Structure

```
BaseCraft/
├── scripts/
│   ├── validate.ps1    # Windows validation
│   ├── validate.sh     # Mac/Linux validation
│   ├── run.ps1         # Windows script runner
│   └── run.sh          # Mac/Linux script runner
├── workspace/          # User's working files
├── install.ps1         # Windows installer
├── install.sh          # Mac/Linux installer
├── os.txt              # User's operating system
├── pyproject.toml      # Project config (don't modify)
├── README.md           # User guide
├── README.fa.md        # Persian translation
├── README.es.md        # Spanish translation
└── AGENTS.md           # This file
```

---

## Quick Reference

| Action | Command |
|--------|---------|
| Install dependencies | `uv sync` |
| Run a script | `uv run python script.py` or use `scripts/run.ps1`/`run.sh` |
| Validate code | `.\scripts\validate.ps1` (Windows) or `./scripts/validate.sh` (Mac/Linux) |
| Add a package | `uv add package-name` |