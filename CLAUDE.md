# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

A Claude Code plugin that injects model/effort guidance at session start. It has no build system, no dependencies, and no tests — it's a shell script and a set of prompt/config files.

## Plugin structure

```
.claude-plugin/plugins/model-advisor/
├── .claude-plugin/plugin.json        # Plugin metadata (name, version, author)
├── hooks/hooks.json                  # Registers the SessionStart hook
├── hooks-handlers/session-start.sh  # Core logic: outputs JSON with additionalContext
└── commands/model-check.md          # Prompt for the /model-check skill
```

The `marketplace.json` at the root registers this repo as a marketplace source pointing to `./.claude-plugin/plugins/model-advisor`.

## How it works

- `hooks.json` registers a `SessionStart` hook that runs `session-start.sh` (5s timeout)
- `session-start.sh` emits a JSON blob with `hookSpecificOutput.additionalContext` — this is the text Claude receives at session start
- `model-check.md` is a skill prompt used for mid-session reassessment via `/model-check`

## The model/effort guidance matrix

The core content this plugin delivers (defined in `session-start.sh` and `model-check.md`):

**Model** — what capability is needed?
- `haiku`: simple lookups, quick edits, boilerplate, single-fact questions
- `sonnet`: coding, debugging, refactoring, explanations, any question with tradeoffs or nuanced judgment
- `opus`: novel multi-system architecture, hard math, genuinely ambiguous open-ended design problems

**Effort** — how much reasoning is needed? (not applicable to Haiku)
- `low`: established knowledge retrieval/explanation; shape of answer is known
- `medium`: some reasoning required; path is clear
- `high`: ambiguous problems, hard tradeoffs, novel synthesis, many interdependent constraints

## Making changes

When updating the guidance text, keep `session-start.sh` and `model-check.md` in sync — they define the same matrix in slightly different formats (the hook delivers it at session start; the command delivers it on demand).

When bumping the version, update `plugin.json`.

## Installation / update commands (for users)

```
/plugin install model-advisor@Jaace-claude-model-advisor
/plugin marketplace update claude-model-advisor
/plugin update model-advisor
```
