# Editorial Pass Rule

Every substantive book-planning, drafting, revision, or production task must include a full editorial pass before handoff.

This is a required quality gate, not an optional polish step. The work is not complete until the editorial pass is performed, issues are fixed or explicitly deferred, and the handoff records what was checked.

---

## When This Applies

Run the editorial pass after any task that changes or evaluates:

- `BOOK_BLUEPRINT.md`
- story bibles, project templates, or source interpretation
- chapter files in `manuscript/chapters/`
- front matter or back matter
- `manuscript/manifest.md`

For tiny mechanical repo-only changes, such as typo fixes in `.gitignore`, this rule can be skipped only if the `CHANGELOG_AI.md` handoff says why no editorial pass was needed.

---

## Required Editorial Team

Use the smallest useful team for the task, but manuscript and story-architecture work must include these perspectives:

- `academic-narratologist` — chapter function, structure, pacing, motif discipline, and blueprint continuity.
- `academic-psychologist` — trauma credibility, character psychology, and sensitivity considerations.
- `marketing-narrative-consistency-auditor` — plot logic, object continuity, manifest/order consistency, and contradictions across drafted chapters.

Add `marketing-book-co-author` when drafting or revising chapter prose.

Do not load every agent by default. Pick the smallest team that covers the risk.

---

## Required Pass

Before ending the task, review the changed work against:

1. The Editorial Content Guidance block in `.ai/rules/editorial-content-guidance.md`.
2. The relevant `BOOK_BLUEPRINT.md` chapter/section entry.
3. Continuity with drafted chapters and `manuscript/manifest.md`.
4. The Stage 2 quality gates in `BOOK_BLUEPRINT.md` §10.
5. The book length and pacing rule in `.ai/rules/book-length-and-pacing.md`.
6. The prose quality protocols in `.ai/rules/prose-quality-protocols.md`.
7. Before completing the editorial pass, run `.ai/rules/canon-mutation-control.md` and include canon mutation status in the handoff.
8. The next recommended step, which must advance the unfinished book.

Fix editorial issues found during the pass in the same execution cycle whenever the fix is clear. If an issue requires an author decision, leave the manuscript stable, record the decision needed, and keep the next recommended step concrete.

---

## Handoff Evidence

Every applicable `CHANGELOG_AI.md` entry must include an `Editorial pass:` section or equivalent bullets under `Results` that state:

- which editorial agents/perspectives were used
- which files/sections were reviewed
- issues found and fixed
- issues deferred, if any
- confirmation that the work passed the relevant quality gates

Do not claim the task is complete without this evidence.
