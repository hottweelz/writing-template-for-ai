# AI Book Writing Template

A battle-tested system for writing a novel from first idea to finished manuscript using AI tools. Works with Claude Code, Codex, and Gemini CLI.

Built from the production pipeline behind *One Went Silent* — a completed adult literary novel written using this exact process.

---

## What this is

A complete book-writing infrastructure: AI agent team, editorial rules, prose quality protocols, manuscript scaffold, and handoff ledger — all wired together so any AI tool picks up where another left off.

You bring the idea. The system handles the rest.

---

## How to start

**Step 1 — Clone this repo and open it in your AI tool of choice.**

**Step 2 — Open [START_HERE.md](START_HERE.md) and answer the questions.**
That's the only thing you need to do manually. It's about 10 minutes.

**Step 3 — Give your AI tool this instruction:**
> "Read AGENTS.md and START_HERE.md. Generate BOOK_BLUEPRINT.md."

The AI will use your answers to build a complete book plan: premise, characters, chapter-by-chapter outline, structure, style guide, and quality gates. This is Stage 1.

**Step 4 — Review and approve the blueprint.**
Read it. Change anything that feels wrong. When you're happy with it, tell your AI:
> "The blueprint is approved. Begin Stage 2. Draft chapter 1."

**Step 5 — The AI drafts the book, chapter by chapter.**
One chapter per session. Each chapter is one file. Each session ends with a handoff entry so any AI tool can pick up where the last one left off.

---

## The two stages

| Stage | What happens | Key file |
|---|---|---|
| **Stage 1** — Planning | AI generates the complete book plan from your brief | `BOOK_BLUEPRINT.md` |
| **Stage 2** — Drafting | AI drafts chapters one at a time, with quality checks | `manuscript/chapters/chNN.md` |

Do not skip Stage 1. A well-built blueprint is what separates a finished book from an abandoned one.

---

## Works with

| Tool | How |
|---|---|
| **Claude Code** | Reads `CLAUDE.md` → `AGENTS.md` |
| **Codex** | Reads `AGENTS.md` directly |
| **Gemini CLI** | Reads `GEMINI.md` → `AGENTS.md` |
| **GitHub Copilot** | Reads `.github/copilot-instructions.md` |

All tools follow the same contract. Hand off between them at any time.

---

## What's inside

```
AGENTS.md               Universal AI operating contract
START_HERE.md           Your book brief — fill this in first
BOOK_BLUEPRINT.md       Stage 1 output — AI generates this from your brief
book_project_data.md    Extended project brief (optional detail)
MEMORY.md               Durable facts the AI remembers across sessions
CHANGELOG_AI.md         Session handoff ledger

.ai/
  rules/                Editorial and quality rules (8 files)
  agents/               Writing agent profiles (9 agents)

docs/protocols/         Prose quality protocol source files (5 files)

manuscript/
  manifest.md           Chapter order — governs assembly
  front/                Title page, copyright, dedication, epigraph
  chapters/             One file per chapter
  back/                 Acknowledgments, author note

build/                  Generated artifacts (never edit by hand)
review/                 Editorial review documents
```

---

## The agent team

Nine agents are included. You don't load all of them — you pick the smallest useful team per task.

**Scene planning & drafting:**
- `writing-fractal-scene-architect` — maps every scene as a circuit of change before writing
- `writing-character-hierarchy` — controls how much attention each character type gets
- `writing-prose-suppression` — prevents AI writing patterns during generation

**Revision:**
- `writing-prose-suppression` — sweeps for AI patterns
- `writing-semantic-gradient` — detects uncommitted word choices

**Structural review:**
- `writing-yorke-dramaturg` — diagnoses dramatic failures using Yorke's methodology

**Editorial team:**
- `academic-narratologist` — structure, pacing, narrative theory
- `academic-psychologist` — character psychology, trauma credibility
- `marketing-narrative-consistency-auditor` — plot logic, continuity, object tracking
- `marketing-book-co-author` — prose drafting, voice, chapter development

---

## The editorial pass

Every chapter goes through an editorial pass before the handoff is recorded. This is mandatory, not optional. The pass catches structural problems, continuity errors, and prose quality issues before they compound.

The rules that govern the pass live in `.ai/rules/editorial-pass.md`.

---

## Content guidance

Before you start, update `.ai/rules/editorial-content-guidance.md` with your project's genre, intended audience, and content parameters. This tells the AI what kind of work it's doing — which determines how it handles difficult material. Read the instructions inside that file.

---

## License

MIT. Use it, fork it, build on it.

Contributions are welcome. See [CONTRIBUTING.md](CONTRIBUTING.md) for the public-repo workflow and template boundaries.
