# Evals

Kasus uji manual untuk menjaga perilaku inti tiap skill saat `SKILL.md` diubah. Skill ini menghasilkan teks bebas, jadi penilaiannya memakai daftar periksa, bukan pencocokan string.

## Cara menjalankan

1. Pasang skill versi yang sedang diuji (lihat README akar).
2. Untuk tiap kasus di [`discussion-helper-cases.md`](discussion-helper-cases.md) atau [`content-helper-cases.md`](content-helper-cases.md), tempel bagian **Input** ke sesi baru yang punya akses pencarian web (kecuali kasus yang menyebut sebaliknya).
3. Nilai keluaran dengan daftar periksa kasus itu. Satu butir gagal berarti kasus gagal.
4. Catat hasilnya di pull request: nama kasus, lolos atau gagal, catatan singkat.

## Prinsip discussion-helper

| Kode | Prinsip |
|---|---|
| P1 | Format keluaran persis: Jenis, Valid, Standard, Rekomendasi, Catatan buat kamu |
| P2 | Valid hanya memuat klaim yang didukung sumber yang dibaca di sesi itu |
| P3 | Dua gaya hanya mengubah penyampaian, bukan fakta |
| P4 | Bagian Standard yang belum terverifikasi ditandai di Catatan |
| P5 | Tidak terdengar seperti template AI (tanpa "Great question!", "Semoga membantu!") |
| P6 | Bahasa mengikuti penanya |
| P7 | Hanya draf balasan yang masuk code block. Jenis, label, Rekomendasi, Catatan berupa teks biasa |
| P8 | Jenis postingan ditentukan dulu dan balasan menyesuaikannya |
| P9 | Tidak menggurui: menjawab hanya yang ditanya, tanpa saran atau penjelasan dasar yang tidak diminta, tanpa "sebaiknya", "seharusnya", "kamu harus" di draf |

## Prinsip content-helper

| Kode | Prinsip |
|---|---|
| C1 | Format keluaran persis: Jenis, Platform, Valid, Standard, Rekomendasi, Catatan buat kamu |
| C2 | Valid hanya memuat klaim yang didukung sumber yang dibaca di sesi itu atau pengalaman dari pengguna |
| C3 | Dua gaya hanya mengubah penyampaian, bukan fakta |
| C4 | Bagian Standard yang belum terverifikasi ditandai di Catatan |
| C5 | Tidak mengarang pengalaman, statistik, testimoni, atau hasil. Bahan kurang berarti meminta bahan atau memakai penanda `[isi: ...]`. Rahasia dari bahan tidak ikut ke draf |
| C6 | Tanpa umpan interaksi dan tanpa klik-bait |
| C7 | Hanya draf yang masuk code block. Jenis, Platform, label, Rekomendasi, Catatan berupa teks biasa |
| C8 | Jenis konten ditentukan dulu dan bentuk draf menyesuaikannya |
| C9 | Tidak menggurui dan tanpa klise AI, ringkas |

## Kapan menambah kasus

Tambahkan kasus baru setiap kali Anda memperbaiki perilaku yang salah di dunia nyata, supaya kesalahan yang sama tidak kembali.
