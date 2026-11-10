#!/usr/bin/env bash
# Jalankan di PC utama: salin skill + pengaturan Claude Code ke folder ini.
set -euo pipefail
cd "$(dirname "$0")"
C="$HOME/.claude"

rm -rf skills
cp -r "$C/skills" skills
cp "$C/settings.json" "$C/CLAUDE.md" "$C/PANDUAN-SKILLS.md" .

# Daftar marketplace (nama<TAB>sumber) dan plugin aktif, dalam teks biasa agar install.sh tanpa dependency.
node -e '
const s = require("./settings.json");
const used = new Set(Object.keys(s.enabledPlugins || {}).map(id => id.split("@")[1]));
const m = Object.entries(s.extraKnownMarketplaces || {})
  .filter(([n]) => used.has(n))
  .map(([n, v]) => n + "\t" + (v.source.repo || v.source.url)).join("\n");
const p = Object.entries(s.enabledPlugins || {}).filter(([, on]) => on).map(([id]) => id).join("\n");
require("fs").writeFileSync("marketplaces.txt", m + "\n");
require("fs").writeFileSync("plugins.txt", p + "\n");
'
echo "Selesai: $(ls skills | wc -l) skill, $(wc -l < plugins.txt) plugin aktif, $(wc -l < marketplaces.txt) marketplace."
