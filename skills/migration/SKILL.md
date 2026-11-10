---
name: migration
description: Implement reversible compatibility-safe transitions. Use for schema, data, API, protocol, configuration,
  or dependency migrations requiring rollback and preservation proof.
---

## Codex compatibility for this installation

Select this skill automatically when its task scope fits. User and repository instructions take precedence over the upstream workflow below. Preserve the selected model and reasoning effort; never apply model-routing examples or edit agent/provider configuration. Use one agent by default; delegate only when the user or the applicable task workflow requires it. Reuse existing authorization for routine reversible work instead of adding phase approvals.

Resolve skill-relative resources from this folder. Where an upstream example says to call a Skill tool, read the named installed SKILL.md using the available file tools. Do not invent unavailable tools. Keep paid services, external posting, and deployment within the user's actual authorization. Installation alone does not authorize them.

This is a standalone skill installation. Use the host's native usage information for stats, and do not imply that Caveman runtime or session telemetry is installed. Preserve the user's language unless a language change is requested.

# Migration

Map current readers, writers, data shape, compatibility window, and ownership before editing.

- Define forward path and rollback path.
- Preserve existing data; make destructive steps explicit and separately authorized.
- Keep mixed-version operation safe where rollout can overlap.
- Sequence expand, migrate, verify, then contract when applicable.
- Make retries idempotent and partial failure observable.
- Verify old and new paths at required transition stages.

Stop after requested stage passes; do not perform later destructive contraction implicitly.
