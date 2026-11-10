---
name: web-release-check
description: Verify a web app before handoff or deployment with functional, visual, accessibility, and operational evidence.
---

# Web release check

Use when the user requests launch readiness, a release check, or a final app handoff. Establish the target environment and main user journeys. Select checks from the change and exposure; do not impose an unrelated compliance program.

Read available package scripts, CI checks and deployment instructions before choosing commands. Use existing browser tools or the project's Playwright/Cypress setup. Do not install a second browser automation system merely to inspect a page.

Check relevant items and record pass, fail or not tested with evidence:

- Function: complete the main journey with valid input, invalid input, empty data and an expected server failure. Check permissions and persistence after refresh when the change depends on them. Do not exercise real payments, emails or destructive production actions as tests without authorization.
- Visual: inspect representative mobile and desktop widths in a real browser, including long text, menus/dialogs, loading states and overflow. Confirm supplied logos/assets retain their intended appearance. A source-code review does not replace a rendered check.
- Accessibility: keyboard navigation, visible focus, names/labels, meaningful heading structure, contrast, error associations and reduced-motion behavior. Automated checks are a supplement to interaction testing, not a certification.
- Quality: required build, type, lint and regression checks; changed routes must load and browser errors must be investigated. Check payloads/images/fonts or field performance when performance is in scope.
- Backend/operations: environment variables are documented without secrets, API authorization matches the flow, migrations and rollback are understood, and health/error reporting works in the target environment. A local demo server is not production deployment.

For a source-code release, use the installed local secret scanner when relevant; see [local-tools.md](references/local-tools.md). A clean scan is one check, not proof that the application is secure.

Fix defects within the requested scope and rerun the affected checks. Do not rerun every passing check after a prose-only report edit. If a check cannot run, state the exact missing dependency/access and what remains uncertain.

Give the user a concise readiness decision and evidence, with blockers separated from optional improvements. Preserve the diagnostic meaning of failures, but redact credentials and personal data before sharing logs in chat or deliverables. Retain original sensitive logs only when needed in an appropriately restricted local location. Never equate a screenshot, syntax check or green build with end-to-end readiness. Publish only when authorized; a request for ready-to-deploy files is not itself a request to deploy.
