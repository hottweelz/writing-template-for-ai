# Canon Mutation Control

## Purpose

Prevent AI agents from accidentally changing the book while improving the writing.

This rule protects canon, continuity, character integrity, plot logic, timeline, voice, and author intent across all planning, drafting, revision, editorial, and production tasks.

The manuscript may be edited, improved, tightened, clarified, or restructured only within the authority granted by the current task and the approved project files.

No agent may silently mutate canon.

---

## Canon Authority Chain

Canon lives in the repository, not in chat history.

Agents must treat the following as authoritative, in this order:

1. Direct operator instruction in the current task
2. `BOOK_BLUEPRINT.md`
3. `MEMORY.md`
4. Approved chapter files in `/manuscript/`
5. `CHANGELOG_AI.md` handoffs
6. Applicable rules in `.ai/rules/`
7. Applicable protocols in `docs/protocols/`

If sources conflict, agents must stop and report the conflict instead of choosing silently.

---

## Definition: Canon Mutation

A canon mutation is any change that alters what is true in the book.

This includes changes to:

- plot events
- chapter order
- timeline
- setting facts
- character backstory
- character motivation
- character relationships
- character knowledge
- character secrets
- trauma history
- death, survival, injury, illness, or disappearance status
- supernatural, horror, psychological, or mystery logic
- objects, locations, evidence, letters, recordings, files, weapons, vehicles, or other continuity anchors
- point-of-view structure
- narrator reliability
- ending implication
- genre promise
- theme or moral interpretation when made explicit
- any fact already established in blueprint, memory, manuscript, or handoff

If the edit changes what the reader believes happened, why it happened, who caused it, who knew it, when it happened, or what it means, it is a canon mutation.

---

## Changes Requiring Operator Approval

Agents must not make the following changes without explicit operator approval.

### Character Canon

- add new backstory
- alter existing backstory
- change motive
- change desire, fear, wound, flaw, need, or contradiction
- change relationship status
- change loyalty, betrayal, attraction, resentment, guilt, or grief
- change trauma history
- change moral responsibility
- change whether a character knows, suspects, remembers, forgets, lies, confesses, or conceals something

### Plot Canon

- add a new major event
- remove a major event
- change the cause of an event
- change the consequence of an event
- change who acts, fails to act, witnesses, discovers, hides, or reveals something
- change chapter sequence
- change escalation logic
- change the ending or its implication
- resolve an ambiguity that was intentionally unresolved

### Timeline Canon

- change dates, ages, time gaps, seasons, elapsed time, order of events, or travel feasibility
- compress or expand time in a way that affects causality
- move an event earlier or later if it changes character knowledge or dramatic pressure

### World / Setting Canon

- add, remove, or alter named locations
- change geography, access, distance, weather, architecture, institutions, technology, or social conditions
- alter rules of supernatural, psychological, horror, mystery, legal, medical, or procedural reality

### Voice / Form Canon

- change POV strategy
- change narrator distance
- change tense
- change structural conceit
- change the degree of ambiguity
- change whether the book reads as horror, mystery, literary, psychological, memoir-like, satire, thriller, or other genre mode

---

## Changes Allowed Without Operator Approval

Agents may make the following changes when they are local, consistent with canon, and within task scope:

- fix typos
- fix grammar
- improve sentence clarity
- tighten overwriting
- remove repeated words or redundant phrasing
- improve paragraph rhythm
- reduce AI-ish phrasing
- improve dialogue naturalness without changing intent
- clarify an action already present
- add minor sensory grounding consistent with the scene
- cut filler that does not contain plot, character, timeline, or thematic information
- smooth transitions without changing sequence
- preserve meaning while improving line-level prose
- flag suspected canon issues for review

Allowed changes must not introduce new facts.

---

## Suspicious Changes

The following changes are not automatically forbidden, but must be treated as high-risk and explicitly flagged:

- making a character more sympathetic
- making a character more rational
- making trauma more explicit
- explaining symbolism
- clarifying ambiguity
- adding exposition
- adding moral framing
- making dialogue more emotionally direct
- making the theme more obvious
- softening cruelty, dread, horror, guilt, obsession, grief, or silence
- replacing weirdness with coherence
- making a scene more structurally perfect at the cost of voice
- changing a quiet scene into a dramatic one
- changing an unresolved scene into a resolved one

If a change makes the book cleaner but less itself, flag it.

---

## Required Canon Mutation Check

Before completing any substantive planning, drafting, revision, editorial, or production task, agents must perform a canon mutation check.

The check must answer:

1. Did I introduce any new fact?
2. Did I remove any established fact?
3. Did I change causality?
4. Did I change character motivation?
5. Did I change what a character knows or believes?
6. Did I change timeline or sequence?
7. Did I resolve ambiguity that may have been intentional?
8. Did I change voice, POV, genre promise, or ending implication?
9. Did I make the manuscript more polished but less faithful?
10. Does this require operator approval?

If any answer is uncertain, the change must be flagged instead of silently applied.

---

## Canon Mutation Report Format

When a task involves possible canon mutation, agents must include this section in the handoff:

```markdown
## Canon Mutation Check

Status: PASS / FLAGGED / BLOCKED

Changes reviewed:
- [file/section] — [brief description]

Potential canon mutations:
- None
```

If mutations are flagged:

```markdown
## Canon Mutation Check

Status: FLAGGED

Potential canon mutations:
1. [file/section]
   - Proposed change:
   - Canon affected:
   - Risk:
   - Recommendation:
   - Requires operator approval: YES

Actions taken:
- Did not apply the mutation.
- Left existing canon intact.
```

If a mutation was explicitly approved:

```markdown
## Canon Mutation Check

Status: PASS — APPROVED MUTATION

Approved mutation:
- Canon changed:
- Operator approval source:
- Files updated:
- Memory updated: YES / NO
- Changelog updated: YES / NO
```

---

## Conflict Handling

If canon sources conflict, agents must not resolve the conflict silently.

Use this format:

```markdown
## Canon Conflict

Conflict:
- Source A:
- Source B:

Why it matters:
-

Recommended resolution:
-

Action taken:
- Blocked pending operator decision.
```

The agent may continue only with work that does not depend on the conflict.

---

## Handoff Requirements

Any task involving planning, drafting, revision, editorial review, chapter production, blueprint updates, memory updates, or manuscript QA must include a canon mutation status in the handoff.

Minimum handoff line:

```markdown
Canon mutation check: PASS — no canon changes introduced.
```

or:

```markdown
Canon mutation check: FLAGGED — operator decision required before applying proposed canon changes.
```

---

## Agent Behavior Rules

Agents must:

- preserve established canon unless explicitly instructed otherwise
- distinguish line edits from story changes
- flag attractive but unauthorized improvements
- avoid “fixing” intentional ambiguity
- avoid making characters more coherent than intended
- avoid replacing authorial weirdness with generic polish
- avoid changing plot logic to satisfy an editorial protocol
- avoid treating John Yorke, semantic-gradient, AI-ism suppression, or other protocols as authority above canon
- document any proposed canon mutation before applying it

Agents must not:

- invent missing backstory
- repair plot holes by adding facts without approval
- change character motivation to make scenes cleaner
- convert ambiguity into explanation
- moralize the manuscript
- overwrite voice in pursuit of correctness
- change the book’s genre promise
- silently accept another model’s canon-altering edit

---

## Protocol Priority

Editorial and prose protocols are lenses, not canon authorities.

The following may identify possible issues, but may not override canon by themselves:

- John Yorke dramatic architecture protocol
- semantic-gradient protocol
- character hierarchy protocol
- fractal scene architecture protocol
- AI-ism suppression protocol
- any external editorial checklist
- any model-generated critique

If a protocol suggests a change that mutates canon, the change must be flagged for operator approval.

---

## Acceptance Standard

A task passes canon mutation control only when:

- all changes stay within task authority
- no new canon is introduced without approval
- no established canon is removed without approval
- no ambiguity is resolved without approval
- all possible canon mutations are reported
- handoff includes canon mutation status

The goal is not to prevent revision.

The goal is to prevent unauthorized story drift.
