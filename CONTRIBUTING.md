# Kontribusi

Terima kasih sudah mau membantu. Proyek ini kecil dan fokus, jadi aturannya ringkas.

## Sebelum mulai

- Cek [issue](https://github.com/lanangX/helper/issues) yang sudah ada.
- Untuk perubahan besar pada perilaku skill (misalnya mengubah arti Valid dan Standard), buka issue dulu supaya kita sepakat arahnya.
- Ikuti [Code of Conduct](CODE_OF_CONDUCT.md).

## Prinsip yang tidak boleh dilonggarkan

1. **Valid berarti terverifikasi.** Jalur Valid hanya memuat klaim yang didukung sumber yang dibaca di sesi itu. Jangan menambah aturan yang membolehkan klaim dari ingatan masuk ke Valid.
2. **Gaya tidak menambah fakta.** Dua gaya hanya mengubah cara menyampaikan.
3. **Jujur soal batas.** Bagian yang belum terverifikasi harus ditandai di Catatan.
4. **Klaim pemasangan harus bisa ditelusuri.** Cara pasang di README harus mengikuti dokumentasi resmi platform. Yang belum diuji ditulis "belum diuji".

## Alur perubahan

1. Fork dan buat cabang: `git checkout -b feat/nama-singkat`.
2. Edit sumber kebenaran: `skills/<skill>/SKILL.md`.
3. Sesuaikan `adapters/<skill>.md` supaya format keluaran dan prinsipnya tetap sama.
4. Tambah atau perbarui kasus uji di [`evals/`](evals/README.md) kalau perilaku berubah, lalu jalankan kasusnya dan catat hasilnya di PR.
5. Perbarui [`CHANGELOG.md`](CHANGELOG.md) di bagian `[Unreleased]`.
6. Jalankan `./scripts/build.sh` sampai lolos.
7. Buka pull request memakai template yang tersedia.

## Versi dan rilis

Versi mengikuti SemVer dan harus sama di kedua `plugin.json` (satu versi untuk seluruh repo):

- **Patch** (1.0.1): perbaikan kata, typo, contoh.
- **Minor** (1.1.0): kemampuan baru yang tidak mengubah format keluaran yang ada.
- **Major** (2.0.0): perubahan format keluaran atau arti jalur.

Pemelihara merilis dengan membuat tag `vX.Y.Z`. Workflow rilis membangun zip dan melampirkannya ke GitHub Release.

## Gaya commit

Gunakan awalan singkat: `feat:`, `fix:`, `docs:`, `chore:`, `ci:`. Contoh: `fix: tegaskan bahwa Valid tidak boleh memuat klaim dari ingatan`.
