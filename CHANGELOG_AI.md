# CHANGELOG_AI.md

AI handoff ledger for this repository. Every AI agent reads this before starting work and writes a new entry **at the top** before ending work. This is the source of truth for what has been done and what comes next.

<!--
HOW THIS FILE WORKS
- Newest entries go at the TOP, directly below this comment.
- The entry below is a SEED EXAMPLE showing the format. On your first real handoff,
  replace [DATE]/[TIME]/[Tool name] with real values (date format: YYYY-MM-DD HH:MM, e.g. 2026-03-14 16:20).
- The full handoff template (with the Editorial pass and Canon mutation check blocks) lives in AGENTS.md.
-->
### 2026-06-29 12:21 local — Gemini 3.5 Flash

Task:
- Verify build script implementation and sync with repository origin.

Selected agent team:
- `academic-narratologist`: to oversee manuscript compilation structure.

Changes made:
- Synced local repository branch with `origin/main` (which already contains a full-featured `scripts/build.sh` supporting Markdown concatenation, EPUB, and PDF generation via Pandoc).
- Executed the `bash scripts/build.sh` script to verify the generation of `build/manuscript.full.md` and `build/book.epub`.

Files touched:
- None (build artifacts in `build/` are git-ignored)

Commands/tests run:
```bash
bash scripts/build.sh
```

Results:
- Script successfully assembled the manuscript sections into `build/manuscript.full.md` (52 lines) and exported `build/book.epub`.

Decisions made:
- Kept the repository standard `scripts/build.sh` as it is more feature-rich (handles Pandoc EPUB and PDF compilation) than a custom root-level bash script.

Known issues:
- None.

Next recommended steps:
- Proceed with Stage 1 (`BOOK_BLUEPRINT.md` generation from `START_HERE.md` and `book_project_data.md`).

Notes for next agent:
- Use `bash scripts/build.sh` to assemble and export the manuscript.

Canon mutation check: PASS — no canon changes introduced.

MEMORY.md update: not needed — no changes to durable facts or conventions.

---

### [DATE] [TIME] local — [Tool name]

Task:
- Project initialized from the AI Book Writing Template.

Selected agent team:
- None — initialization only.

Changes made:
- Created a copy of the template. Filled in START_HERE.md.

Files touched:
- START_HERE.md

Commands/tests run:
```bash
# none
```

Results:
- Repository ready for Stage 1.

Decisions made:
- None yet.

Known issues:
- None.

Next recommended steps:
- Read AGENTS.md, START_HERE.md, and book_project_data.md, then generate BOOK_BLUEPRINT.md using the book_generator_prompt.md template.

Notes for next agent:
- START_HERE.md contains the author's book concept. Use it to generate BOOK_BLUEPRINT.md.
- Do not begin drafting until the author reviews and approves the blueprint.

Canon mutation check: PASS — no manuscript canon exists yet.

MEMORY.md update: needed — update with project description once the blueprint is generated.
