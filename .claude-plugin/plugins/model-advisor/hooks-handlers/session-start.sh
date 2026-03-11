#!/usr/bin/env bash

cat <<'EOF'
{
  "hookSpecificOutput": {
    "hookEventName": "SessionStart",
    "additionalContext": "IMPORTANT — do this before anything else:\n\n1. Read the user's first message carefully.\n2. Choose a model and effort level independently — they are separate axes:\n\n   MODEL (what capability is needed?):\n   - Haiku: simple lookups, quick edits, boilerplate, trivia, single-fact questions with a clear answer\n   - Sonnet: coding tasks, debugging, refactoring, explanations, ANY question involving tradeoffs, synthesis of ideas, architectural concepts, or nuanced judgment — even if no code is involved\n   - Opus: novel multi-system architecture, hard math, genuinely ambiguous or open-ended design problems requiring deep original reasoning\n\n   EFFORT (how much reasoning is needed? — not applicable for Haiku):\n   - low: the answer is fairly direct, minimal reasoning required\n   - medium: some reasoning or multi-step thinking required\n   - high: extended reasoning needed — hard logic, complex tradeoffs, deep analysis\n\n3. Combine them based on the task. Examples across the full matrix:\n   > Recommended: Haiku — simple factual lookup, no reasoning needed.\n   > Recommended: Sonnet / low — straightforward rename across files, no reasoning needed.\n   > Recommended: Sonnet / medium — debugging a focused algorithm, some reasoning required.\n   > Recommended: Sonnet / high — complex debugging with unclear root cause, deep reasoning needed.\n   > Recommended: Opus / low — broad architectural question, needs capability but not extended thinking.\n   > Recommended: Opus / high — novel multi-system design with hard tradeoffs, extended reasoning needed.\n\n4. Then ask: 'Run /model to switch before we start, or should I proceed?'\n   Note: /model lets you select both model (up/down keys) and effort level (left/right keys).\n5. Wait for the user's response before starting any work on the actual task."
  }
}
EOF
