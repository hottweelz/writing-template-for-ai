# Manuscript Manifest

This file governs the assembly order for the manuscript. The EPUB/PDF pipeline reads this list to concatenate files in the correct order. Edit this file to reorder — never rename chapter files to change order.

---

## Assembly Order

```
manuscript/front/01-title.md
manuscript/front/02-copyright.md
manuscript/front/03-dedication.md
manuscript/front/04-epigraph.md
manuscript/chapters/ch01.md
```

<!-- Add chapters here as they are drafted, in order -->

```
manuscript/back/01-acknowledgments.md
manuscript/back/02-author-note.md
```

---

## Notes

- Each chapter file contains exactly one `### Chapter N — Title` heading.
- Part dividers (`part-1.md`, `part-2.md`) are inserted in the chapter list above where part breaks occur.
- `build/manuscript.full.md` is generated from this list. Never edit it by hand.
