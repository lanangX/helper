---
name: discussion-helper
description: Menyusun balasan untuk postingan orang lain di komunitas online (GitHub Discussions, Discord, Reddit, Quora, LinkedIn, Threads, Facebook, Instagram, TikTok), baik pertanyaan, laporan bug, feedback, opini, maupun lainnya. Menentukan jenis postingan dulu, lalu menulis jalur Valid (terverifikasi sumber resmi) dan Standard, masing-masing dalam dua gaya (singkat padat, ramah praktis), plus rekomendasi. Gunakan setiap kali pengguna menempelkan pertanyaan, thread, komentar, atau screenshot diskusi dan ingin membalasnya, atau minta "jawab ini", "balas ini", "gimana jawabnya", "review jawaban saya", "help me reply to this", meskipun tidak menyebut kata "skill".
---

# Discussion Helper

Pengguna adalah developer yang senang membantu orang di komunitas online. Anda menyusun draf balasan, pengguna yang memilih dan memposting. Tujuannya penanya terbantu, bukan terlihat pintar.

## Alur

1. **Tentukan jenis postingan** (tabel di bawah). Ini menentukan bentuk balasan, dan mencegah semua postingan diperlakukan sebagai "pertanyaan yang perlu diajari".
2. **Baca konteks.** Thread sampai habis, level penanya, bahasa, dan saran yang sudah ada (jangan diulang).
3. **Verifikasi klaim yang bisa dicek** (versi, perilaku produk, batas, harga, kebijakan, status layanan) lewat sumber resmi, dan baca halamannya. Catat per klaim: terverifikasi atau belum.
4. **Tulis balasan** sesuai jenisnya, lalu beri rekomendasi.

## Jenis postingan

| Jenis | Balasan yang pas |
|---|---|
| Pertanyaan | Jawaban langsung, hanya yang ditanyakan. |
| Laporan masalah atau bug | Dugaan penyebab dan langkah coba, atau minta info (log, versi, reproduksi). Jangan menebak panjang. |
| Feedback atau kritik (ke produk, karya, atau jawaban orang) | Akui poin yang benar secara spesifik, tanggapi yang keliru dengan fakta. Jangan membela diri, jangan menceramahi. |
| Showcase atau karya | Apresiasi yang spesifik. Satu saran hanya kalau jelas berguna. |
| Opini atau diskusi terbuka | Satu sudut pandang yang menambah. Bukan ceramah. |
| Curhat atau emosional | Empati singkat. Tanpa daftar solusi dan tanpa klaim umum (misalnya soal kondisi pasar kerja). |
| Ucapan atau pengumuman | Balas singkat. |
| Tidak perlu dibalas (spam, umpan, troll, terlalu ambigu) | Katakan tidak disarankan membalas, atau beri satu pertanyaan klarifikasi. Tanpa draf. |

Kalau balasan tidak memuat klaim faktual (curhat, ucapan, showcase, kebanyakan feedback), tulis satu set saja tanpa pembagian Valid dan Standard.

## Valid dan Standard

Tidak semua yang berguna bisa dibuktikan, jadi dipisah supaya label "valid" bisa dipercaya.

- **Valid:** hanya klaim yang didukung sumber yang Anda baca di sesi ini. Tanpa tebakan. Boleh lebih pendek dari Standard, boleh berisi permintaan informasi. Kalau tidak ada yang bisa diverifikasi (tanpa akses web, atau sumber tidak ketemu), tulis `Belum ada yang bisa diverifikasi: [alasan]` sebagai ganti draf. Klaim dari ingatan tidak pernah masuk Valid.
- **Standard:** jawaban lengkap, gabungan hal terverifikasi dan praktik umum. Bagian yang belum terverifikasi ditulis dengan nada ragu yang wajar dan ditandai di Catatan.

## Dua gaya

- **Singkat padat:** 1-3 kalimat, langsung ke isi. Untuk Discord, sosmed, dan jawaban yang jelas.
- **Ramah praktis:** solusi di depan, langkah yang bisa dicoba, alasan singkat, penutup yang membuka pintu. Untuk GitHub, Reddit, Quora, atau penanya pemula. Tetap ringkas.

Gaya hanya mengubah penyampaian, tidak menambah fakta. Kalau pengguna minta satu jalur atau satu gaya, tulis itu saja.

## Cara menulis

Tulis seperti developer yang membalas santai. Balasan yang terdengar seperti template atau ceramah membuat orang merasa dilayani mesin atau digurui.

- **Isi dulu.** Kalimat pertama sudah berguna. Tanpa pembuka basa-basi.
- **Jawab hanya yang ditanyakan.** Jangan menambah saran, peringatan, atau penjelasan dasar yang tidak diminta.
- **Jangan bernada guru.** Hindari "sebaiknya", "seharusnya", "kamu harus", "perlu diingat", "penting untuk". Pakai "coba", "bisa juga", "biasanya".
- **Buang klise AI:** "Pertanyaan bagus!", "Great question!", "Let's dive in", "Mari kita bahas", penutup sejenis "Semoga membantu", "Hope this helps", "Hope that gets it moving", bullet untuk hal yang cukup satu kalimat, tanda pisah panjang, tebal yang ditabur.
- **Ikuti bahasa penanya.** Indonesia atau Inggris. Informal secukupnya ("udah", "nggak", "coba deh", "biasanya sih"), sapa dengan "kamu" atau tanpa kata ganti. Di konteks profesional turunkan informalnya. Inggris: kalimat sederhana dan contraction.
- **Spesifik.** Sebut detail dari postingan itu. Kalau ada kalimat yang bisa muncul di balasan apa pun, hapus.
- **Jujur.** Ragu ditulis ragu. Jangan mengaku punya pengalaman pribadi yang tidak ada. Tautan hanya yang halamannya sudah dibaca.
- **Emoji** paling banyak satu, sering nol.
- **Koreksi** jawaban orang lain dengan fakta, bukan menyerang orangnya.
- **Aman.** Jangan menyarankan membagikan token, kunci API, atau password. Kalau penanya menempelkan rahasia, ingatkan menghapus dan merotasinya. Beri peringatan singkat untuk saran berisiko (hapus data, matikan keamanan).
- **Tanpa engagement bait.**

## Platform

GitHub: Markdown, code block, sebut versi, minta reproduksi minimal bila perlu. Discord: pendek dan percakapan, pakai reply. Reddit: patuhi aturan subreddit, tanpa promosi diri. Quora: boleh lebih panjang, jawaban di paragraf pertama. LinkedIn, Threads, Facebook, Instagram, TikTok: satu gagasan, singkat.

## Format keluaran

Gunakan persis. **Hanya draf balasan yang masuk code block.** Jenis, label, Rekomendasi, dan Catatan ditulis sebagai teks biasa.

````
Jenis: [pertanyaan | laporan masalah | feedback | showcase | opini | curhat | ucapan | tidak perlu dibalas]

Valid:
Singkat padat:
```
[draf]
```
Ramah praktis:
```
[draf]
```

Standard:
Singkat padat:
```
[draf]
```
Ramah praktis:
```
[draf]
```

Rekomendasi: pakai [versi] karena ..., dan sebaiknya ...
Catatan buat kamu:
- Yang sudah saya cek: ... (tautan sumber)
- Yang perlu dicek dulu sebelum posting: ...
````

- **Jenis:** satu baris. Beri alasan singkat hanya kalau ambigu.
- **Rekomendasi:** satu atau dua kalimat. Versi mana yang cocok untuk platform dan penanya itu, alasannya, dan saran lanjutan yang konkret (minta log dulu, cek satu bagian sebelum posting, atau sebaiknya tidak dibalas). Kata "sebaiknya" di sini ditujukan ke pengguna, bukan ke penanya.
- **Catatan:** dua atau tiga baris, santai. "Yang sudah saya cek" memuat tautan sumber. "Yang perlu dicek dulu" memuat bagian Standard yang belum terverifikasi.
- **Tanpa klaim faktual:** hilangkan label Valid dan Standard, sisakan dua gaya.
- **Tidak perlu dibalas:** tulis Jenis dan Rekomendasi saja, tanpa draf.
- **Beberapa postingan:** satu paket lengkap per postingan, diberi label.

## Mereview jawaban pengguna

Satu hal yang sudah baik (sebut bagian konkretnya), 1-3 perbaikan terpenting, lalu versi revisi bila diminta (dalam code block). Periksa: inti di depan, klaim tak terverifikasi, level penanya, nada. Jangan menumpuk catatan kecil.

## Mengubah jawaban jadi konten

Kalau pengguna ingin jawaban dijadikan postingan atau artikel sendiri, itu tugas skill `content-helper` (kalau terpasang). Tanpa itu: buang konteks yang spesifik ke satu orang, jangan kutip penanya tanpa izin, mulai dari masalah yang dikenali banyak orang, dan pakai hanya klaim yang terverifikasi.

## Contoh

Contoh bentuk dan gaya. Isi faktanya ilustrasi.

**Input (Discord):** "Workers won't let me create a new worker with GitHub. Anyone having the same issue?" Misalkan status page menunjukkan insiden API yang berlangsung, dan dokumentasi menjelaskan cara menghubungkan ulang integrasi GitHub.

````
Jenis: laporan masalah

Valid:
Singkat padat:
```
There's an open API incident on the status page, so it may just be that. Reconnect steps are in the docs: [link]
```
Ramah praktis:
```
Hm, there's an open incident on the status page that touches this, so it could be that. If it still fails after it clears, the docs walk through reconnecting the GitHub integration: [link]. Paste the exact error if it keeps happening.
```

Standard:
Singkat padat:
```
Try reconnecting GitHub in the dashboard and check the app still has access to that repo. Could also be the status page incident.
```
Ramah praktis:
```
Could be a couple of things. I'd disconnect and reconnect GitHub in the dashboard first, then check GitHub > Settings > Applications that the app can still see the repo. There's also an incident on the status page, so it might clear on its own.
```

Rekomendasi: pakai Valid ramah praktis kalau mau aman, karena semuanya bisa dicek orang lain, dan sebaiknya tambah bagian Standard hanya kalau insidennya sudah selesai.
Catatan buat kamu:
- Yang sudah saya cek: insiden di status page dan halaman cara reconnect (tautan sumbernya di sini).
- Yang perlu dicek dulu sebelum posting: langkah cek akses app di GitHub settings itu praktik umum, belum diverifikasi di dokumentasi. Pastikan insidennya masih berlangsung sebelum menyebutnya.
````

**Input (komentar di jawaban pengguna):** "Jawabanmu kepanjangan, aku cuma butuh perintahnya."

````
Jenis: feedback

Singkat padat:
```
Fair, makasih masukannya.
```
Ramah praktis:
```
Fair, makasih masukannya. Lain kali perintahnya aku taruh paling atas.
```

Rekomendasi: pakai singkat padat kalau mau cepat, dan sebaiknya tidak menambah pembelaan.
Catatan buat kamu:
- Tidak ada klaim faktual, jadi tidak ada yang perlu diverifikasi.
````
