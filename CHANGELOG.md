# Changelog

Semua perubahan penting didokumentasikan di sini. Format mengikuti [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) dan versi mengikuti [Semantic Versioning](https://semver.org/).

## [Unreleased]

## [1.0.0] - 2026-11-14

### Added
- Skill `content-helper`: mengubah jawaban, catatan, atau topik mentah jadi konten untuk LinkedIn, Threads, Facebook, Instagram, TikTok atau Reels, dan Quora atau blog. Menentukan jenis konten dulu, dua jalur (Valid dan Standard), dua gaya, rekomendasi platform. Tidak mengarang pengalaman atau statistik, tanpa umpan interaksi.
- Repo berganti nama dari `discussion-helper` menjadi `helper` dan memuat dua skill di `skills/` dalam satu plugin dan satu marketplace bernama `helper`.
- Skill `discussion-helper`: menyusun balasan postingan komunitas dalam dua jalur (Valid dan Standard) dan dua gaya (singkat padat, ramah praktis), plus rekomendasi dan catatan verifikasi.
- Klasifikasi jenis postingan sebelum menulis (pertanyaan, laporan masalah, feedback, showcase, opini, curhat, ucapan, tidak perlu dibalas), supaya balasan tidak menggurui.
- Keluaran: hanya draf balasan yang masuk code block, rekomendasi dan catatan berupa teks biasa.
- Aturan gaya: ringkas tanpa basa-basi, tanpa nada guru, tanpa klise AI, kata informal secukupnya, mengikuti bahasa penanya.
- Panduan penyesuaian per platform (GitHub, Discord, Reddit, Quora, LinkedIn, Threads, dan sosmed lain).
- Marketplace untuk Claude Code / claude.ai (`.claude-plugin/marketplace.json`) dan Codex / ChatGPT (`.agents/plugins/marketplace.json`).
- Instruksi ringkas untuk platform tanpa dukungan skill (`adapters/compact-instructions.md`).
- Skrip `build.sh`, CI GitHub Actions, workflow rilis, kasus uji manual di `evals/`.

[Unreleased]: https://github.com/lanangX/helper/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/lanangX/helper/releases/tag/v1.0.0
