# AI Book Writing Template

A battle-tested system for writing a book from first idea to finished manuscript using AI tools. Works with Claude Code, Codex, Gemini CLI, and GitHub Copilot.

Built from the production pipeline behind *One Went Silent* — a completed adult literary novel written using this exact process.

---

## What this is

A complete book-writing infrastructure: an AI agent team, editorial rules, prose-quality protocols, a manuscript scaffold, a build step that exports your EPUB/PDF, and a handoff ledger — all wired together so any AI tool picks up where another left off.

You bring the idea. The system gives the AI the craft, the structure, and the memory.

The craft engine is **fiction-first** (it shines for novels and memoir) but adapts to other genres — see [Will this work for my genre?](#will-this-work-for-my-genre) before you start.

---

## New here? Read this first

If you've never used an AI coding tool or cloned a repo, start here. This takes a few minutes and you only do it once.

**1. Pick an AI tool and install it.** Any of these work; if you're brand new, **[Claude Code](https://docs.claude.com/en/docs/claude-code)** is the easiest place to begin.

| Tool | Install |
|---|---|
| Claude Code | https://docs.claude.com/en/docs/claude-code |
| Codex | https://developers.openai.com/codex/cli |
| Gemini CLI | https://github.com/google-gemini/gemini-cli |
| GitHub Copilot | https://docs.github.com/copilot |

A "terminal-style AI agent" is just a chat assistant that can also read and write the files in a folder on your computer. That's the whole idea here: the AI works inside *your book's folder.*

**2. Get your own copy of this template.**
- **Easiest:** on this repo's GitHub page, click the green **"Use this template" → "Create a new repository."** That gives you a clean copy that's yours.
- **Or** download the ZIP (green **Code** button → **Download ZIP**) and unzip it.
- **Or**, if you know git: `git clone <your-copy-url>`.

**3. Open that folder in your AI tool.** In Claude Code, that means opening the folder and starting a session inside it. Now you're ready.

> You do **not** need to understand the agents, protocols, or git to write your book. The AI handles those. Your only job is the brief in the next step.

---

## How to start

**Step 1 — Open [START_HERE.md](START_HERE.md) and answer the questions.**
This is the only thing you do by hand. Rough answers are fine — it takes about 10–30 minutes, and you can refine later.

**Step 2 — (Optional) add content guidance for mature/dark material.**
If your book deals with difficult subject matter, open [.ai/rules/editorial-content-guidance.md](.ai/rules/editorial-content-guidance.md) and fill in the short context block. This tells the AI what kind of work it's doing so it handles hard material honestly. Skip it for lighter books.

**Step 3 — Tell your AI to build the plan:**
> "Read AGENTS.md, START_HERE.md, and book_project_data.md, then generate BOOK_BLUEPRINT.md using the book_generator_prompt.md template."

(If you only filled in START_HERE.md, that's fine — `book_project_data.md` is optional extra detail.) The AI turns your answers into a complete book plan: premise, characters, chapter-by-chapter outline, structure, style guide, and quality gates. This is **Stage 1**.

**Step 4 — Review and approve the blueprint.**
Read it. Change anything that feels wrong. When you're happy, tell your AI:
> "The blueprint is approved. Begin Stage 2. Draft chapter 1."

**Step 5 — The AI drafts the book, chapter by chapter.**
One chapter per session, one file per chapter. The AI runs an editorial pass and writes a handoff note at the end of each session, so any AI tool can pick up exactly where the last one stopped — you don't have to.

Want to see what the output looks like first? Check [examples/](examples/) for a sample blueprint and chapter.

---

## The two stages

| Stage | What happens | Key file |
|---|---|---|
| **Stage 1** — Planning | AI generates the complete book plan from your brief | `BOOK_BLUEPRINT.md` |
| **Stage 2** — Drafting | AI drafts chapters one at a time, with quality checks | `manuscript/chapters/chNN.md` |

Do not skip Stage 1. A well-built blueprint is what separates a finished book from an abandoned one.

---

## Producing your book file

When chapters are drafted, turn them into an actual EPUB and PDF:

```bash
bash scripts/build.sh
```

This reads [manuscript/manifest.md](manuscript/manifest.md) for the chapter order, assembles everything into `build/manuscript.full.md`, and (if [pandoc](https://pandoc.org/installing.html) is installed) exports `build/book.epub` and `build/book.pdf` using the metadata in [manuscript/metadata.yaml](manuscript/metadata.yaml).

- **Just want the assembled manuscript, no export?** `bash scripts/build.sh --md-only`
- **No pandoc / not technical?** Ask your AI: *"Concatenate the files listed in manuscript/manifest.md, in order, into one document."* Then export from your editor (or paste into Word / Google Docs and "Save as / Download as EPUB or PDF").

Outputs land in `build/`, which is intentionally git-ignored.

---

## Works with

| Tool | How | Notes |
|---|---|---|
| **Claude Code** | Reads `CLAUDE.md` → `AGENTS.md` | Full support. Also gets native subagents (see below). |
| **Codex** | Reads `AGENTS.md` directly | Full support. |
| **Gemini CLI** | Reads `GEMINI.md` → `AGENTS.md` | Full support. |
| **GitHub Copilot** | Reads `.github/copilot-instructions.md` | Best-effort. Copilot Chat with the repo open can follow the contract; inline completions can't. Treat it as a drafting assist, not a full handoff agent. |

All four follow the same `AGENTS.md` contract, so you can hand off between them mid-book.

---

## The agent team

Nine specialist perspectives ship with the template. You don't load all of them — the smallest useful team is picked per task.

**New to this? You don't have to choose.** Just say *"choose the agent team for this and tell me why,"* and the AI will. The list below is for the curious.

**Scene planning & drafting:** `writing-fractal-scene-architect` (maps every scene as a circuit of change) · `writing-character-hierarchy` (controls how much attention each character gets) · `writing-prose-suppression` (prevents AI writing patterns)
**Revision:** `writing-prose-suppression` (sweeps for AI patterns — it works in both phases) · `writing-semantic-gradient` (detects uncommitted word choices)
**Structural review:** `writing-yorke-dramaturg` (diagnoses dramatic failures via Yorke's methodology)
**Editorial team:** `academic-narratologist` (structure, pacing) · `academic-psychologist` (character psychology, trauma credibility) · `marketing-narrative-consistency-auditor` (plot logic, continuity) · `marketing-book-co-author` (prose, voice, chapter development)

### Two ways these run

The same nine perspectives work in two modes, so you get the best of each tool:

- **Reference personas** (`.ai/agents/`) — the AI reads the persona file and *adopts the lens*. No special feature needed; works in Claude Code, Codex, Gemini CLI, and Copilot. This is the universal path.
- **Native subagents** (`.claude/agents/`) — in Claude Code these are real, dispatchable subagents with their own `/agents` menu and isolated context. They're thin adapters that point back at the same persona files, so there's a single source of truth.

In short: every tool gets the personas; Claude Code *additionally* gets first-class subagents.

---

## The editorial pass

Every chapter goes through an editorial pass before the handoff is recorded. This is mandatory, not optional. It catches structural problems, continuity errors, and prose-quality issues before they compound. The rules live in [.ai/rules/editorial-pass.md](.ai/rules/editorial-pass.md), and a separate [canon-mutation-control](.ai/rules/canon-mutation-control.md) rule stops the AI from quietly changing your story while "improving" it.

---

## Will this work for my genre?

The craft DNA is built for dramatic, character-driven fiction and memoir, where it's genuinely excellent. It adapts outward — but some protocols don't apply to every category (a how-to book has no "scenes," romance needs its beats and its happy ending, fantasy needs a world bible). Before Stage 1, read **[docs/genre-routing.md](docs/genre-routing.md)** — one table tells you which agents and protocols to use and which to skip for your genre.

---

## Content guidance & responsible use

This template supports serious creative writing, including dark and mature themes handled honestly. The approach is to give the AI clear *editorial context* about your project (see [editorial-content-guidance.md](.ai/rules/editorial-content-guidance.md)) — not to evade safety.

Some boundaries are fixed for every project regardless of genre — most importantly, **no sexual content involving minors, ever.** You are responsible for what you choose to write and publish.

---

## Scope: what this does and doesn't do

**It does:** turn your brief into a full plan, draft and revise your manuscript with a professional craft toolkit, keep continuity across sessions and tools, and assemble a clean EPUB / print-ready PDF.

**It doesn't:** obtain an ISBN, design a cover, choose a trim size, or handle KDP / IngramSpark / retailer compliance. Those are your manual steps. (For ebooks you usually don't need your own ISBN — your retailer can assign one; for print-on-demand, a free ISBN is often available through the platform.) The AI's job is the manuscript; publishing the result is yours.

---

## What's inside

```
README.md               You are here
AGENTS.md               Universal AI operating contract
START_HERE.md           Your book brief — fill this in first
book_project_data.md    Extended project brief (optional detail)
book_generator_prompt.md  The Stage 1 spec the AI uses to build the blueprint
BOOK_BLUEPRINT.md       Stage 1 output — AI generates this from your brief
MEMORY.md               Durable facts the AI remembers across sessions
CHANGELOG_AI.md         Session handoff ledger
CLAUDE.md / GEMINI.md   Thin shims pointing to AGENTS.md
LICENSE · CONTRIBUTING.md

.github/
  copilot-instructions.md   Points Copilot to AGENTS.md

.ai/
  rules/                Editorial, quality, handoff, and canon-control rules (9 files)
  agents/               Writing agent personas (9 — cross-platform)

.claude/
  agents/               Native Claude Code subagent adapters (9)

docs/
  genre-routing.md      Which agents/protocols apply to your genre
  protocols/            Prose-quality protocol source files (5)

scripts/
  build.sh              Assembles the manuscript and exports EPUB/PDF

examples/               Sample blueprint + sample chapter (demo)

manuscript/
  manifest.md           Chapter order — governs assembly
  metadata.yaml         Title/author/cover metadata for export
  front/                Title page, copyright, dedication, epigraph
  chapters/             One file per chapter (+ part-N.md dividers)
  back/                 Acknowledgments, author note

build/                  Generated artifacts (never edit by hand; git-ignored)
review/                 Editorial review documents
```

---

## License

MIT — see [LICENSE](LICENSE). Use it, fork it, build on it. (MIT covers the template and tooling; anything *you* write with it is yours.)

Contributions are welcome. See [CONTRIBUTING.md](CONTRIBUTING.md) for the public-repo workflow and template boundaries.
