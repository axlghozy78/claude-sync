# Local release tools on this Windows installation

Gitleaks 8.30.1 is installed as a portable MIT-licensed CLI:

```powershell
& "$env:LOCALAPPDATA\Programs\CodexVibeTools\gitleaks-8.30.1\gitleaks.exe" dir . --redact=100 --no-banner --no-color
```

Run from the specifically authorized project source directory, not the user's profile or a directory containing unrelated projects. Use the project's existing scanner configuration/exclusions when present. Inspect help before choosing Git-history versus current-directory scanning.

Exit 0 means no matching findings, exit 1 can mean detected secrets, and command/setup errors require inspection. Keep reports redacted. Never paste discovered secret values into chat or a public issue. Report file, line, finding type and appropriate remediation instead. Do not revoke or rotate credentials without the necessary authorization.

This installation does not provide a project test suite. Use existing PHPUnit/Pest/PHPStan, Python or JS/TS checks as appropriate. Add Playwright and accessibility dependencies only to a project that needs repeatable browser tests, with a reviewed version and lockfile. Use current documentation and avoid global framework upgrades.
