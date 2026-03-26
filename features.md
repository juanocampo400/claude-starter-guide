# Features

Features we still need to incorporate in the guide, organized by topic.

## How the Model Actually Works (Tokens, Context, Weights)

**Goal:** Give people just enough technical grounding that the rest of the guide clicks. They don't need to understand transformers, but they do need to understand that *everything is context* and that the model itself never changes between conversations.

### Tokens – the model's alphabet

- The model doesn't see words; it sees **tokens** – small chunks of text (roughly a word or word-fragment). Images, code, punctuation – all converted to tokens.
- Every interaction has a cost measured in tokens: what you send in (input tokens) and what the model sends back (output tokens).

### Context window – the model's working memory

- The **context window** is a fixed-size container (measured in tokens) that holds everything the model can see in a single conversation: your messages, its replies, any files or instructions loaded in, system prompts – all of it.
- As the conversation grows, the context fills up. When it's full, older content gets dropped or compressed. The model has no memory beyond what's currently in the window.
- This is the key insight: **context is everything.** When people hear about CLAUDE.md files, project instructions, system prompts, or other configuration – those are all just text that gets loaded into the context window before the conversation starts. They aren't magic; they're pre-loaded context.

### Weights – the model's fixed knowledge

- During **pre-training**, the model reads massive amounts of text and learns patterns, facts, and reasoning. This sets the model's **weights** – the billions of numerical parameters that encode what it "knows."
- During **post-training** (also called fine-tuning/RLHF), the weights are further adjusted to make the model helpful, safe, and conversational.
- After training is complete, **the weights are locked**. They never change again. Every single conversation uses the exact same model with the exact same weights.
- This means the model doesn't learn from your conversations, doesn't remember yesterday, and doesn't get better over time from use. All of its "adaptation" to you happens through context, not through weight changes.

### What fills the context window (and where it comes from)

The context window isn't just "your messages." It's built up in layers, and different products assemble those layers differently. From the bottom of the stack up:

1. **System prompt** – Instructions from the product itself that the user never sees. This is why Claude behaves differently in Claude.ai vs. Claude Code vs. Cowork; each product has its own system prompt that tells the model what tools it has, how to behave, and what it can do. The user doesn't control this layer.

2. **Recurring instructions** – Persistent instructions *you* set that get loaded into every conversation automatically. The mechanism differs by product:
    - **Claude.ai:** Project instructions (set per project in the UI)
    - **Claude Code:** CLAUDE.md files (markdown files in your repo that Claude reads on startup)
    - **Cowork:** Project knowledge and instructions configured in the workspace
    - These are the single highest-leverage thing a user can learn to set up, because they shape every interaction without repeating yourself.

3. **Skills and on-demand context** – Some context only loads when needed. In Claude Code, skills are specialized instruction sets that activate for specific tasks (e.g., a skill for creating presentations or writing commit messages). They don't sit in the context window all the time; they load on demand so they don't waste tokens when irrelevant.

4. **Your prompts and the model's replies** – The actual conversation. Each message you send and each response the model generates adds tokens to the window. This is the layer that grows and eventually fills the window.

### How the model accesses external information

The model can only work with what's in its context window, but there are several ways to get external information in:

- **File uploads** – In Claude.ai, you drag and drop files into the chat. The file contents get converted to tokens and added to the context. Simple, but limited to what you manually attach.
- **Direct file access** – In Claude Code, the model can read files directly from your machine (your codebase, local documents, etc.). It reads them into context as needed rather than requiring you to upload anything.
- **Connectors (MCP)** – This is the most powerful pattern. MCP (Model Context Protocol) servers, called "connectors" in the Claude.ai UI, let the model reach out to external data sources: SharePoint, databases, APIs, Slack, email, calendars, or anything else with an MCP integration. The model calls the connector, the connector fetches the data, and the results come back into the context window as tokens.

The key mental model: no matter the source, the information always ends up the same way – as tokens in the context window. Uploading a file, reading from disk, or querying SharePoint via MCP all do the same thing: put text into the window so the model can see it.

### Putting it together

- Same weights, every time. The only variable is what's in the context window.
- The context is assembled in layers: system prompt, recurring instructions, on-demand skills, then the live conversation.
- External data (files, local disk, MCP connectors) all funnel into the same place: tokens in the window.
- Understanding this demystifies a lot: "Why does it forget what I said yesterday?" (context window resets). "How do project instructions work?" (pre-loaded context). "Is it learning from my data?" (no – weights are frozen). "How does it access SharePoint?" (MCP connector fetches data into context).

### Visual concept

A horizontal bar representing the context window, filling left to right:
1. System prompt (product-specific, user doesn't see it) takes the first slice
2. Recurring instructions (CLAUDE.md, project instructions) take the next slice
3. Any on-demand skills or connector results load in as needed
4. User message adds tokens, model reply adds tokens, back and forth
5. The bar fills up as the conversation progresses
6. Labels show token counts at each stage so people get a feel for scale
7. Arrows from external sources (file upload icon, local disk icon, cloud/MCP icon) all point into the bar to show that everything becomes tokens in the same window