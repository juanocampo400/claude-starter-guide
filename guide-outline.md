# Getting Started with Claude AI — Guide Outline

> **Standing note (all sections):** Before finalizing content, do a terminology review — identify the industry-standard/correct terms vs. the analogies we use to make things accessible. Flag anywhere we're simplifying in a way that loses too much technical reality. The goal is plain language that doesn't teach the wrong mental model.

---

## Section 1: What Is Claude?

- **A teammate, not a tool.** Frame Claude as a knowledgeable colleague who can be briefed on your client history, current project state, and preferences — and who gets better the more context you give it.
- **The product landscape.** Briefly orient people on the difference between the products (Claude.ai, Cowork, Claude Code) and the models (Opus, Sonnet, Haiku). These are different things and people conflate them constantly.
- **It can be wrong.** Always verify anything client-facing. Introduce the concept of AI slop — output that sounds polished but is generic, shallow, or subtly inaccurate. Knowing what slop looks like is a skill worth developing.

---

## Section 2: Claude.ai / Cowork / Claude Code — A Spectrum

Present as a spectrum from most accessible to most powerful, not as an either/or:

- **Claude.ai** — The conversation. Ask questions, draft, brainstorm, analyze.
- **Cowork** — The desktop agent. Give it a goal and a folder, it plans and executes autonomously.
- **Claude Code** — The developer tool. Terminal-based, full system access, maximum control.

Most NH people will start on the left and move right as comfort grows.

> **Standing note:** Do a more thorough vetting pass on the cross-comparison of capabilities between these three products. There's a tension between being descriptive (more detail, more accurate) and being evergreen (less detail, survives product updates). Decide what layer of abstraction to target before writing final content.

---

## Section 3: Concepts That Matter (3–5 cards)

1. **Prompts** — What you type matters. Be specific, give context, state your role and what good output looks like.
2. **Context rot** — Claude's attention degrades over long conversations. Start fresh for new topics rather than piling everything into one marathon chat.
3. **Model tiers (Opus / Sonnet / Haiku)** — Different models for different jobs. Not "always use Sonnet" — explain the tradeoffs (speed, depth, cost) so people can make informed choices. NH's current plan gives access to all models; the difference is usage allocation.
4. **Curating context** — Claude gets better when you give it persistent context it reads every session (project descriptions, project instructions, CLAUDE.md files) vs. reusable capabilities you build once and invoke as needed (skills). This is the difference between briefing a teammate once and teaching them a repeatable process.
5. *(Optional 5th card, TBD based on space)* **Hallucination** — Claude will confidently state things that are wrong. This isn't a bug; it's a known property of the technology. Verification is part of the workflow, not a sign something went wrong.

---

## Section 4: FAQ Accordion (5 questions)

1. **"Can Claude help me with proposals, research, and client prep?"** — Yes. Walk through a concrete example: paste in a brief, ask for a draft, iterate. This was the #1 question from real colleague conversations.

2. **"What models and products do I get with my NH plan?"** — All of them. Claude.ai, Cowork, Claude Code, and all model tiers (Opus, Sonnet, Haiku). The only difference between plan levels is how much usage you get.

3. **"How do I make sure Claude's output is actually accurate?"** — Suggestions: agentic QA checks (have Claude review its own work with a critical eye), human-in-the-loop (HITL) workflows where a person verifies before anything goes to a client, cross-referencing key claims against source material.

4. **"Does Claude remember what I told it last week?"** — Not by default within a single conversation thread, but there are ways to set up persistent context (projects, CLAUDE.md, skills) so Claude has the background it needs every time. Explain the distinction between memory-like features and actually curating what Claude knows.

5. **"How should our team work with Claude together?"** — This is new territory and everyone is figuring it out. Cover the building blocks: shared projects, shared CLAUDE.md files that encode team conventions, skills that standardize repeatable processes across teammates. The value compounds when a team invests in these together rather than everyone starting from scratch.

---

## Section 5: Diagram — HITL Workflow with Team Collaboration

Visual showing a realistic multi-person workflow:

- Multiple teammates working on related deliverables
- Each using Claude with a shared project setup (common CLAUDE.md, shared skills)
- Human checkpoints at key stages (review, approve, iterate)
- Arrows showing the loop: draft > human review > refine > deliver

The point: Claude accelerates the work, but humans stay in the loop at every decision point. The team's shared configuration means everyone's Claude "knows" the same things about the project.

---

## Section 6: Ready to Try Claude Code? (already built)

Copy-paste setup prompt. No changes needed.
