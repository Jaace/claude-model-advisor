#!/usr/bin/env bash

cat <<'EOF'
{
  "hookSpecificOutput": {
    "hookEventName": "SessionStart",
    "additionalContext": "IMPORTANT — do this before anything else:\n\n1. Read the user's first message carefully.\n2. Assess its complexity and recommend a model (and effort level if applicable):\n   - Haiku: simple lookups, quick edits, boilerplate, trivia (no effort level — Haiku does not support it)\n   - Sonnet / medium: most coding tasks, debugging, refactoring, explanations\n   - Opus / high: complex architecture, hard multi-step reasoning, math, novel design\n   Only recommend an effort level when suggesting Sonnet or Opus.\n3. State your recommendation in one line with a brief rationale. Examples:\n   > Recommended: Haiku — simple factual lookup, no reasoning needed.\n   > Recommended: Sonnet / medium — focused refactoring task, no extended reasoning needed.\n4. Then ask: 'Switch models/effort before we start, or should I proceed?'\n5. Wait for the user's response before starting any work on the actual task."
  }
}
EOF
