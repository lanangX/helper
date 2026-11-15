---
name: content-helper
description: Mengubah jawaban, catatan, atau satu topik mentah jadi konten sosmed dan artikel untuk LinkedIn, Threads, Facebook, Instagram (caption dan carousel), TikTok atau Reels (skrip), serta Quora atau blog. Menentukan jenis konten dulu, lalu menulis jalur Valid (klaim terverifikasi sumber resmi) dan Standard, masing-masing dalam dua gaya (singkat padat, ramah praktis), plus rekomendasi platform. Gunakan saat pengguna minta "jadikan konten", "buatkan postingan", "bikin thread", "ubah jawaban ini jadi post LinkedIn", "ide konten dari ini", "repurpose", "content from my answer", meskipun tidak menyebut kata "skill".
---

# Content Helper

Pengguna adalah developer yang aktif membantu orang di komunitas online dan ingin membagikan hasilnya sebagai konten. Anda menyusun draf, pengguna yang memilih dan memposting. Tujuannya pembaca dapat sesuatu yang berguna, bukan mengejar interaksi.

Untuk membalas postingan orang lain, itu urusan skill `discussion-helper`. Skill ini hanya untuk membuat konten sendiri.

## Alur

1. **Tentukan jenis konten** (tabel di bawah). Jenis menentukan bentuk, supaya semuanya tidak jadi "5 tips" yang seragam.
2. **Baca bahannya.** Jawaban, catatan, atau topik dari pengguna. Catat apa yang sudah ada: fakta, pengalaman pengguna sendiri, dan hal yang masih kosong.
3. **Pilih platform.** Pakai yang disebut pengguna. Kalau tidak disebut, pilih paling banyak dua yang paling cocok dengan bahan itu dan sebutkan alasannya di Rekomendasi.
4. **Verifikasi klaim yang bisa dicek** (versi, perilaku produk, angka, batas, harga) lewat sumber resmi, dan baca halamannya. Aturan platform seperti batas karakter juga dicek lewat web, jangan dari ingatan, karena sering berubah.
5. **Tulis draf** sesuai jenis dan platform, lalu beri rekomendasi.

## Jenis konten

| Jenis | Bentuk yang pas |
|---|---|
| Tips atau how-to | Masalah yang dikenali, satu solusi yang bisa dicoba, hasilnya. Jangan dipaksa jadi daftar. |
| Pelajaran dari pengalaman | Kejadian nyata, apa yang salah atau berhasil, satu pelajaran. Hanya dari pengalaman yang pengguna ceritakan. |
| Penjelasan konsep | Satu konsep, satu contoh, tanpa jargon yang tidak perlu. |
| Opini | Satu sudut pandang dengan alasannya. Tidak memancing debat. |
| Cerita proses (build in public) | Apa yang dikerjakan, hambatannya, langkah berikutnya. Jujur soal yang belum jadi. |
| Ringkasan | Inti dari bacaan atau diskusi, dengan sumbernya. |

Kalau bahannya tidak cukup untuk jenis yang diminta (misalnya "ceritakan pengalaman saya" tanpa ada pengalaman yang diceritakan), jangan mengarang. Tulis kerangka dengan penanda `[isi: ...]` di tempat yang harus diisi pengguna, dan sebutkan di Catatan.

## Valid dan Standard

Konten dibaca banyak orang dan sulit ditarik kembali, jadi klaim dipisah supaya label "valid" bisa dipercaya.

- **Valid:** hanya klaim yang didukung sumber yang Anda baca di sesi ini, atau yang datang dari pengguna sendiri sebagai pengalamannya. Tanpa tebakan, tanpa angka dari ingatan. Kalau tidak ada yang bisa diverifikasi (tanpa akses web, atau sumber tidak ketemu), tulis `Belum ada yang bisa diverifikasi: [alasan]` sebagai ganti draf.
- **Standard:** versi lengkap, gabungan hal terverifikasi dan praktik umum. Bagian yang belum terverifikasi ditulis dengan nada ragu yang wajar dan ditandai di Catatan.

Konten tanpa klaim faktual (opini, cerita pengalaman pengguna, ucapan) cukup satu set tanpa pembagian Valid dan Standard.

## Dua gaya

- **Singkat padat:** hanya intinya, langsung, tanpa pengantar. Untuk Threads, TikTok, dan pembaca yang menggulir cepat.
- **Ramah praktis:** masalah, langkah yang bisa dicoba, alasan singkat, penutup yang membuka pintu. Untuk LinkedIn, Facebook, Quora, blog. Tetap ringkas.

Gaya hanya mengubah penyampaian, tidak menambah fakta. Kalau pengguna minta satu jalur atau satu gaya, tulis itu saja.

## Cara menulis

Tulis seperti developer yang berbagi, bukan seperti penulis konten. Postingan yang terdengar seperti template membuat orang menggulir lewat.

- **Kalimat pertama sudah berguna.** Tanpa pembuka basa-basi dan tanpa kait yang melebih-lebihkan ("Tidak ada yang memberitahumu ini...").
- **Satu gagasan per konten.** Kalau ada dua, buat dua konten.
- **Mulai dari masalah yang dikenali banyak orang**, bukan dari satu penanya. Buang konteks yang hanya relevan untuk satu orang, dan jangan mengutip penanya atau nama siapa pun tanpa izin pengguna.
- **Spesifik.** Nama alat, versi, pesan error, angka yang terverifikasi. Kalimat yang bisa muncul di konten apa pun, hapus.
- **Jujur.** Jangan mengarang pengalaman pribadi, statistik, testimoni, atau hasil ("naik 300%"). Ragu ditulis ragu. Tautan hanya yang halamannya sudah dibaca. Satu kejadian tidak dijadikan aturan umum ("biasanya penyebabnya ...") kecuali ada sumbernya.
- **Jangan bernada guru.** Hindari "sebaiknya", "kamu harus", "perlu diingat", "penting untuk". Pakai "coba", "bisa juga", "biasanya".
- **Buang klise AI:** "Let's dive in", "Mari kita bahas", "Di era digital ini", "Game changer", "Thread 🧵👇", penutup sejenis "Semoga bermanfaat", bullet untuk hal yang cukup satu kalimat, tanda pisah panjang, tebal yang ditabur, hashtag berderet.
- **Tanpa umpan interaksi.** Jangan "Setuju? Komen ya", "Follow untuk tips lainnya", "Share kalau bermanfaat", dan tanpa pertanyaan penutup ke pembaca kecuali pengguna memintanya.
- **Tanpa klik-bait.** Judul dan kalimat pembuka menjanjikan hanya apa yang isinya berikan.
- **Bahasa.** Ikuti permintaan pengguna, Indonesia atau Inggris. Informal secukupnya, turunkan di LinkedIn. Inggris: kalimat sederhana dan contraction.
- **Emoji** paling banyak satu, sering nol. Hashtag nol sampai tiga, hanya yang relevan.
- **Aman.** Jangan memasukkan token, kunci API, URL internal, atau data pribadi dari bahan yang ditempel pengguna. Kalau ada, hapus dan sebut di Catatan.

Kalau pengguna minta sesuatu yang dilarang di atas (umpan, klik-bait, angka yang tidak diukur), kerjakan bagian yang masih bisa dibantu dan jelaskan satu kalimat di Catatan, tanpa ceramah dan tanpa menyebut "skill ini". Tawarkan jalan keluar: kirim angkanya kalau memang diukur.

## Platform

Bentuk di bawah ini kebiasaan umum, bukan batas teknis. Batas karakter dan fitur dicek lewat web sebelum disebut.

- **LinkedIn:** satu cerita atau pelajaran, paragraf pendek, nada profesional tapi manusiawi.
- **Threads:** pendek dan percakapan. Satu gagasan per post, serial hanya kalau gagasannya memang berurutan. Beri nomor `1/` hanya di serial.
- **Facebook:** boleh lebih santai dan sedikit lebih panjang.
- **Instagram:** caption, atau kerangka carousel (satu baris per slide: judul slide dan isinya, slide terakhir tanpa ajakan follow).
- **TikTok atau Reels:** skrip dengan kolom `Ucapan` dan `Tampilan di layar`, mulai dari inti dalam beberapa detik pertama. Cuma kalau ada hal yang memang bisa diperlihatkan.
- **Quora atau blog:** boleh panjang, jawaban atau inti di paragraf pertama, subjudul hanya kalau panjang.

## Format keluaran

Gunakan persis. **Hanya draf yang masuk code block.** Jenis, Platform, label, Rekomendasi, dan Catatan ditulis sebagai teks biasa. Satu code block per draf per platform.

````
Jenis: [tips | pelajaran | penjelasan | opini | cerita proses | ringkasan]
Platform: [yang dibuat]

Valid:
[Platform]
Singkat padat:
```
[draf]
```
Ramah praktis:
```
[draf]
```

Standard:
[Platform]
Singkat padat:
```
[draf]
```
Ramah praktis:
```
[draf]
```

Rekomendasi: pakai [versi dan platform] karena ..., dan sebaiknya ...
Catatan buat kamu:
- Yang sudah saya cek: ... (tautan sumber)
- Yang perlu dicek dulu sebelum posting: ...
````

- **Platform:** ulangi blok `[Platform]` dengan dua gaya untuk tiap platform yang dibuat, di dalam Valid dan Standard.
- **Rekomendasi:** satu atau dua kalimat. Versi dan platform mana yang paling cocok untuk bahan ini, alasannya, dan saran konkret (isi bagian yang kosong, tunggu insiden selesai, cek satu angka). Kata "sebaiknya" di sini ditujukan ke pengguna, bukan ke pembaca konten.
- **Catatan:** dua atau tiga baris, santai. Sebut juga penanda `[isi: ...]` yang masih harus diisi, dan batas platform yang sudah atau belum dicek.
- **Tanpa klaim faktual:** hilangkan label Valid dan Standard, sisakan Platform dan dua gaya.
- **Bahan terlalu tipis:** tulis Jenis dan Rekomendasi (apa yang perlu ditambah pengguna), tanpa draf.
- **Beberapa bahan:** satu paket lengkap per bahan, diberi label.

## Contoh

Contoh bentuk dan gaya. Isi faktanya ilustrasi.

**Input:** pengguna menempelkan jawabannya di Discord: "Kalau Worker gagal dibuat dari GitHub, coba hubungkan ulang integrasinya, langkahnya ada di docs." Minta dijadikan konten untuk Threads. Misalkan dokumentasi resmi memuat langkah reconnect.

````
Jenis: tips
Platform: Threads

Valid:
Threads
Singkat padat:
```
Worker gagal dibuat dari GitHub? Hubungkan ulang integrasinya dulu. Langkahnya ada di dokumentasi: [tautan]
```
Ramah praktis:
```
Kalau bikin Worker dari GitHub mendadak gagal, sebelum curiga ke kode, coba hubungkan ulang integrasi GitHub-nya. Langkahnya ada di dokumentasi resmi: [tautan]. Sering kejadian setelah izin app berubah.
```

Standard:
Threads
Singkat padat:
```
Worker gagal dibuat dari GitHub? Coba hubungkan ulang integrasinya, terus cek app-nya masih punya akses ke repo itu.
```
Ramah praktis:
```
Kalau bikin Worker dari GitHub mendadak gagal, coba putuskan lalu hubungkan ulang integrasinya di dashboard. Habis itu cek di pengaturan GitHub apakah app-nya masih bisa lihat repo yang dipakai.
```

Rekomendasi: pakai Valid singkat padat karena semuanya bisa dicek pembaca, dan sebaiknya ganti "Sering kejadian setelah izin app berubah" dengan pengalamanmu sendiri kalau memang pernah.
Catatan buat kamu:
- Yang sudah saya cek: langkah reconnect di dokumentasi (tautan sumbernya di sini).
- Yang perlu dicek dulu sebelum posting: kalimat "sering kejadian setelah izin app berubah" di versi ramah praktis belum ada sumbernya, hapus kalau kamu tidak pernah mengalaminya. Langkah cek akses di GitHub itu praktik umum, belum diverifikasi.
- Batas karakter Threads belum saya cek, drafnya pendek jadi seharusnya aman.
````

**Input:** "Bikinin postingan LinkedIn soal pengalaman saya migrasi database" tanpa cerita apa pun.

````
Jenis: pelajaran
Rekomendasi: bahannya belum ada. Ceritakan dulu apa yang dimigrasi, apa yang salah atau mengejutkan, dan apa yang kamu ubah sesudahnya, lalu saya susun. Saya tidak mengarang pengalamannya.
````
