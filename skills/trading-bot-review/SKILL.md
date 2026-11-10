---
name: trading-bot-review
description: Review or change trading-bot software, execution safeguards, and backtest validation. Use for bot engineering and operational readiness, not market predictions or ordinary non-trading tasks.
---

# Trading bot engineering

Start from the user's active checkout and its local guidance. Inspect the relevant data-to-signal-to-risk-to-execution path; distinguish research, paper simulation, broker demo, and live code. Version labels may lag the working tree. Read only the modules needed for the requested change.

Preserve existing strategy, position sizing, exposure limits, order authority, stop markers and protective exits unless the requested work explicitly covers changing them. Authorization to install tools or edit code is not authorization to submit trades, restart trading services or remove KILL/DEMO_KILL. Honor existing explicit authorization without asking again.

For execution changes, check only the relevant invariants: stale or nonfinite data fails closed; tick/lot rounding respects risk budgets; rejected and ambiguous orders cannot be blindly retried; partial fills, restarts and broker reconciliation cannot duplicate exposure. Keep protective exits available under entry holds where the existing design requires it.

For research changes, separate training and out-of-sample periods, detect look-ahead leakage, include supported fees/spread/slippage, and compare the same account, symbol, version and time range. Do not equate backtest success with demo/live profitability or promote unvalidated learning into order authority.

Use the project's existing Python environment and tools. Prefer a focused pytest regression; use installed Hypothesis for invariants with varied numeric inputs, not for trivial edits. Run relevant Ruff/mypy checks. Expand to integration tests when the changed interfaces justify it. Reuse valid unchanged evidence. Never execute a bot launcher or import a worker just to discover its interface.

Use synthetic data, temporary databases and fake transports for local tests. Production runtime directories may be junctions; inspect targets before copying or cleanup. Read operational state narrowly and protect credentials. Do not recursively scan logs, archives or live databases to answer a small source question.

For a requested release, report code checks, offline tests, broker-demo evidence and live deployment separately. Include unresolved reconciliation/cost/time/data gaps and a rollback that preserves durable journals. Do not label a bot ready for live trading solely because tests pass.
