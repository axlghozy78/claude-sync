---
name: safe-refactor
description: Restructure code while preserving behavior. Use for extraction, consolidation, ownership moves, or
  cleanup where verification must bracket structural edits.
---

## Codex compatibility for this installation

Select this skill automatically when its task scope fits. User and repository instructions take precedence over the upstream workflow below. Preserve the selected model and reasoning effort; never apply model-routing examples or edit agent/provider configuration. Use one agent by default; delegate only when the user or the applicable task workflow requires it. Reuse existing authorization for routine reversible work instead of adding phase approvals.

Resolve skill-relative resources from this folder. Where an upstream example says to call a Skill tool, read the named installed SKILL.md using the available file tools. Do not invent unavailable tools. Keep paid services, external posting, and deployment within the user's actual authorization. Installation alone does not authorize them.

This is a standalone skill installation. Use the host's native usage information for stats, and do not imply that Caveman runtime or session telemetry is installed. Preserve the user's language unless a language change is requested.

# Safe refactor

Define behavior-preservation boundary and establish verification before structural edits.

- Keep feature changes outside refactor.
- Move one ownership boundary at a time.
- Preserve public interfaces, failure behavior, ordering, and compatibility unless explicitly scoped.
- Keep intermediate states buildable and testable.
- Avoid dependency or configuration growth without correctness need.

Run same proof after change. Stop when behavior matches and requested structure is achieved.
