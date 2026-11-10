# Paket sinkron Claude Code

Isi: `skills/`, `settings.json` (plugin + marketplace), `CLAUDE.md`, `PANDUAN-SKILLS.md`, `plugins.txt`, `marketplaces.txt`.

## PC lain — pasang pertama kali
Butuh: Git for Windows, Claude Code (sudah login), GitHub CLI. Jalankan di Git Bash:
```bash
winget install --id GitHub.cli -e
gh auth login --hostname github.com --git-protocol https --web
gh repo clone axlghozy78/claude-sync ~/claude-sync
bash ~/claude-sync/install.sh
```
Lalu buka sesi Claude baru → `/mcp` → login context7 dan supabase.

## Update
PC utama, setelah tambah/hapus skill atau plugin:
```bash
cd ~/"Downloads/NEW PROJECT/claude-sync" && bash export.sh && git add -A && git commit -m "update skill" && git push
```
PC lain:
```bash
cd ~/claude-sync && git pull && bash install.sh
```

`install.sh` mencadangkan `settings.json`, `CLAUDE.md`, `PANDUAN-SKILLS.md` lama sebagai `*.bak-<waktu>` di `~/.claude`, dan tidak menghapus skill yang sudah ada di PC itu.

## Opsional — MCP (tidak ikut otomatis)
- **REA** (butuh Node ≥ 24.22.1): `npx -y rea-agents@6.8.0 setup --client claude_code --yes`
- **Craft Anything**: unduh `craft-anything-<ver>-windows-x64-portable.zip` dari github.com/storytold/craft-anything/releases, ekstrak ke `~/Apps/craft-anything`, lalu:
  ```bash
  ~/Apps/craft-anything/craft-anything-cli.exe setup --client claude_code --yes
  ~/Apps/craft-anything/craft-anything-cli.exe ai add "Claude Code" --kind agent_cli --model claude-code
  ~/Apps/craft-anything/craft-anything-cli.exe ai effort "Claude Code" medium
  ~/Apps/craft-anything/craft-anything-cli.exe ai model "Claude Code" claude-sonnet-5-5
  ~/Apps/craft-anything/craft-anything-cli.exe ai builder "Claude Code"
  ~/Apps/craft-anything/craft-anything-cli.exe settings-set --key build.max_rounds --value 3
  ```
  Urutan penting: `ai effort` mengembalikan model ke Opus, jadi `ai model` harus sesudahnya.

## Catatan
- `fl-studio-mix-master` menunjuk ke Python lokal PC utama; di PC lain bagian itu tidak berfungsi sampai env-nya dibuat.
- Jangan salin `~/.claude.json` (berisi data sesi/login).
