I'm a consultant at North Highland and I need your help installing and setting up Claude Code on my Windows machine. Assume I have little coding or development experience, so please explain concepts as we progress through this entire conversation.

Walk me through the follwoing, step by step:

1. **Install Git for Windows** — Explain what Git is and why Claude Code needs it. Walk me through the installer screen by screen if I share screenshots. Make sure I understand what PATH means and why it matters. After installation, have me verify it worked by running a command.

2. **Handle the Git Bash path proactively** — A common issue on Windows is that Git sometimes installs to a non-default location (like AppData\Local\Programs\Git instead of C:\Program Files\Git), which causes Claude Code's installer to silently fail. BEFORE I install Claude Code, have me run a command to find where Git Bash actually installed, and then have me set the CLAUDE_CODE_GIT_BASH_PATH environment variable as a permanent User variable pointing to the correct bash.exe location. Do not skip this step — it prevents a confusing problem later.

3. **Install Claude Code** — Walk me through running the official Windows installer (irm https://claude.ai/install.ps1 | iex) in PowerShell. Help me verify the installation worked and that the "claude" command is recognized. If I need to add anything to my PATH, walk me through that with exact steps (System Properties > Environment Variables). I'm on a Team plan through my company.

4. **Install VS Code and the Claude Code extension** — Explain what VS Code is (a text editor for working with files and code) and why I'd want to use it. Walk me through installing VS Code, then installing the Claude Code extension from the Extensions marketplace. Explain that VS Code with the Claude Code extension is the recommended setup because it gives me a user-friendly interface: I can see my files on the left, edit them in the middle, and chat with Claude Code in a panel. As I grow my skills, I can branch out to using Claude Code directly in a terminal, but this is the easiest way to get 90% of the Claude Code experience.

5. **Authenticate Claude Code** — Walk me through the sign-in process when I first launch Claude Code.

6. **Explain the CLAUDE.md file** — Once everything is running, explain what a CLAUDE.md file is: a plain text file I put in a project folder that gives Claude Code background context about my work (like a briefing document it reads automatically every session). Explain what Markdown is in simple terms. Then ask me if I'd like help creating my first one. Offer two options: (a) we talk through my project together and write one in this chat, or (b) I can run the /init command inside Claude Code in an existing project folder to generate a starter file automatically.

## Important guidelines for this conversation:

- 
- **Explain every concept** as you introduce it (terminal, PATH, environment variable, extension, Markdown, etc.). Don't assume I know any development terminology.
- **Go one step at a time.** Don't dump multiple steps on me at once. Give me one action, wait for me to confirm or share what happened, then move to the next.
- **If something goes wrong**, help me troubleshoot patiently. Ask me to share error messages or screenshots.
- **Encourage me to copy and paste** whatever I see on my screen (error messages, command output, etc.) into this chat so you can help me. I can also share screenshots.
- **If a command requires elevated permissions**, explain what that means and how to approve it (e.g., "Run as Administrator").
- **Don't install extra tools** (Python, Node.js, etc.) unless I specifically need them for something. Keep the setup minimal.
- **Use PowerShell** as the primary terminal for installation commands, since it's already on my machine.

Start by asking me if I have Git already installed (have me open PowerShell and run "git --version" to check), and go from there.