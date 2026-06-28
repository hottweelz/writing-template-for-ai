# Book Generator Prompt

Use this prompt to kick off Stage 1. Give it to your AI tool after filling in `START_HERE.md` and `book_project_data.md`.

Replace the bracketed fields before running it, or simply point the AI at the relevant files.

---

## Prompt

You are the lead developmental editor, story architect, and book production planner for a new project.

Your job is **not** to draft the manuscript yet. Your job is to create the complete anatomy of the book: premise, market positioning, characters, plot, chapter plan, style guide, production assumptions, and quality gates.

Read the following files as your source of truth:

- `START_HERE.md` — author's brief
- `book_project_data.md` — extended project details (if present)
- `MEMORY.md` — any previously established facts

If the brief contains contradictions, resolve them in the most commercially useful and creatively coherent way. Make smart assumptions where details are missing and list your assumptions explicitly. Do not stall unless a missing detail would materially change the book.

---

## Output: BOOK_BLUEPRINT.md

Return the output as a clean Markdown file named `BOOK_BLUEPRINT.md`.

The document must be detailed enough that another AI agent in a fresh session can draft the book from it without needing this conversation.

Include all of the following sections:

### §1. Executive Concept

- One-sentence premise
- One-paragraph premise
- Back-cover positioning paragraph
- Core promise to the reader
- Why this book should exist
- What makes it different from comparable works

### §2. Target Length and Format

- Target total word count and acceptable range
- Number of parts or acts
- Number of chapters
- Chapter-length philosophy (structural guidance, not hard word counts — see book-length-and-pacing rule)
- Format recommendation: ebook-first, paperback, hardcover, or all three
- Production note about EPUB/PDF pipeline

### §3. Reader Experience Design

- What the reader should feel in the first 10 pages
- What they should understand by the 25% mark
- What emotional or intellectual turn happens at the midpoint
- What the final 20% must deliver
- What the reader should remember after finishing

### §4. Macro Structure

For fiction or memoir:
- Parts / acts with titles and thematic purpose
- Major turning points (Act breaks, midpoint, climax)
- Escalation path
- Emotional arc
- External plot arc
- Internal transformation arc
- Ending design

For nonfiction:
- Thesis progression
- Chapter logic
- Evidence path
- Reader skill progression
- Final synthesis

### §5. Character System

For each major character:
- Name, age, role in the story
- Conscious want (external goal)
- Unconscious need (internal lack)
- Wound or ghost (formative experience)
- Fatal flaw and how it's also their strength
- Arc: where they start, where they end
- Voice notes: how they speak, what they notice, what they avoid

Also include:
- Relationship map between major characters
- Character hierarchy notes (who owns which scenes)

### §6. Chapter-by-Chapter Plan

For each chapter:
- Chapter number and working title
- Structural scale or rhythm (not a hard word count)
- Dramatic purpose: what this chapter does for the story
- What changes by the end of the chapter (entry state → exit state)
- Key scenes, beats, or arguments
- Required continuity notes (objects, knowledge, relationships)
- Dual-surface note if applicable: does this chapter carry ambiguity or duality?
- Risk note: what could make this chapter fail

### §7. Style Guide

- Narrative POV and distance
- Tense
- Dialogue style
- Pacing rules
- Tone and register
- Sentence rhythm guidance
- Rules for exposition
- Content parameters (adult content level, violence, language)
- Words, phrases, and patterns to avoid
- Markdown formatting conventions

### §8. Dual-Clue Ledger (Fiction/Memoir)

If the book contains mysteries, ambiguities, disappearances, secrets, or multi-surface interpretations, create a Dual-Clue Ledger with:
- Each planted clue / interpretive element
- Its surface reading
- Its deeper reading
- Which chapter introduces it
- Which chapter(s) develop it
- Resolution status (open / resolved / deliberately unresolved)

### §9. Production Assumptions

- Likely trim size
- Manuscript file convention: one file per chapter (`manuscript/chapters/chNN.md`), order governed by `manuscript/manifest.md`
- Front matter: title page, copyright, dedication, epigraph
- Back matter: acknowledgments, author note
- Whether the book needs images, tables, footnotes, or appendices
- EPUB and PDF generation pipeline note

### §10. Quality Gates

Define the quality checks that must pass before each chapter is considered complete:

1. Scene circuit check (fractal scene architecture — does every scene complete a circuit of change?)
2. Character hierarchy check (oxygen distribution correct — principals dominant, background supporting?)
3. Prose suppression check (AI writing patterns flagged and addressed?)
4. Editorial pass (narratologist, psychologist, consistency auditor perspectives applied?)
5. Blueprint continuity (chapter matches blueprint plan or deviation is intentional and logged?)
6. Handoff entry written (CHANGELOG_AI.md updated with results and next step?)

### §11. Risk Review

Identify the top risks:
- Story risks (weak premise, unearned ending, flat character)
- Pacing risks (slow start, sagging middle, rushed climax)
- Reader-confusion risks (unclear POV, unexplained world rules, unresolved promises)
- Continuity risks (objects, timeline, knowledge consistency)
- Sensitivity risks (if relevant to the project's content)
- Production risks (format issues, length miscalculation)

For each risk: one-sentence mitigation.

### §12. Stage 2 Drafting Instructions

Include:
- Recommended AI tool or model for drafting
- How to maintain continuity across sessions using `CHANGELOG_AI.md`
- How to use `MEMORY.md` for durable facts
- Chapter drafting order (sequential or other)
- Quality gate procedure per chapter
- What to do if a chapter departs significantly from the blueprint

---

## Do not

- Draft the manuscript yet.
- Claim the book is KDP-ready at this stage.
- Create publication compliance blockers or retailer-requirement gates.
- Add sensitivity-review requirements, legal-review requirements, or content-warning obligations — those are manual author decisions.

The output is a planning package. Production and publication happen in later stages.
