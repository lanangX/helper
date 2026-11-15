# AGENTS.md

Repo publik `helper`: marketplace berisi dua skill untuk developer yang aktif di komunitas online, buatan Pawang Dev. `discussion-helper` menyusun balasan untuk postingan orang lain. `content-helper` membuat konten sendiri.

## Urutan baca

1. `README.md` untuk tujuan dan cara pasang per platform.
2. `skills/<skill>/SKILL.md` untuk isi tiap skill (sumber kebenaran).
3. `adapters/<skill>.md` untuk versi ringkas bagi platform tanpa dukungan skill.
4. `evals/` untuk kasus uji dan prinsip P1-P9 (discussion-helper) dan C1-C9 (content-helper).
5. `CONTRIBUTING.md` untuk alur perubahan dan aturan versi.

## Struktur

- `.claude-plugin/marketplace.json`: marketplace `helper` untuk Claude Code dan claude.ai.
- `.agents/plugins/marketplace.json`: marketplace untuk Codex dan ChatGPT.
- `skills/`: satu folder per skill. Di akar repo supaya `npx skills add` menemukannya.
- `.claude-plugin/plugin.json` + `icon.png` dan `.codex-plugin/plugin.json`: satu plugin `helper` yang memuat semua skill.
- `adapters/`: teks siap tempel untuk Gem, Custom GPT, dan Space.
- `assets/`: animasi SVG untuk README. Harus tetap terbaca penuh saat animasi dimatikan.
- `evals/`: kasus uji manual.
- `scripts/build.sh`: validasi dan bangun zip ke `dist/`.
- `.github/`: CI, rilis, template issue dan PR.
- `dist/`: hasil build, tidak di-commit.

## Aturan

- `SKILL.md` di dalam plugin adalah satu-satunya sumber. `adapters/<skill>.md` dan zip di `dist/` adalah turunannya. Setelah mengubah `SKILL.md`, sesuaikan adapter dan jalankan `./scripts/build.sh`.
- Format keluaran (Valid, Standard, dua gaya, Rekomendasi, Catatan) harus sama di `SKILL.md`, adapter, dan README. `build.sh` memeriksa penandanya.
- Skill baru: tambah folder di `skills/`, adapter di `adapters/`, kasus uji di `evals/`, dan tambahkan namanya ke `SKILLS` dan `markers_for` di `scripts/build.sh`.
- Jalur Valid tidak boleh memuat klaim dari ingatan. Hanya klaim yang punya sumber yang dibaca di sesi itu. Ini inti skill, jangan dilonggarkan.
- Versi harus sama di `.claude-plugin/plugin.json` dan `.codex-plugin/plugin.json` dan punya bagian di `CHANGELOG.md`. Satu tag rilis untuk seluruh repo.
- Nama plugin (`helper`) harus sama di kedua `marketplace.json` dan kedua `plugin.json`. Jangan pakai awalan `claude-`, `anthropic-`, atau `cc-plugin-`, karena ditolak validator Claude.
- URL repo memakai `lanangX/helper`. Jangan menaruh placeholder `OWNER` kembali, CI menolaknya.
- Klaim cara pasang di platform lain harus bisa ditelusuri ke dokumentasi resmi. Yang belum diuji ditulis "belum diuji".

## Review guidelines

- Treat any claim from memory in the Valid track (`skills/*/SKILL.md`,
  `adapters/*.md`) as a high-priority review finding. Valid output may only contain claims backed by a
  source read in that session.
- Flag mismatched output format (Valid, Standard, two styles, Rekomendasi,
  Catatan) between `SKILL.md`, its adapter, and `README.md`.
- Flag version mismatches between `.claude-plugin/plugin.json`,
  `.codex-plugin/plugin.json`, and `CHANGELOG.md`.
- Flag plugin name drift (`helper` must match in both `marketplace.json` and
  both `plugin.json`) and forbidden prefixes (`claude-`, `anthropic-`, `cc-plugin-`).
- Flag any `OWNER` placeholder; the repo URL must be `lanangX/helper`.
- Install claims for other platforms must trace to official docs; otherwise
  they must say "belum diuji".
- In `scripts/build.sh` and `.github/workflows/`, flag unquoted variables,
  command injection via untrusted input (PR/issue titles, branch names),
  overly broad `permissions`, unpinned third-party actions, and secrets exposure.
- Do not comment on wording style or SVG cosmetics.
