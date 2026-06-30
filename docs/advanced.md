# Advanced

> Everything on this page is for users who want more power and control. Come back here after you've completed your first task.

---

## Tips for Better Results

- **Be specific:** "Resize all images to 800x600" is better than "make images smaller"
- **Mention file types:** Tell AI if files are JPG, PNG, CSV, etc.
- **Describe the output:** What should the result look like?

---

## Examples

| Task | What You Tell AI |
|------|------------------|
| **Image Grid** | "Combine all images in workspace into a grid" |
| **File Organizer** | "Sort files by type: images to 'images', documents to 'docs'" |
| **CSV Processor** | "Read this CSV and calculate the average of column B" |
| **Batch Renamer** | "Rename all files to include today's date" |

---

## Agent Tools: Let AI Work Directly on Your Files

With the [basic setup](basic.md), you use online chatbots (ChatGPT, Gemini, Claude web). AI writes code, you copy-paste it, you run it. That works, but it's slow and manual.

**Agent tools** change this. They let AI read and write files on your computer directly. No copy-paste. No "save this file here." AI sees your project, writes the code, and runs it for you.

This is the most powerful way to use BaseCraft.

### Online Chatbot vs Agent Tool

| | Online Chatbot | Agent Tool |
|--|----------------|------------|
| **How it works** | You paste code manually | AI writes files directly |
| **Speed** | Slow (copy-paste each time) | Fast (one click) |
| **Error fixing** | Copy error back to chat | AI sees and fixes errors itself |
| **Best for** | Quick, simple tasks | Complex or repeated tasks |

### Available Agent Tools

| Tool | What It Does | Cost |
|------|--------------|------|
| **MimoCode** | AI coding assistant — works in terminal or [VS Code](https://code.visualstudio.com) | Free tier available |
| **OpenCode** | [OpenCode](https://github.com/opencode-ai/opencode) — AI-powered code editor | Free tier available |
| **Hermes** | [Hermes](https://github.com/anthropics/hermes) — AI agent framework | Free |

### How to Set Up (Any Tool)

1. Install the tool (follow its official instructions)
2. Open the `BaseCraft` folder in the tool
3. Start talking to AI — it can now read your files, write code, and run it

That's it. No upload step. No copy-paste. AI already sees your project.

### MimoCode Example

MimoCode works from the terminal, but on Windows it works much better inside [VS Code](https://code.visualstudio.com).

**Using terminal:**

1. Install MimoCode (follow its official instructions)
2. Open terminal in the `BaseCraft` folder
3. Type `mimocode`
4. Start talking — MimoCode can see your files and work with them directly

**Using VS Code (recommended on Windows):**

1. Install [VS Code](https://code.visualstudio.com)
2. Install the MimoCode extension in VS Code
3. Open VS Code → "File" → "Open Folder" → select the `BaseCraft` folder
4. Open the MimoCode panel (sidebar icon)
5. Type: "Combine all images in workspace into a grid"
6. AI writes the code directly to your files and runs it

### Learn More

These Telegram channels teach AI tools and automation (language is Persian/Farsi but you can auto translate in Telegram):
- [t.me/MatinSenPaii](https://t.me/MatinSenPaii)
- [t.me/appxa](https://t.me/appxa)
