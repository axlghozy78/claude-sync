---
name: rtk-output
description: Reduce verbose read-only terminal output with the locally installed RTK when output volume is obscuring useful results.
---

# RTK output on Windows

The reviewed installation is the Apache-2.0-only RTK v1.0.1 build. Invoke the PowerShell wrapper at:

`& "$env:LOCALAPPDATA\Programs\CodexVibeTools\rtk-oss-1.0.1\rtk.ps1" --version`

The wrapper disables outbound telemetry and raw-output recall for that invocation. RTK can still keep local command/path statistics. Never place secrets in command arguments or compress environment/authentication dumps.

Start with explicit read-only commands such as `git status`, `git log -5`, or a targeted `rg` search. Check RTK help before using an unfamiliar adapter. Direct shell execution remains the default for short output, mutating operations, deployment, authentication and final security review.

Compression is lossy. For unexpected output, a hidden warning or a debugging investigation, rerun the original native read-only command and inspect its full relevant output. Test summaries are not independent evidence that tests passed; retain native exit status and use the project's original logs. Do not wrap a command solely to evade an approval boundary or hide its behavior.

Do not enable hooks, automatic rewriting, an LLM proxy, project-local filters, history scanning or trust settings as part of this skill. Those are separate configuration changes.

RTK gain reports estimates for terminal-output compression. Do not present those estimates as measured OpenAI billing or ChatGPT subscription-quota savings. Do not combine multiple compression layers unless a task-specific quality comparison justifies it.
