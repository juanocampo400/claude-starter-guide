# Claude Ecosystem Web Research

*Compiled 2026-03-19 by sonnet research agents.*

---

## Claude AI Basics & FAQs

*Sources listed at the end of this section.*

---

### What is Claude?

Claude is an AI assistant made by Anthropic, a safety-focused AI company. It is a large language model (LLM) — a type of AI trained on large amounts of text that can read, write, reason, and answer questions in natural language.

Claude is available at [claude.ai](https://claude.ai), as a desktop app (Mac and Windows), and on mobile (iOS and Android). Developers can also access it directly via the Anthropic API.

**Key things Claude is good at:**

- Writing, editing, and summarizing text
- Answering questions and explaining concepts
- Analyzing documents (PDFs, spreadsheets, code files)
- Writing and debugging code
- Brainstorming and working through problems step by step

---

### Frequently Asked Questions

**Q: Is Claude the same thing as ChatGPT?**

No. Claude and ChatGPT are both AI assistants, but they are made by different companies (Anthropic vs. OpenAI) and have different strengths, personalities, and usage limits. Claude is widely considered stronger for long-form writing, analysis, and coding. ChatGPT has a broader ecosystem of add-ons and supports image generation and voice chat, which Claude currently does not.

**Q: Does Claude have access to the internet?**

Not by default. Claude works from its training data, which has a knowledge cutoff date. It does not browse the web in a standard chat unless you are using a specific integration or tool that provides web access. If you need up-to-date information, you should paste the relevant text into the conversation yourself.

**Q: Does Claude remember our previous conversations?**

No. Each conversation starts fresh. Claude has no memory of past chats unless you paste context from them into your new message, or unless you are using a platform feature (like Projects) that is designed to persist context across sessions.

**Q: Does Anthropic use my conversations to train Claude?**

On free and paid consumer plans (Free, Pro, Max), Anthropic may use your conversations to improve Claude by default. You can opt out in your account settings. On Enterprise and API plans, your data is never used for training. When data is used, it is de-linked from your account before training, and Anthropic applies filters to remove sensitive content.

**Q: Can Claude generate images?**

No. Claude is a text-based model only. It can describe, analyze, or discuss images that you upload, but it cannot create or generate images. For image generation, tools like DALL-E, Midjourney, or Stable Diffusion are separate products designed for that purpose.

**Q: Why does Claude sometimes get things wrong?**

Claude can "hallucinate" — confidently state something that is incorrect. This is a known limitation of all current large language models, not a bug specific to Claude. It happens because the model generates responses based on patterns in training data, not by looking facts up in a verified database. Always double-check important facts, especially for anything medical, legal, financial, or highly specific.

**Q: Why does Claude refuse some requests?**

Claude is designed with safety guidelines built in. It will decline requests that involve harmful content, illegal activity, or things that could cause real-world harm. It may also be more cautious than expected on edge-case topics. This is intentional — Anthropic calls their approach "Constitutional AI," meaning Claude follows a set of principles, not just user instructions.

**Q: Can I give Claude a personality or set of rules to follow?**

Yes. You can give Claude instructions at the start of a conversation (a "system prompt") that shape how it behaves — its tone, its focus, what it should or should not do. Claude is generally good at following these instructions consistently within a single conversation.

---

### Terminology People Find Confusing

**Prompt**
The message or question you type to Claude. More broadly, a prompt is any input you give the model. A well-written prompt gives Claude enough context to give a useful answer. "Prompt engineering" is the practice of writing better prompts to get better results.

**Token**
The unit Claude uses to process text — roughly three-quarters of a word in English. Punctuation, spaces, and code symbols all count as tokens too. Tokens matter because Claude can only process a limited number of them at once (see context window below). Longer conversations and larger documents consume more tokens.

**Context window**
The amount of text Claude can "see" at one time — its working memory for a conversation. This includes everything: your messages, Claude's replies, any files you have pasted in, and any instructions you gave at the start. Once a conversation exceeds the context window, the oldest parts start dropping out and Claude can no longer reference them. Current Claude models (Sonnet 4.6, Opus 4.6) support up to 1 million tokens, which is very large, but quality can degrade in extremely long conversations (sometimes called "context rot").

**Model**
The specific version of Claude you are using. Different models have different speeds, capabilities, and costs. The main options on claude.ai are:
- **Haiku** — fastest, good for simple tasks
- **Sonnet** — the default; fast and capable, handles most tasks well
- **Opus** — most powerful, best for complex reasoning; slower and uses more of your usage quota

**Hallucination**
When an AI confidently states something that is false. Not a sign that the AI is "lying" — it has no intent. It is a known technical limitation where the model generates plausible-sounding text that does not match reality. The risk is higher for obscure facts, recent events, and precise numerical claims.

**System prompt**
Instructions given to Claude before the conversation starts, typically by a developer or tool builder, that set its behavior, tone, or constraints. When you use Claude through a third-party app or custom tool, there is often a system prompt running behind the scenes that you do not see.

**Training cutoff**
The date after which Claude has no knowledge of events or publications. Claude was trained on data up to a certain point in time and does not automatically know about anything that happened after that date. The exact cutoff varies by model version.

---

### Common Misconceptions

| Misconception | Reality |
|---|---|
| "Claude is always right" | Claude can and does make factual errors. Verify anything important. |
| "Claude understands me like a human does" | Claude matches patterns in language; it does not have emotions, lived experience, or true comprehension. It can miss sarcasm, humor, and cultural nuance. |
| "Claude remembers what I told it last week" | No cross-session memory by default. Each chat starts blank. |
| "Bigger context window = smarter answers" | A larger window means more can fit in; it does not mean Claude will use all of it accurately. Long contexts can reduce precision. |
| "Claude is always being conservative for no reason" | Refusals follow Anthropic's safety guidelines. Some are overly cautious in edge cases, but they are intentional design choices, not random. |
| "Claude and ChatGPT work the same way" | They are different products with different architectures, training approaches, strengths, and limits. |
| "Free Claude is basically the same as paid" | Free accounts have tighter usage limits and access to fewer models. Paid plans increase limits and unlock advanced features. |

---

### Sources

- [Getting started with Claude — Claude Help Center](https://support.claude.com/en/articles/8114491-getting-started-with-claude)
- [Intro to Claude — Claude API Docs](https://platform.claude.com/docs/en/intro)
- [Context windows — Claude API Docs](https://platform.claude.com/docs/en/build-with-claude/context-windows)
- [How large is the context window on paid Claude plans? — Claude Help Center](https://support.claude.com/en/articles/8606394-how-large-is-the-context-window-on-paid-claude-plans)
- [Claude is providing incorrect or misleading responses — Claude Help Center](https://support.claude.com/en/articles/8525154-claude-is-providing-incorrect-or-misleading-responses-what-s-going-on)
- [Is my data used for model training? — Anthropic Privacy Center](https://privacy.claude.com/en/articles/10023580-is-my-data-used-for-model-training)
- [Claude vs. ChatGPT: What's the difference? — Zapier](https://zapier.com/blog/claude-vs-chatgpt/)
- [Claude AI: Breaking Down Barriers and Limitations — AutoGPT](https://autogpt.net/claude-ai-breaking-down-barriers-and-limitations/)
- [Claude AI — Britannica](https://www.britannica.com/topic/Claude-AI)
- ['For new users, it's a shock' — TechRadar](https://www.techradar.com/ai-platforms-assistants/claude/chatgpt-users-are-flocking-to-claude-then-realizing-they-cant-use-it-the-same-way-for-new-users-its-a-shock)
- [What is Claude AI? The Ultimate 2026 Beginner's Guide — itech4mac](https://www.itech4mac.net/2026/02/what-is-claude-ai-the-ultimate-2026-beginners-guide/)

---

## Claude Code FAQs

*Sources listed at the end of this section.*

---

### What is Claude Code?

Claude Code is a command-line tool made by Anthropic that runs in your terminal (the text-based window on your computer). You type plain English instructions, and Claude Code takes action directly on your computer: reading files, writing code, running tests, making commits to version control, and more.

It is not a chat window. It is an agent that works on your behalf inside your project folder.

---

### How is Claude Code different from Claude.ai?

| | Claude.ai | Claude Code |
|---|---|---|
| **Where it runs** | Browser or mobile app | Terminal on your computer |
| **What it can do** | Conversation, writing, analysis | All of the above, plus read/write files, run commands, edit code |
| **Setup required** | None | Yes (Node.js, terminal, paid plan) |
| **Best for** | General questions, drafting, brainstorming | Building and modifying software projects |

The key difference is that Claude.ai is a conversation interface — you copy and paste results yourself. Claude Code acts directly on your files without you having to copy anything.

Both use the same underlying Claude model. Claude Code is not a separate, smarter model; it is the same model with tools that let it interact with your computer.

---

### Do I need to know how to code to use Claude Code?

No, but you need to be comfortable with the terminal. You do not need to understand the code Claude writes. Your job is to describe what you want, review what it produces, and decide whether to accept or reject each change.

That said, the setup process (installing Node.js, running npm commands, authenticating) does require following technical steps carefully. Non-technical users can do it, but it takes patience.

---

### What does Claude Code actually have access to on my machine?

By default, Claude Code can:

- **Read** any file on your computer (including outside your project folder)
- **Write** files only within the folder where it was launched and its subfolders
- **Run commands** in your terminal (with your permission for each one)

Only files that Claude Code explicitly reads are sent to Anthropic's servers. Files it has not read stay on your machine.

One documented privacy concern: Claude Code automatically reads any `.env` files it finds in the project. These files often contain API keys and passwords. Anthropic's own documentation recommends explicitly blocking Claude from accessing `.env` files if they contain sensitive credentials.

---

### Does Claude Code send my code to the internet?

Yes. When Claude Code reads a file to help you, the contents of that file are sent to Anthropic's servers to generate a response, the same way pasting code into Claude.ai would. Files Claude has not read are not transmitted.

---

### What subscription do you need?

Claude Code is included with the **Pro plan ($20/month)** and both **Max plan tiers ($100/month and $200/month)**. It is not available on the free plan.

Heavy use (long coding sessions, large codebases, many back-and-forth actions) can hit usage limits on Pro fairly quickly. The Max plans provide 5x or 20x more usage respectively and are aimed at developers using Claude Code as their primary tool.

There is also API pricing for teams integrating Claude Code into automated workflows, billed per token rather than by subscription.

---

### How does Claude Code handle permissions? What is "dangerously skip permissions"?

Claude Code has four permission modes:

1. **Default** — Asks before every file edit and every command it runs. Recommended for almost all users.
2. **Plan mode** — Claude can read and analyze but cannot modify files or execute commands.
3. **Accept edits** — Automatically approves file edits, still asks before running commands.
4. **Bypass permissions** (`--dangerously-skip-permissions`) — No prompts at all; Claude acts freely.

The `--dangerously-skip-permissions` flag is intended for fully isolated, sandboxed environments (like a Docker container with nothing sensitive). Running it on your personal machine means Claude can read, write, and execute anything without asking. This is a significant security risk on a real workstation.

---

### How is Claude Code different from GitHub Copilot or Cursor?

These tools solve related but different problems:

**GitHub Copilot** is an IDE extension that autocompletes code as you type. It is reactive — it responds to what you are writing, line by line. It does not run commands or make multi-file changes autonomously.

**Cursor** is a full code editor (a modified version of VS Code) with AI built in. It can make changes across multiple files when you describe a task, but you are still working inside the editor reviewing diffs.

**Claude Code** runs in the terminal, not inside an editor. It is the most autonomous of the three: given a task, it will plan an approach, read relevant files, write the code, run tests, interpret failures, and iterate, with minimal hand-holding. It does not sit inside your editor suggesting completions; it acts more like a junior developer you give tasks to.

The practical tradeoff: Copilot speeds up moment-to-moment typing. Cursor makes multi-file changes easier inside your editor. Claude Code is better suited for larger, more open-ended tasks where you describe an outcome rather than a specific edit.

---

### Common misconceptions

**"Claude Code is just Claude.ai in the terminal."**
Not quite. The same model underlies both, but Claude Code has tools that let it read your file system, execute shell commands, and iterate on results. The difference in what it can accomplish is substantial.

**"It only works for professional developers."**
Non-technical users can and do use Claude Code for tasks like data processing, document automation, and building small internal tools. The barrier is the initial setup and comfort with the terminal, not coding knowledge itself.

**"It can access everything on my computer at any time."**
Claude Code only acts when you are running it in a session. It does not run in the background or have persistent access to your machine. When you close the session, it stops.

**"Skipping permissions makes it more powerful."**
Skipping permissions makes Claude Code faster and less interruptive, but it does not change what Claude can do — only whether it asks first. On a personal machine this trades safety for convenience with real risk.

**"I need to understand the code it writes to use it."**
You need to understand what the code is supposed to do and whether the outcome looks correct. Understanding the implementation details is helpful but not required for many use cases.

---

### Sources

- [Claude Code Docs](https://code.claude.com/docs/en/overview)
- [Claude Code permissions guide](https://code.claude.com/docs/en/permissions)
- [Claude Code security docs](https://code.claude.com/docs/en/security)
- [Claude vs Claude.ai comparison](https://milvus.io/ai-quick-reference/what-makes-claude-code-different-from-regular-claude)
- [Claude Code for non-technical users](https://www.producttalk.org/claude-code-what-it-is-and-how-its-different/)
- [Dangerously skip permissions guide](https://www.ksred.com/claude-code-dangerously-skip-permissions-when-to-use-it-and-when-you-absolutely-shouldnt/)
- [Claude Code vs Cursor vs Copilot](https://www.adventureppc.com/blog/claude-code-vs-cursor-vs-github-copilot-the-definitive-ai-coding-tool-comparison-for-2026)
- [.env secrets issue](https://www.knostic.ai/blog/claude-loads-secrets-without-permission)
- [Claude Code pricing](https://support.claude.com/en/articles/11145838-using-claude-code-with-your-pro-or-max-plan)

---

## Claude Cowork FAQs

*Sources linked inline.*

---

### What is Claude Cowork?

Claude Cowork is Anthropic's desktop AI agent for knowledge workers — people who handle documents, files, and research but don't write code for a living. It was launched in January 2026 as a research preview and is available on paid plans (Pro, Max, Team, Enterprise) via Claude Desktop for Windows and macOS.

The simplest one-sentence summary: Cowork is what happens when you take Claude Code's agentic engine and give it a point-and-click interface aimed at non-technical users.

Instead of answering one question at a time, Cowork takes a goal, builds a visible step-by-step plan, executes each step autonomously inside a protected virtual environment on your machine, and delivers finished outputs (documents, spreadsheets, organized folders, research summaries) directly to your file system — without you staying at the keyboard.

Sources: [Introducing Cowork — Anthropic](https://claude.com/blog/cowork-research-preview) · [Get started with Cowork — Help Center](https://support.claude.com/en/articles/13345190-get-started-with-cowork)

---

### How does Cowork relate to Claude Code?

They share the same agentic architecture underneath. Claude Code came first (developer CLI tool, runs in the terminal). Anthropic noticed that developers were using Claude Code for far more than coding — research, writing, file management — and built Cowork so that anyone could access those same capabilities without touching a terminal.

Key similarities:
- Both can read/write local files, run multi-step tasks, and use sub-agents for parallel workstreams
- Both use the same underlying Claude models
- Both operate with a "plan, execute, deliver" loop rather than a chat back-and-forth

Key differences:

| | Claude Code | Claude Cowork |
|---|---|---|
| Interface | Terminal / CLI | Claude Desktop GUI |
| Target user | Developers and engineers | Knowledge workers, consultants, analysts |
| Primary use case | Software development | Document work, file management, research |
| Setup complexity | Requires terminal, config files | Download app, pick a folder, describe a task |
| Execution environment | Your full system (broader access) | Isolated virtual machine (more sandboxed) |
| Availability | Separate CLI install | Built into Claude Desktop |

Sources: [The Difference Between Claude Code and Cowork — Forte Labs](https://fortelabs.com/blog/the-difference-between-claude-code-and-cowork/) · [Claude Cowork vs Claude Code — Low Code Agency](https://www.lowcode.agency/blog/claude-cowork-vs-claude-code)

---

### What can Cowork actually do?

Concrete examples from documented use cases:

- Organize a messy folder of files according to rules you describe (e.g., sort by date, type, project)
- Read dozens of documents and produce a consolidated summary or structured report
- Turn rough notes into formatted deliverables (slide outlines, memos, briefing docs)
- Analyze data files and produce a spreadsheet with derived outputs
- Run recurring tasks on a schedule (e.g., every Monday morning, compile last week's notes)
- Coordinate parallel workstreams — it can spin up sub-agents to work on multiple things simultaneously

Sources: [Claude Cowork use cases — aiblewmymind](https://aiblewmymind.substack.com/p/claude-cowork-use-cases-guide) · [DataCamp Cowork tutorial](https://www.datacamp.com/tutorial/claude-cowork-tutorial)

---

### Common misconceptions

**"It's just ChatGPT with folder access."**
The biggest mistake new users make. Cowork is not a chat interface where you ask questions and get answers. It is an agent that *executes*. You give it a goal, it plans, acts, and delivers. If you keep using it like a chatbot you will get a fraction of its value.

**"Cowork is a dumbed-down version of Claude Code."**
It is optimized for different work, not simplified. Cowork's virtual-machine sandbox, GUI workflow, and document-first design make it *better* suited for knowledge work than Claude Code would be. Claude Code's terminal-first approach would be overkill and more fragile for the tasks Cowork handles.

**"It will run tasks in the background while the computer is off."**
No. Scheduled tasks only run while your computer is awake and Claude Desktop is open. Cowork is not a cloud-hosted background service — it executes locally on your machine.

**"Vague instructions work fine — it'll figure out what you mean."**
Cowork's output quality depends heavily on instruction specificity. "Clean up this folder" produces inconsistent results; "Create a manifest CSV listing every file, then move only .png files into /images sorted by month, and do not overwrite originals" produces reliable ones. The model is capable; the bottleneck is natural-language ambiguity.

**"It replaces deterministic pipelines and production systems."**
Cowork is best used as a *preprocessing layer*, not a production system. Use it to normalize, shape, and prepare content; keep your downstream pipelines (data ingestion, validation, monitoring) deterministic as usual.

**"It integrates with everything."**
There is currently no direct integration with Outlook or Microsoft Teams. For organizations deeply centered on the Microsoft 365 ecosystem, this is an important gap.

Sources: [Cowork limitations — Zilliz FAQ](https://zilliz.com/ai-faq/what-limitations-does-claude-cowork-currently-have) · [Use Cowork safely — Help Center](https://support.claude.com/en/articles/13364135-use-cowork-safely) · [5 Cowork mistakes — TrainingSites](https://trainingsites.io/tutorial/i-really-mucked-up-5-claude-cowork-mistakes-and-how-to-fix-them/)

---

### What are the current limitations?

- **Platform:** Cowork runs only inside Claude Desktop; there is no web-browser version of Cowork
- **Local execution:** Tasks run on your machine, so your computer must stay on and Claude Desktop must remain open for scheduled or long-running tasks
- **Compliance/audit gap:** Cowork conversation history is stored locally and is not captured by enterprise audit/export mechanisms — not suitable for regulated workloads
- **Document format limits:** Scanned PDFs and heavily formatted files may cause errors
- **No Microsoft 365 native integration:** Outlook and Teams connections are not available out of the box (plugins may fill some gaps)
- **Research preview status:** As of early 2026 this is still labeled a research preview, meaning the feature set is actively evolving and some rough edges exist

Sources: [Cowork limitations — Zilliz FAQ](https://zilliz.com/ai-faq/what-limitations-does-claude-cowork-currently-have) · [Cowork review — eesel.ai](https://www.eesel.ai/blog/claude-cowork-review)

---

### Who should use Cowork vs. Claude Code?

**Start with Cowork if you:**
- Are not a developer and never want to open a terminal
- Do document-heavy work: research, writing, filing, data prep
- Want the fastest path from "download" to "first completed task" (under 15 minutes)

**Use Claude Code if you:**
- Are comfortable with a terminal and want more granular control
- Are building or modifying software
- Need to integrate AI into a development workflow or CI/CD pipeline
- Want access to the full surface area of Claude's agentic capabilities without sandboxing constraints

Sources: [Claude vs Claude Code vs Cowork — Medium](https://medium.com/@yunusemresalcan/claude-vs-claude-code-vs-cowork-which-one-do-you-actually-need-66d3952a2eb4) · [Vibe Check: Cowork is Claude Code for the rest of us — Every](https://every.to/vibe-check/vibe-check-claude-cowork-is-claude-code-for-the-rest-of-us)

---

## Opus, Sonnet & Haiku Model Tiers FAQs

*Researched March 2026. Sources linked inline.*

---

### What are Opus, Sonnet, and Haiku?

Opus, Sonnet, and Haiku are **tier names** within the Claude model family — not separate products. They indicate capability level (and therefore cost and speed) within a given generation. Every generation of Claude ships all three tiers. The naming convention was introduced with Claude 3 in March 2024 and has continued through Claude 4.

| Tier | Character | Best for |
|------|-----------|----------|
| Haiku | Fastest, cheapest | High-volume, simple tasks (classification, structured extraction, short Q&A) |
| Sonnet | Balanced | Most everyday work, coding, agentic workflows |
| Opus | Most capable, most expensive | Deep analysis, complex multi-step reasoning, long open-ended research |

---

### How does the naming scheme work? What does "Claude Sonnet 4.6" mean?

The full name has three parts:

- **Generation number** — the major release (3, 4, etc.)
- **Point release** — incremental improvement within a generation (.5, .6, .7)
- **Tier name** — capability level (Haiku, Sonnet, Opus)

So "Claude Sonnet 4.6" = generation 4, point release 6, Sonnet tier. There is no standalone "Claude 4" — Claude 4 is a generation that ships as three separate models. Confusing the generation number with a tier name is one of the most common mistakes new users make.

---

### What are the current models and what do they cost? (March 2026)

Pricing is per million tokens (input / output):

| Model | Input | Output | Notes |
|-------|-------|--------|-------|
| Claude Haiku 4.5 | $0.25 | $1.25 | Lowest cost, high throughput |
| Claude Sonnet 4.6 | $3.00 | $15.00 | Default recommendation for most work; $6/$22.50 for requests >200K input tokens |
| Claude Opus 4.6 | $5.00 | $25.00 | Most capable; optional fast mode at 6x rates ($30/$150) for latency-critical workloads |

A 50% discount applies across all models via the Batch API. Prompt caching can reduce costs further for repeated context. Opus 4.6 received a significant price cut (down from $15/$75) in early 2026, which changed the economics for production use cases.

*Sources: [Anthropic API Pricing Docs](https://platform.claude.com/docs/en/about-claude/pricing) — [DevTk.AI pricing guide](https://devtk.ai/en/blog/claude-api-pricing-guide-2026/)*

---

### Common misconception: "Bigger model = always better"

The most predictable failure pattern is defaulting to Opus for every task. Sonnet delivers roughly 98% of Opus's coding performance at about one-fifth the cost. Using Opus on a task that Haiku could handle wastes tokens and slows you down with no quality gain. Benchmark scores only matter if your task actually approaches the model's capability ceiling — most tasks don't.

The recommended mental model for mixed workloads:

- **Haiku** for setup, scaffolding, and simple lookups
- **Sonnet** for the main build and daily work
- **Opus** for review passes, complex architecture decisions, and long open-ended analysis

*Source: [Medium — Sonnet 4.5 vs Haiku 4.5 vs Opus 4.1](https://medium.com/@ayaanhaider.dev/sonnet-4-5-vs-haiku-4-5-vs-opus-4-1-which-claude-model-actually-works-best-in-real-projects-7183c0dc2249)*

---

### Common misconception: "Sonnet is a competitor to Claude"

Sonnet is not a separate product. "Sonnet vs Claude" is a category error — like comparing a trim level to a car brand. Sonnet is one configuration of Claude. The brand is Claude; the tier is Sonnet (or Haiku, or Opus).

---

### Common misconception: "Haiku is fine for long sessions"

Haiku is optimized for speed and low cost on short, discrete tasks. In long multi-turn sessions it loses track of context quickly — documented behavior includes forgetting variable names and inconsistently renaming class members mid-task. For anything that requires sustained state across many exchanges, Sonnet or Opus is the right choice.

*Source: [DEV Community — Haiku vs Sonnet vs Opus in 2026](https://dev.to/clawgenesis/untitled-dcm)*

---

### How does model access work on Claude.ai (the website/app)?

Claude.ai subscriptions gate model access by plan:

| Plan | Cost | Model access |
|------|------|--------------|
| Free | $0 | Limited access; no Sonnet or Opus |
| Pro | $20/month | Sonnet 4.6; 5x usage vs free |
| Max | $100–$200/month | Sonnet 4.6 + Opus 4.6 (with 1M context window); also unlocks agent teams (research preview) |

Opus is only accessible on the Max plan. Many users on Pro assume they have access to Opus — they don't.

*Sources: [Claude.ai Pricing](https://claude.com/pricing) — [IntuitionLabs — Max Plan Explained](https://intuitionlabs.ai/articles/claude-max-plan-pricing-usage-limits)*

---

### How does model selection work in Claude Code?

Claude Code defaults to Sonnet 4.6. You can change the model in four ways:

1. **In-session command** — type `/model` inside Claude Code for an interactive menu; takes effect immediately without restarting.
2. **CLI flag** — `claude --model claude-opus-4-6` (applies only to that session).
3. **Environment variable** — set `ANTHROPIC_MODEL` in your `.bashrc` / `.zshrc` for a persistent default that can always be overridden per session.
4. **Settings file** — set `"model"` in `.claude/settings.json` (project-scoped) or `~/.claude.json` (global).

When Claude Code is used under a Pro or Max subscription (not a direct API key), model access follows the same plan restrictions as Claude.ai.

*Sources: [Claude Code Model Config Docs](https://code.claude.com/docs/en/model-config) — [How to Change Models in Claude Code](https://www.thecaio.ai/blog/claude-code-change-models)*

---

### How does model selection work via the API?

The API is pay-per-use (no subscription required). You specify the model in every request by passing the model ID string (e.g., `claude-sonnet-4-6-20251101`). All three tiers are available to any API user. There is no plan gating — costs are purely per-token.

*Source: [Models Overview — Anthropic API Docs](https://platform.claude.com/docs/en/about-claude/models/overview)*

---

### What is the difference between Claude.ai, Claude Code, and the Claude API?

These are three different surfaces for accessing the same underlying models:

- **Claude.ai** — consumer chat interface (web, desktop, mobile); subscription-based; model access depends on plan.
- **Claude Code** — agentic CLI for developers; runs in the terminal; usable under a Pro/Max subscription or a direct API key; defaults to Sonnet 4.6.
- **Claude API** — programmatic access for building products; pay-per-token; full model choice per request.

A common confusion: people assume Claude Code uses a different or exclusive model lineup. It does not — it uses the same Claude models, accessed through a developer-oriented interface.

*Source: [Claude vs Claude API vs Claude Code — 16x Engineer](https://eval.16x.engineer/blog/claude-vs-claude-api-vs-claude-code)*

---

### Deprecation note

Claude Haiku 3 (the original generation-3 Haiku) is deprecated and retiring **April 19, 2026**. Any integrations pinned to `claude-3-haiku` should migrate to `claude-haiku-4-5` before that date.

*Source: [Models Overview — Anthropic API Docs](https://platform.claude.com/docs/en/about-claude/models/overview)*

---

### Quick reference: terminology cheat sheet

| Term | What it is |
|------|-----------|
| Claude | The brand/product family from Anthropic |
| Haiku / Sonnet / Opus | Tier names indicating speed/cost/capability level |
| 3, 4 | Generation numbers |
| 3.5, 3.7, 4.5, 4.6 | Point releases within a generation |
| Claude.ai | Consumer web/app product |
| Claude Code | Developer CLI tool |
| Anthropic API | Programmatic access, pay-per-token |
| Pro / Max | Claude.ai subscription plan names (not model names) |
