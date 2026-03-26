# NH Colleague Questions

Questions captured verbatim from onboarding conversations with North Highland colleagues. These represent real knowledge gaps and expectations from non-technical users encountering Claude for the first time.

## Emily Schulman (es-transcript.md)

1. **What can Claude actually do for me?**
   "I need the basics. I need 101 'cause I think I have in my mind like a fantasy of what it will be able to do for me, and I just don't know if any of that is true."

2. **Can Claude pull together proposal references?**
   "Today I need to pull together some calls and references for a proposal like a special side one. So is that something that like Claude could do for me?"

3. **Do you have a YouTube channel?**
   "You got a YouTube channel?"

4. **Can I buy a personal subscription?**
   "If North Highland doesn't approve me, would I just get like, can I buy my own personal version?"

5. **Can a personal subscription connect to my work files?**
   "If I got my own personal one though, I can't connect it to my files, right?"

### What Juan showed/told Emily

*Note: The transcript has a ~23-minute gap (1:06 to 24:13), so a large portion of the conversation was not captured. What's below is everything from the recorded portions.*

1. **Purpose of the call** — Gathering questions and confusion points to build a guide for non-technical colleagues; mentioned having already helped his girlfriend and friends set up Claude Code
2. **Personal subscription recommendation** — Told Emily to go ahead and buy her own ($20/month) rather than wait for NH approval, so she can start building intuition
3. **Personal use case demo (calendar + Todoist)** — Described his own personal Claude setup: connected to his calendar and Todoist, where he logs on and asks "do I need to do anything today?" and it knows all his tasks, updates action items, adds links with notes explaining why he needs to do things
4. **The power of voice-to-action** — Emphasized that he can tell Claude something in one audible sentence and it handles all the administrative overhead he wouldn't want to do manually
5. **Personal vs. NH subscription boundaries** — Explained that legally you can't connect a personal subscription to NH files, but for things like researching a client (publicly available info), it's reasonable to use; gave context on how NH's policy evolved from "approved vendor" to "must use official NH account"
6. **Head start advantage** — Told Emily that if she starts using it now on her own subscription, she'll actually know how to use it by the time the NH one opens up

## Jimmy Abate (ab-transcript.md)

*Note: Jimmy's session was more hands-on setup/walkthrough than Q&A. The transcript has a ~22-minute gap (0:58 to 23:41). Jimmy's contributions were mostly acknowledgments and follow-along responses rather than explicit questions. No direct questions from Jimmy were captured in the available transcript.*

### What Juan showed/told Jimmy

1. **Recommended terminal + VS Code over the desktop app** — Told Jimmy he never uses the Claude desktop app, only operates within the terminal and VS Code plugin; said the desktop app "kind of sucks," eats resources, and makes his computer run hot
2. **Terminal and VS Code as the two main interfaces** — Framed the session around testing both the terminal and VS Code so Jimmy is set up "in the way that will let you do the most going forward"
3. **The context bar and token usage** — Showed the context bar in the terminal, explained he'd used 40,000 tokens from the main agent, and that this is the main agent's context window
4. **Sub-agents and context isolation** — Explained that sub-agents get their own separate context window that doesn't pollute the main agent's; two benefits: (a) you can spin up Sonnet or Haiku agents for tasks that don't need full Opus brainpower, and (b) it keeps the main agent focused on just the things you need it to focus on
5. **Usage/seat implications of sub-agents** — Mentioned that using sub-agents means you're "not eating into your usage," which matters depending on which seat/plan NH gave him
6. **VS Code setup walkthrough** — Walked Jimmy through: File > Open Folder > navigate to the test folder he'd just created in the terminal; showed that everything Claude created is visible in VS Code's file explorer
7. **Dismiss VS Code's built-in "Build with Agent"** — Told Jimmy to exit out of VS Code's native agent feature ("that's VS Code's thing"), distinguishing it from the Claude plugin
8. **Editing files in VS Code** — Showed that markdown files can be edited directly in VS Code; mentioned he can download plugins for PDFs or Excel files and can ask Claude to do that
9. **Claude VS Code plugin** — Pointed out the "Clod button" (Claude plugin) in the top right; explained it provides the same functionality as the terminal but with a more user-friendly interface; noted the plugin already knows what file you have open (showed it detecting "NJ Turnpike news MD")
10. **Permission modes in the plugin** — Walked through the plugin's permission settings (bottom right), set to "edit automatically" — same functionality as the terminal but presented as a UI
11. **Contextual awareness with selected text** — Had Jimmy select line 7 of a file, then type "what does this mean?" in the Claude plugin to demonstrate that the plugin knows what text you have selected and scopes its response to that selection
12. **Slash commands in the plugin** — Showed that typing `/` in the plugin brings up the same slash commands as the terminal; explained "this plugin puts another layer of user interface on what you wanna do"
13. **Free-form prompting in the plugin** — Had Jimmy type a natural language instruction ("remove content related to...") to show that you can just type plain English commands, not just slash commands
