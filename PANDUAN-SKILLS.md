# Panduan Skill Claude

Skill terpanggil otomatis sesuai tugas. Kalau tidak, ketik perintahnya di awal pesan, contoh: `/claude-seo:seo-audit https://situsku.com`.

## Mode hemat (berlaku sampai diganti)
| Perintah | Fungsi |
|---|---|
| `/ponytail:ponytail full` | Kode minimal tapi lengkap (default, harian) |
| `/ponytail:ponytail ultra` | Juga mempertanyakan permintaan — pakai di awal proyek baru |
| `/ponytail:ponytail lite` / `off` | Longgar / mati (prototipe, demo) |
| `/caveman` | Jawaban ringkas |
| `/ultracave` | Super ringkas (sesi panjang) |
| `/clear` | Mulai bersih saat ganti topik (paling hemat) |
| `/compact` | Ringkas percakapan panjang |

## Coding & aplikasi
| Kebutuhan | Perintah |
|---|---|
| Rencanakan fitur/aplikasi | `/superpowers:brainstorming` lalu `/superpowers:writing-plans` |
| Uji ide/rencana (grill-me) | `/mattpocock-skills:grilling` |
| Bug / error | `/superpowers:systematic-debugging` atau `/mattpocock-skills:diagnosing-bugs` |
| TDD | `/superpowers:test-driven-development` |
| PRD / spesifikasi | `/product-management:write-spec` |
| Review kode | `/code-review` atau `/pr-review-toolkit:review-pr` |
| Aplikasi desktop | `/tauri` |
| Mobile / iOS (dari Windows) | `/expo:expo-overview`, `/react-native-design`, `/mobile-ios-design` |
| Backend gratis | `/supabase:supabase` (login `/mcp` dulu) |
| Docs library terbaru | sebut "pakai context7" (login `/mcp` dulu) |
| Bot trading | `/trading-bot-review` |
| Codebase besar | `/graphify-local` |
| Output terminal panjang | `/rtk-output` |
| Agent AI / MCP | `/vercel:build-agents`, `/claude-api` |
| Bedah & buat ulang web/app/game (Study→Build→Check→Refine) | Aplikasi `~/Apps/craft-anything/craft-anything.exe`, atau di sini: "pakai craft-anything" / `/craft-anything` |
| Clone fitur app (rencana produk) | `/replica` |

## Cek otomatis, alur & keamanan
| Kebutuhan | Perintah |
|---|---|
| Tes alur website/app | sebut "tes dengan playwright" |
| Performa, Lighthouse, network | `/chrome-devtools-mcp:chrome-devtools`, `/chrome-devtools-mcp:debug-optimize-lcp` |
| Aksesibilitas | `/chrome-devtools-mcp:a11y-debugging` |
| Cek sebelum rilis | `/web-release-check` |
| Scan keamanan penuh | `/claude-security:claude-security` |
| Konfigurasi tidak aman | `/insecure-defaults:audit` |
| Dependency berbahaya | `/supply-chain-risk-auditor:supply-chain-risk-auditor` |
| Panduan secure coding | `/security-best-practices` |

## Desain
| Kebutuhan | Perintah |
|---|---|
| UI/UX web, desktop, mobile | `/ui-ux-pro-max:ui-ux-pro-max` |
| Biar tidak terlihat "AI" | `/taste-skill:design-taste-frontend` |
| Design system / brand | `/ui-ux-pro-max:design-system`, `/ui-ux-pro-max:brand` |
| Banner / flyer / poster | `/ui-ux-pro-max:banner-design`, `/canvas-design` |
| Tema warna & font | `/theme-factory` |
| Kritik desain | `/design:design-critique` |
| 3D web | `/threejs` |

## Video & konten
| Kebutuhan | Perintah |
|---|---|
| Video apa pun (titik masuk) | `/hyperframes:hyperframes` |
| Promo / demo produk dari URL | `/hyperframes:product-launch-video` |
| Explainer tanpa wajah | `/hyperframes:faceless-explainer` |
| Motion graphic, logo sting | `/hyperframes:motion-graphics` |
| Subtitle / caption | `/hyperframes:embedded-captions` |
| Reels / video ikut musik | `/hyperframes:music-to-video` (9:16) |
| Voice-over, SFX, color grade | `/hyperframes:media-use` |
| Video React | `/remotion-best-practices` |
| Naskah, adegan, dialog | `/screenwriting` |
| Prompt video AI | `/veo-3.2-prompter`, `/seedance-2.0-prompter` |
| Prompt gambar | `/marketing-skills:image` |

## Marketing, SEO & data
| Kebutuhan | Perintah |
|---|---|
| Copywriting | `/marketing-skills:copywriting` |
| Bikin teks terdengar manusia | `/humanizer:humanizer` |
| SEO audit | `/claude-seo:seo-audit` |
| AEO / GEO (AI search) | `/claude-seo:seo-geo`, `/marketing-skills:ai-seo` |
| Iklan | `/claude-ads:ads`, `/marketing-skills:ad-creative` |
| Sosial media & kalender konten | `/marketing-skills:social`, `/marketing-skills:content-strategy` |
| CRM / sales ops | `/marketing-skills:revops` |
| Riset kompetitor | `/marketing-skills:competitor-profiling` |
| Analisis data | minta saja "analisis file ini" (pakai Python) |

## Dinonaktifkan (nyalakan bila alatnya sudah ada)
`claude plugin enable static-analysis@trailofbits` (butuh semgrep), `duckdb-skills@claude-plugins-official` (butuh DuckDB), `swiftui-pro@swiftui-agent-skill` (butuh Mac).
