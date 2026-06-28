# Manuscript File Structure Rule

**One chapter per Markdown file. There is no single `manuscript.md`.**

A monolithic manuscript file causes unreadable diffs, destructive reordering, impossible parallel review, and noisy version control. Per-chapter files keep one drafting session, one diff, one commit, and one changelog entry aligned.

---

## Layout

```text
manuscript/
  manifest.md              # ORDERED build list — single source of truth for assembly order
  front/
    01-title.md
    02-copyright.md
    03-dedication.md
    04-epigraph.md
  chapters/
    ch01.md … chNN.md      # one chapter per file; exactly one `### Chapter N — Title` inside
  back/
    01-acknowledgments.md
    02-author-note.md
build/                     # generated only; never hand-edited, never committed as source
  manuscript.full.md       # concatenation of manifest order → fed to EPUB/PDF pipeline
```

Parts and acts are represented by part-divider files (`part-1.md`, `part-2.md`) inserted between chapter files in `manifest.md`.

---

## Rules

1. **One chapter = one file = one drafting session = one commit.** Standing authorization to commit — do not pause to ask before committing each chapter.
2. **Filenames are zero-padded and lexically sortable** (`ch01.md`, never `ch1.md`).
3. **`manifest.md` governs order**, not filesystem sort. To reorder, edit the manifest — never rename a cascade of files.
4. **Heading levels:** `#` = book title (front matter only) · `##` = part dividers · `###` = chapter headings. Scene break = a centered `* * *` line.
5. **`build/` is disposable.** `manuscript.full.md` is a generated artifact for production only — never edit it, never treat it as source.
6. **Clean Markdown only** — no HTML, no manual page breaks.

---

## Production

The EPUB/PDF pipeline concatenates files in `manifest.md` order into `build/manuscript.full.md`, then generates EPUB and print PDF. The per-chapter source files remain the authoritative manuscript.
