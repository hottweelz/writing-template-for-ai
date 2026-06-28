# MEMORY.md

Durable project facts, decisions, and author preferences.
Read before starting work. Update only when something stable changes.
Chronological handoffs live in `CHANGELOG_AI.md` — do not duplicate them here.

---

## What this project is

[Describe the book: genre, premise, target audience, publishing goal]

---

## Source of truth

- Repo files and `CHANGELOG_AI.md` are authoritative. Do not rely on chat history.
- `AGENTS.md` is the universal cross-tool contract. `CLAUDE.md` and `GEMINI.md` are thin shims pointing to it.
- Startup: read `CHANGELOG_AI.md`, `MEMORY.md`, `.ai/rules/*`; select the smallest useful agent team from `.ai/agents/` and state it before working.

---

## Two-stage pipeline

This is a two-stage book-writing project.

**Stage 1** = Planning: Story Bible → `BOOK_BLUEPRINT.md`. Do not start Stage 2 until blueprint is approved by the author.

**Stage 2** = Drafting: one chapter per session, one file per chapter (`manuscript/chapters/chNN.md`), one commit per session. Standing authorization to commit — do not ask before committing.

---

## Conventions

- Manuscript is one Markdown file per chapter. There is no single `manuscript.md`. Order is governed by `manuscript/manifest.md`.
- Chapter length follows dramatic function — chapters end when the scene is complete, not when a word count is reached.
- Full editorial pass is mandatory before any handoff.
- Next steps in `CHANGELOG_AI.md` are mandatory while the book is unfinished. Never write "none" or "no next step" unless the book is complete and verified.

---

## Author preferences

[Document author preferences here as they are established during the project. Examples: tone, content boundaries, commit workflow, sensitivity requirements, preferred chapter length, etc.]

---

## Active project

- **Title:** [Working title]
- **Genre:** [Genre]
- **Blueprint status:** [Not started / In progress / Approved]
- **Stage 2 status:** [Not started / In progress — ch01 through chNN drafted]
- **Known decisions:** [Record major creative and structural decisions as they are made]
- **Public template repository:** https://github.com/hottweelz/writing-template-for-ai
