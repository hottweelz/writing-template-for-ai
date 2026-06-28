# Agent Team Selection Rule

For every non-trivial writing or production task, inspect the agent definitions in:

```txt
.ai/agents/
```

Before writing, select the smallest useful team of agents for the task.

---

## Selection Process

1. Read the available agent profiles in `.ai/agents/`.
2. Identify which agents are relevant to the current task.
3. Select the smallest effective team.
4. Briefly state the selected team and why each agent is included.
5. Use those agent perspectives while planning, drafting, reviewing, and revising.
6. Do not use every agent by default.
7. If no agent clearly applies, proceed as the default senior editor and say no specialized agent was needed.

---

## Agent Quick Reference

| Agent | Use for |
|---|---|
| `writing-fractal-scene-architect` | Scene planning — before writing any scene |
| `writing-character-hierarchy` | Any scene with 2+ characters |
| `writing-prose-suppression` | All drafting and revision |
| `writing-semantic-gradient` | Revision passes |
| `writing-yorke-dramaturg` | Structural review |
| `academic-narratologist` | Chapter structure, pacing, arc analysis |
| `academic-psychologist` | Character psychology, trauma credibility |
| `marketing-narrative-consistency-auditor` | Continuity, logic, object tracking |
| `marketing-book-co-author` | Drafting and prose revision |

---

## Output Format Before Implementation

```md
Selected agent team:
- Agent: reason
- Agent: reason
```

Then proceed with the task.
