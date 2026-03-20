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

   **Effort** (how much reasoning is needed? — not applicable for Haiku; max is Opus only):
   - `auto` — Claude decides effort based on the task (default)
   - `low` — the shape of the answer is already known; you are retrieving or explaining established knowledge, even if the topic is complex
   - `medium` — some reasoning or multi-step thinking required; the answer isn't immediately obvious but the path is clear
   - `high` — genuinely hard reasoning required; the problem is ambiguous, involves hard tradeoffs with no clear answer, requires novel synthesis, or has many interdependent constraints
   - `max` (Opus 4.6 only) — maximum thinking budget; use for the hardest problems where cost is no concern

4. Give a one-line rationale.
5. If a switch is warranted, tell the user to run `/model` to switch (up/down for model, left/right for effort). To adjust effort level only, they can run `/effort [low|medium|high|max|auto]`.

No tools needed — pure reasoning and output only.
