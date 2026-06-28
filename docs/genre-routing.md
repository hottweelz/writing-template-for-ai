# Which parts of this template apply to my genre?

The craft engine here is **fiction-first.** It was built for dramatic, character-driven prose — literary, upmarket, book-club, psychological suspense — and it is genuinely excellent for those. It adapts to other genres, but some of the protocols and agents do not apply to every kind of book, and a few would actively mislead you if you applied them blindly.

This page is the map. Find your genre, read the row, and tell your AI which lenses to use and which to skip. **If in doubt, paste the relevant row into your AI and ask it to confirm the routing for your project before Stage 1.**

---

## The routing table

| Genre family | Scene circuits & character tiers | Yorke five-act / fracture | Prose-suppression (AI-ism) | Semantic gradient | Consistency auditor | Notes |
|---|---|---|---|---|---|---|
| Literary / upmarket / book-club | **Core** | **Core** | **Core** | **Core** | **Core** | The home genre. Everything applies. |
| Psychological thriller / suspense | **Core** | **Core** | **Core** | **Core** | **Core** | Add the fair-play note below if there's a mystery. |
| Mystery / crime / whodunit | **Core** | **Core** | **Core** | **Core** | **Core** | Use the **Fair-Play Clue Ledger** note below — the standard ledger tracks ambiguity, not solvability. |
| Genre romance | **Core** | Adapt | **Core** | **Core** | **Core** | See **Romance** note — the HEA/HFN ending is a genre *requirement*, not a weakness to resist. |
| Fantasy / sci-fi (secondary world) | **Core** | **Core** | **Core** | **Core** | **Core** | Add a **World Bible** (template below) — there's no other place to pin magic/tech rules, and the auditor needs them. |
| Young adult | **Core** | **Core** | **Core** | **Core** | **Core** | Set the audience in `editorial-content-guidance.md`; calibrate register, don't sanitize. |
| Middle grade / chapter books | **Core** | Adapt | Core (word-level) | Optional | **Core** | Lighter on five-act fracture; watch register so prose doesn't skew adult-literary. |
| Memoir | **Core** | **Core** | **Core** | **Core** | **Core** | See **Memoir** note — craft may shape true events but must not invent them. |
| Nonfiction / self-help / business / how-to | **Skip** | **Skip** | **Adapt** (see note) | Optional | Adapt | See **Nonfiction** note — scenes/character-tiers don't apply; the no-lists rule is *suspended*. |
| Essay / short-story collection | Per piece | Per piece | **Core** | **Core** | **Disable cross-file** | Each piece is self-contained; don't run object/timeline continuity *across* unrelated pieces. |
| Poetry collection | **Skip** | **Skip** | Adapt | **Core** | Skip | Organize by poem/section, not chapter. The scene-circuit gate does not apply. |
| Picture books | **Skip** | **Skip** | Adapt | Optional | Skip | See **Picture book** note — spreads, not chapters; skip the dramatic-scene gates. |

**Core** = use as-is. **Adapt** = use with the note below. **Optional** = use if helpful. **Skip** = does not apply; don't let it gate your work.

> The `canon-mutation-control.md` rule and the editorial pass apply to **every** genre — they protect your story's facts and quality regardless of category. Only the *craft-shaping* protocols above are genre-specific.

---

## Genre notes

### Nonfiction / self-help / business / how-to
The scene-circuit, character-hierarchy, and Yorke protocols are built for narrative fiction and **do not apply** — your unit is the argument, not the scene. Critically, the AI-ism suppression protocol's "no bullet points, no numbered lists, no section headers" rule is **suspended for these books**: structured formatting is correct for this register. Keep the *word-level* AI-ism guidance (kill inflated vocabulary, hedge phrases, rule-of-three tics). For quality gates, replace "does every scene complete a circuit of change?" with **"does every chapter deliver on its promise, and is each claim supported by evidence or example?"** Use `marketing-book-co-author` (argument/voice), `academic-narratologist` (thesis and chapter logic), and `marketing-narrative-consistency-auditor` (claim/evidence consistency).

### Romance
Use the standard structure section, but specify the **romance beat arc**: meet → spark → deepening → dark moment / breakup → grand gesture → resolution. The Happily-Ever-After or Happy-For-Now ending is a **genre promise the reader is owed** — treat it as a requirement, not a "forced happy ending." The Yorke "retreat → catastrophe" principle applies to the *relationship obstacle*, not to the ending.

### Mystery / crime — Fair-Play Clue Ledger
The blueprint's Dual-Clue Ledger (§8) tracks interpretive ambiguity, which is not the same as detective fair-play. For a whodunit, ask the AI to keep a **Fair-Play Clue Ledger** instead: per clue, track *plant chapter*, *reveal chapter*, *was it planted before the reveal (yes/no)*, *red-herring honest explanation*, and a *"could an attentive reader solve it?"* check. A mystery can be internally consistent and still cheat the reader; this catches that.

### Fantasy / sci-fi — World Bible (optional, paste into MEMORY.md or a new docs/WORLD_BIBLE.md)
Secondary-world stories fail most often on internal world-rule consistency, and nothing else in the template pins those rules down. Add a world bible covering:

```
## World Bible
- Magic / technology: what it can do, its hard costs and limits, who can use it
- Cosmology & geography: places, distances, what connects to what
- Factions / cultures / species: who wants what, how they differ
- Timeline / calendar: how time is measured, key historical events
- Naming & language: conventions, any invented terms (keep a glossary)
- Breaks immersion if violated: the rules you must never contradict
```

Tie the consistency auditor's "World Rules & Foundational Logic" check to this file.

### Memoir
The want/need/wound model and scene work transfer cleanly to lived experience. Memoir's distinctive line is **truth vs. craft**: reconstructed dialogue and compressed timelines are accepted craft (disclose in an author's note); *inventing events that did not happen* is not. Flag composite characters and depictions of real, living people for the author to decide. The scene-circuit protocol shapes *how you tell* true events — it must never invent them.

### Picture books, chapter books, collections, poetry
These break the one-chapter-per-file + dramatic-scene model. For **short-story / essay collections**, use one piece per file (`st01.md`, `es01.md`) with a `## Title` heading, and turn *off* cross-file continuity auditing — each piece stands alone. For **poetry**, organize by poem or section. For **picture books**, map the book as spreads in a single file with art-note callouts, and skip the scene-circuit and character-hierarchy gates entirely. Expect the AI to adapt the manuscript structure; tell it to.

---

For the general "any genre" claim: this template is honest about being fiction-first and adapting outward. Use this map to get the right tools for *your* book instead of fighting the defaults.
