# Prose Quality Protocols

Five quality protocols are active as defaults for all writing tasks in this repository. They live in `docs/protocols/`. Five corresponding agents in `.ai/agents/` apply them.

---

## Protocols and Their Agents

| Protocol file | Agent | Apply when |
|---|---|---|
| `ai-ism-suppression-protocol-generic.json` | `writing-prose-suppression` | Every drafting and revision task — load first |
| `semantic_gradient.md` | `writing-semantic-gradient` | Every revision pass — detects uncommitted word choices |
| `yorke_dramatic_architecture_analyser.json` | `writing-yorke-dramaturg` | Structural review of chapters, acts, or full manuscript |
| `character_hierarchy_protocol.json` | `writing-character-hierarchy` | Before writing any scene with more than one character |
| `fractal_scene_architecture_protocol.json` | `writing-fractal-scene-architect` | Before writing any scene — map the circuit first |

---

## Default Application Rules

### When drafting a scene

Apply in this order:
1. `writing-fractal-scene-architect` — map the circuit before writing a word
2. `writing-character-hierarchy` — assign tiers and oxygen distribution
3. `writing-prose-suppression` — internalise the suppression list during generation

### When revising prose

Apply in this order:
1. `writing-prose-suppression` — sweep for AI patterns
2. `writing-semantic-gradient` — identify uncommitted word choices

### When doing a structural review

Apply:
1. `writing-yorke-dramaturg` — diagnose dramatic failures at chapter or manuscript level

---

## Integration with the Editorial Pass

These protocols augment the editorial pass defined in `.ai/rules/editorial-pass.md`. They operate at **prose and scene level**. The editorial pass operates at **structural, continuity, and blueprint level**. Both must run for any substantive drafting or revision task.

Add these agents to the handoff evidence in `CHANGELOG_AI.md` under the editorial pass section:

```
Prose quality protocols applied:
- writing-fractal-scene-architect: [scenes mapped / issues found]
- writing-character-hierarchy: [scenes reviewed / tier violations fixed]
- writing-prose-suppression: [levels checked / patterns found and fixed]
- writing-semantic-gradient: [passages reviewed / gradient issues resolved]
- writing-yorke-dramaturg: [scope of structural review / failures identified]
```

---

## Protocol Files Location

All source protocol files live at:

```
docs/protocols/
├── ai-ism-suppression-protocol-generic.json
├── character_hierarchy_protocol.json
├── fractal_scene_architecture_protocol.json
├── semantic_gradient.md
└── yorke_dramatic_architecture_analyser.json
```

These files are the authoritative source. The agents reference them directly.
