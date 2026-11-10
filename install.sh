#!/usr/bin/env bash
# Jalankan di PC lain (Git Bash): pasang skill, pengaturan, marketplace dan plugin dari folder ini.
set -euo pipefail
cd "$(dirname "$0")"
C="$HOME/.claude"
CLAUDE="${CLAUDE:-$(command -v claude || echo "$HOME/.local/bin/claude.exe")}"
ts=$(date +%Y%m%d-%H%M%S)
mkdir -p "$C/skills"

# File lama dicadangkan dulu, tidak ditimpa begitu saja.
for f in settings.json CLAUDE.md PANDUAN-SKILLS.md; do
  [ -f "$C/$f" ] && cp "$C/$f" "$C/$f.bak-$ts"
  cp "$f" "$C/$f"
done

# Menambah/memperbarui skill; skill lain yang sudah ada di PC itu tidak dihapus.
cp -r skills/. "$C/skills/"

tr -d '\r' < marketplaces.txt | while IFS=$'\t' read -r name src; do
  [ -n "$name" ] && { "$CLAUDE" plugin marketplace add "$src" >/dev/null 2>&1 || true; }
done

fail=0
while read -r p; do
  [ -z "$p" ] && continue
  "$CLAUDE" plugin install "$p" >/dev/null 2>&1 && echo "ok    $p" || { echo "GAGAL $p"; fail=1; }
done < <(tr -d '\r' < plugins.txt)

echo "Skill terpasang: $(ls "$C/skills" | wc -l). Cadangan: *.bak-$ts di $C"
echo "Berikutnya: buka sesi Claude baru, lalu /mcp untuk login context7 dan supabase."
exit $fail
