# Claude Model Advisor

A Claude Code plugin that recommends the right model and effort level at the start of every session - before any work begins.

## What it does

When you start a new Claude Code session, this plugin injects guidance that causes Claude to:

1. Read your first message
2. Assess task complexity
3. Recommend a specific **model** and **effort level** with a one-line rationale
4. Pause and ask you to confirm before starting work

This gives you a chance to switch to a cheaper or more powerful model before tokens are burned.

### Model guidance

| Model | Effort | Best for |
|---|---|---|
| Haiku | — | Simple lookups, quick edits, boilerplate, trivia |
| Sonnet | medium | Most coding tasks, debugging, refactoring, explanations |
| Opus | high | Complex architecture, hard reasoning, math, novel multi-system design |

## Commands

### `/model-check`

Run this anytime mid-session to reassess the current task and get an updated model/effort recommendation.

## Installation

```
/plugin install model-advisor@Jaace-claude-model-advisor
```

Or add this repo as a marketplace source:

```
/plugin marketplace add Jaace/claude-model-advisor
```

## Switching models

After receiving a recommendation, run `/model` to switch. The `/model` interface lets you:

- **Up/down keys** — select the model
- **Left/right keys** — set the effort level (low/medium/high)

You can also run `/effort` to adjust the effort level independently without changing the model. Options: `auto`, `low`, `medium`, `high`, and `max` (Opus only).

Note: effort level does not apply to Haiku.

## Updating

After installing, updates require refreshing the marketplace cache first:

```
/plugin marketplace update claude-model-advisor
/plugin update model-advisor
```
