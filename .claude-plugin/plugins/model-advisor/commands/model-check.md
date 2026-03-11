Reassess the current session and recommend the right model and effort level.

1. Briefly summarize what this session has been about so far (1-2 sentences).
2. Assess complexity on this scale:
   - Simple: lookups, quick edits, factual Q&A, boilerplate
   - Moderate: debugging, refactoring, multi-step coding tasks, explanations
   - Complex: architecture decisions, hard reasoning, math, novel multi-system design
3. Recommend a **model**, and an **effort level** if applicable:
   - `haiku` — simple tasks only; does not support effort levels, do not suggest one
   - `sonnet` — most tasks; pair with `low`, `medium`, or `high`
   - `opus` — complex reasoning/architecture; pair with `low`, `medium`, or `high`
4. Give a one-line rationale.
5. If a switch is warranted, tell the user to run `/model` to switch. Remind them that inside `/model` they can use up/down keys to select the model and left/right keys to set the effort level (not applicable for Haiku).

No tools needed — pure reasoning and output only.
