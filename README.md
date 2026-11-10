# Paket sinkron Claude Code

Isi: `skills/`, `settings.json` (plugin + marketplace), `CLAUDE.md`, `PANDUAN-SKILLS.md`, `plugins.txt`, `marketplaces.txt`.

## PC utama — perbarui paket setelah tambah/hapus skill
```bash
bash export.sh
```

## PC lain (Git Bash, Claude Code sudah terpasang dan login)
1. Salin folder ini (flashdisk, Google Drive, atau repo GitHub **private**).
2. Jalankan:
   ```bash
   bash install.sh
   ```
3. Buka sesi Claude baru → `/mcp` → login context7 dan supabase.

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
