Reassess the current session and recommend the right model and effort level.

1. Briefly summarize what this session has been about so far (1-2 sentences).
2. Assess complexity on this scale:
   - Simple: lookups, quick edits, factual Q&A, boilerplate
   - Moderate: debugging, refactoring, multi-step coding tasks, explanations
   - Complex: architecture decisions, hard reasoning, math, novel multi-system design
3. Choose model and effort independently — they are separate axes:

   **Model** (what capability is needed?):
   - `haiku` — simple lookups, quick edits, boilerplate, straightforward factual questions; no effort level
   - `sonnet` — coding, debugging, refactoring, explanations, conceptual questions with some depth
   - `opus` — novel architecture, hard math, genuinely ambiguous or open-ended design problems

   **Effort** (how much reasoning is needed? — not applicable for Haiku):
   - `low` — the shape of the answer is already known; you are retrieving or explaining established knowledge, even if the topic is complex
   - `medium` — some reasoning or multi-step thinking required; the answer isn't immediately obvious but the path is clear
   - `high` — genuinely hard reasoning required; the problem is ambiguous, involves hard tradeoffs with no clear answer, requires novel synthesis, or has many interdependent constraints

4. Give a one-line rationale.
5. If a switch is warranted, tell the user to run `/model` to switch. Remind them that inside `/model` they can use up/down keys to select the model and left/right keys to set the effort level (not applicable for Haiku).

No tools needed — pure reasoning and output only.
