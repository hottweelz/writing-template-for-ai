# AGENTS.md

Universal AI operating contract for this repository. Applies to Claude Code, Codex, Gemini CLI, Copilot, and any other AI coding or writing assistant.

---

## Non-Negotiables (read first)

These hold even if the rest of this file scrolls out of context:

1. **Stage 1 before Stage 2.** Never draft manuscript prose before `BOOK_BLUEPRINT.md` is approved by the author.
2. **Editorial pass before every handoff** on any manuscript or story-architecture change (`.ai/rules/editorial-pass.md`).
3. **Canon mutation check** before completing any substantive task (`.ai/rules/canon-mutation-control.md`) — never silently change what is true in the book.
4. **Write the `CHANGELOG_AI.md` handoff** before stopping. A task is not complete without it.

**Precedence:** the instructions in this repository govern book-writing tasks here. If they conflict with broader or global instructions (a parent-folder `AGENTS.md`/`CLAUDE.md`, or global memory), the files in *this* repository win, and the agent team is the nine personas in this repo's `.ai/agents/` — ignore any other "agent profile" set.

**On `.ai/rules/`:** no tool auto-discovers this directory. These rules apply because this contract tells the agent to read them. If you fork the routing, preserve the read steps.

---

## Source of Truth

The repository is the source of truth. Do not rely on prior chat history.

Before starting work, every agent must read:

- `MEMORY.md`
- `CHANGELOG_AI.md`
- `.ai/rules/agent-team-selection.md`
- `.ai/rules/ai-handoff.md`

For any book-planning, drafting, revision, scene-planning, or production task, also read:

- `.ai/rules/editorial-pass.md`
- `.ai/rules/editorial-content-guidance.md`
- `.ai/rules/book-length-and-pacing.md`
- `.ai/rules/publication-boundary.md`
- `.ai/rules/prose-quality-protocols.md`
- `.ai/rules/manuscript-file-structure.md` — the one-file-per-chapter layout and assembly rules.
- `.ai/rules/canon-mutation-control.md` — required for all planning, drafting, revision, editorial, and manuscript-production tasks.

If `MEMORY.md` does not exist, create it using the starter structure in this file before continuing.

Use `MEMORY.md` for durable project facts, architectural decisions, and author preferences.
Use `CHANGELOG_AI.md` for chronological task handoffs only.

---

## Required Startup Behavior

Before editing or generating any file:

1. Read `CHANGELOG_AI.md`.
2. Identify the latest handoff entry and the next recommended step.
3. Inspect the repo if the handoff appears stale or inconsistent with current files.
4. For any book-planning, drafting, revision, or scene-planning task, read:
   - `.ai/rules/editorial-pass.md`
   - `.ai/rules/editorial-content-guidance.md`
   - `.ai/rules/book-length-and-pacing.md`
   - `.ai/rules/publication-boundary.md`
   - `.ai/rules/prose-quality-protocols.md`
   - `.ai/rules/manuscript-file-structure.md`
   - `.ai/rules/canon-mutation-control.md`
5. Read available agent profiles in `.ai/agents/`.
6. Select the smallest useful team of agents for the task.
7. State the selected team before starting.

Do not load every agent by default. Pick the smallest effective team.

---

## Two-Stage Process

This repository follows a mandatory two-stage pipeline:

**Stage 1 — Planning**
Generate `BOOK_BLUEPRINT.md` from `START_HERE.md` (and `book_project_data.md` if present) using the `book_generator_prompt.md` template.
The blueprint must be reviewed and approved by the author before Stage 2 begins.
Never draft manuscript prose before the blueprint is approved.

**Stage 2 — Drafting**
Draft chapters one at a time. One chapter = one file = one session = one commit.
Each session ends with a complete `CHANGELOG_AI.md` handoff entry.
Run the editorial pass before closing any session.

---

## Agent System

Agent profiles live in `.ai/agents/`.
Selection rules live in `.ai/rules/agent-team-selection.md`.
Handoff rules live in `.ai/rules/ai-handoff.md`.

The nine `.ai/agents/` files are **reference personas the AI reads and adopts as lenses** — not installable subagents, and there is no `/agents` menu for them. In Claude Code, native dispatchable subagents are additionally provided in `.claude/agents/` as thin adapters that point back at these same personas (single source of truth). "Select a team" means *adopt these perspectives*, not load a runtime feature. See `docs/genre-routing.md` for which personas apply to which genre.

Writing task rules (load for any book-planning, drafting, revision, or scene-planning task):

```
.ai/rules/editorial-pass.md
.ai/rules/editorial-content-guidance.md
.ai/rules/book-length-and-pacing.md
.ai/rules/publication-boundary.md
.ai/rules/prose-quality-protocols.md
.ai/rules/manuscript-file-structure.md
.ai/rules/canon-mutation-control.md
```

Nine writing agents are available:

**Scene planning and drafting:**
- `writing-fractal-scene-architect` — maps every scene as a circuit of change before writing
- `writing-character-hierarchy` — controls oxygen distribution across character tiers
- `writing-prose-suppression` — prevents AI writing patterns during generation

**Revision:**
- `writing-prose-suppression` — sweeps for AI patterns
- `writing-semantic-gradient` — detects uncommitted word choices

**Structural review:**
- `writing-yorke-dramaturg` — diagnoses dramatic failures using Yorke's methodology

**Editorial team:**
- `academic-narratologist` — structure, pacing, narrative theory
- `academic-psychologist` — character psychology, trauma credibility, sensitivity
- `marketing-narrative-consistency-auditor` — plot logic, continuity, object tracking
- `marketing-book-co-author` — prose drafting, voice, chapter development

Prose quality protocol source files live in `docs/protocols/`.

State the selected team before starting:

```md
Selected agent team:
- AgentName: reason
```

Always include a reviewer/sensitivity perspective when the task touches trauma, abuse, violence, self-harm, religion, death, or difficult subject matter.

---

## Required Shutdown Behavior

Before completing work, stopping, or reaching a context limit:

1. Run the editorial pass if manuscript content was changed.
2. Update `CHANGELOG_AI.md` with a new handoff entry.
3. Include: task, selected agent team, changes made, files touched, commands run, results, decisions made, known issues, next recommended steps, notes for next agent.
4. Review whether any durable fact, decision, or author preference changed.
5. If yes, update `MEMORY.md`.
6. If no, state in the handoff: `MEMORY.md update: not needed`.

A task is not complete until the handoff entry is written.

---

## MEMORY.md Starter Structure

If `MEMORY.md` does not exist, create it with this structure:

```md
# MEMORY.md

Durable project facts, decisions, and author preferences.
Read before starting work. Update only when something stable changes.
Chronological handoffs live in CHANGELOG_AI.md — do not duplicate them here.

---

## What this project is

[Describe the book: genre, premise, target audience, publishing goal]

## Source of truth

- Repo files and CHANGELOG_AI.md are authoritative.
- AGENTS.md is the universal cross-tool contract.
- Startup: read CHANGELOG_AI.md, MEMORY.md, .ai/rules/*; select the smallest useful agent team.

## Author preferences

[Document preferences as they are established: tone, chapter length policy, content boundaries, commit workflow, etc.]

## Active project

[Title, genre, blueprint status, drafting status, chapter count, known decisions]
```

---

## Handoff entry template

```md
### YYYY-MM-DD HH:MM local — [Tool name]

Task:
-

Selected agent team:
-

Changes made:
-

Files touched:
-

Commands/tests run:
```bash

```

Results:
-

Editorial pass:
- Agents used:
- Files reviewed:
- Issues found and fixed:
- Issues deferred:

Decisions made:
-

Known issues:
-

Next recommended steps:
-

Notes for next agent:
-

Canon mutation check: [PASS — no canon changes / FLAGGED — operator decision required]

MEMORY.md update: [needed / not needed — reason]
```

---

## Critical behaviors

- Complete the task in a single execution cycle whenever possible.
- Do not stop after partial implementation unless blocked by an author decision.
- Assume reasonable defaults when safe to proceed.
- When resuming from another tool, read the latest CHANGELOG_AI.md entry, verify repo state, continue from the next recommended step.
- The goal is seamless handoff between tools. CHANGELOG_AI.md makes that possible.
