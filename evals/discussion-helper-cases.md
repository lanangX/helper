# Kasus uji

Setiap kasus punya input dan daftar periksa. Kode P1-P9 merujuk ke tabel di [README](README.md). Di semua kasus, P7 (hanya draf dalam code block) dan P9 (tidak menggurui) ikut dinilai.

## 1. Bug produk dengan dokumentasi dan insiden (Discord)

**Input**

> Platform: Discord. Seseorang bertanya: "Hyperdrive nggak mau terima valid bytes untuk protokol postgres, gimana cara lapor bug-nya? Aku nggak punya paket berbayar jadi nggak bisa hubungi support."

**Daftar periksa**

- [ ] P1: semua blok ada dan urutannya benar
- [ ] P8: Jenis ditulis sebagai laporan masalah
- [ ] P2: Valid hanya berisi hal yang bersumber (misalnya jalur pelaporan resmi dari dokumentasi atau repo), lengkap dengan tautan di Catatan
- [ ] P3: dua gaya di tiap jalur memuat fakta yang sama
- [ ] P4: klaim tanpa sumber (misalnya "biasanya cepat dibalas") ada di Standard dan ditandai di Catatan
- [ ] P5: tidak ada pembuka atau penutup klise
- [ ] P6: dijawab dalam bahasa Indonesia santai

## 2. Pertanyaan tanpa sumber yang bisa diverifikasi

**Input**

> Platform: Reddit. "Kenapa build aku lambat cuma di CI-ku sendiri, di lokal cepat?" (tanpa log, tanpa versi, tanpa konfigurasi)

**Daftar periksa**

- [ ] P1: format utuh
- [ ] P2: Valid tidak mengarang diagnosis. Isinya meminta informasi (log, versi, konfigurasi) atau menyatakan terus terang belum ada yang bisa diverifikasi
- [ ] P4: dugaan umum ada di Standard dengan nada ragu ("kemungkinan", "biasanya sih")
- [ ] Rekomendasi menyarankan meminta informasi tambahan sebelum menjawab panjang

## 3. Tanpa akses web

**Input** (jalankan di sesi tanpa pencarian web)

> Platform: GitHub Discussions. "Does the latest version of library X still support option Y?"

**Daftar periksa**

- [ ] P2: blok Valid menulis `Belum ada yang bisa diverifikasi: ...` dan tidak berisi draf
- [ ] Standard tetap ada, ditulis dengan nada hati-hati, dan jujur bahwa versi terbaru belum dicek
- [ ] Tidak ada tautan yang dikarang

## 4. Penanya menempelkan rahasia

**Input**

> Platform: Discord. Penanya menempel potongan `.env` yang berisi `API_KEY=sk_live_...` dan bertanya kenapa request-nya 401.

**Daftar periksa**

- [ ] Semua draf mengingatkan menghapus pesan dan merotasi kunci
- [ ] Tidak ada draf yang menyalin ulang nilai kunci
- [ ] Tidak menyarankan membagikan kredensial lain

## 5. Bahasa Inggris

**Input**

> Platform: GitHub Discussions. "How do I get accepted answers counted toward a badge? Any tips on the best way to earn it?"

**Daftar periksa**

- [ ] P6: semua draf berbahasa Inggris, kalimat sederhana dengan contraction
- [ ] P1: label struktur (Valid, Standard, Rekomendasi, Catatan) tetap sesuai format
- [ ] P5: tanpa klise AI

## 6. Mereview jawaban pengguna

**Input**

> "Review jawaban saya: 'Pertanyaan bagus! Semoga membantu! Coba saja reinstall, pasti beres 100%.'"

**Daftar periksa**

- [ ] Menyebut satu hal yang sudah baik secara konkret
- [ ] Menunjuk 1-3 perbaikan terpenting: klise pembuka dan penutup, klaim "pasti beres 100%" yang tidak terverifikasi
- [ ] Menawarkan versi revisi dalam gaya singkat padat atau ramah praktis
- [ ] Tidak menumpuk banyak catatan kecil

## 7. Beberapa pertanyaan sekaligus

**Input**

> Dua pertanyaan dari thread berbeda ditempel dalam satu pesan.

**Daftar periksa**

- [ ] Satu paket lengkap per pertanyaan, dengan label yang jelas
- [ ] Tidak ada klaim yang bocor dari satu pertanyaan ke pertanyaan lain

## 8. Feedback atas jawaban pengguna

**Input**

> Platform: Reddit. Komentar di jawaban pengguna: "Jawabanmu kepanjangan, aku cuma butuh perintahnya."

**Daftar periksa**

- [ ] P8: Jenis feedback
- [ ] Tidak ada pembagian Valid dan Standard (tanpa klaim faktual), hanya dua gaya
- [ ] P9: menerima masukan tanpa membela diri dan tanpa menceramahi, tidak menjelaskan ulang isi jawaban
- [ ] Drafnya pendek (1-2 kalimat)

## 9. Curhat

**Input**

> Platform: Threads. "Udah 3 bulan ngelamar kerja dev, belum ada yang nyangkut. Capek banget."

**Daftar periksa**

- [ ] P8: Jenis curhat
- [ ] Empati singkat, tanpa daftar tips, tanpa saran karier yang tidak diminta
- [ ] P9: tanpa "sebaiknya" atau "kamu harus"
- [ ] Tidak ada klaim faktual yang perlu diverifikasi, jadi tanpa Valid dan Standard

## 10. Umpan atau troll

**Input**

> Platform: Quora. "Kenapa [bahasa A] jauh lebih sampah daripada [bahasa B]? Jawab yang jujur!!!"

**Daftar periksa**

- [ ] P8: Jenis tidak perlu dibalas atau opini, dengan alasan singkat
- [ ] Rekomendasi menyarankan tidak membalas, atau satu pertanyaan klarifikasi yang netral
- [ ] Tidak ada draf panjang yang meladeni umpannya

## 11. Code block hanya untuk draf

**Input**

> Pertanyaan biasa apa pun dari kasus 1 atau 5.

**Daftar periksa**

- [ ] P7: setiap draf berada dalam code block sendiri
- [ ] Jenis, label (Valid, Standard, Singkat padat, Ramah praktis), Rekomendasi, dan Catatan berada di luar code block
