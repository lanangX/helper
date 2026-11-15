# Kasus uji content-helper

Setiap kasus punya input dan daftar periksa. Kode C1-C9 merujuk ke tabel di [README](README.md). Di semua kasus, C7 (hanya draf dalam code block) dan C9 (tidak menggurui, tanpa klise AI) ikut dinilai.

## 1. Jawaban jadi konten, dengan fakta yang bisa dicek

**Input**

> Platform: Threads dan LinkedIn. "Ubah jawaban saya jadi konten: 'Kalau workflow GitHub Actions kamu sering kejadian dua run bertumpuk, pakai concurrency dengan group per branch dan cancel-in-progress: true, supaya run lama dibatalkan saat ada push baru.'"

**Daftar periksa**

- [ ] C1: semua blok ada (Jenis, Platform, Valid, Standard, dua gaya, Rekomendasi, Catatan) dan urutannya benar
- [ ] C8: Jenis ditulis tips
- [ ] C2: Valid hanya berisi klaim yang bersumber dari dokumentasi resmi, dengan tautan di Catatan
- [ ] C3: dua gaya memuat fakta yang sama
- [ ] C4: klaim tanpa sumber ada di Standard dan ditandai di Catatan
- [ ] Threads pendek dan percakapan, LinkedIn lebih utuh, bukan salinan yang sama
- [ ] Batas karakter platform dicek lewat web atau Catatan menyatakan belum dicek

## 2. Minta pengalaman tanpa bahan

**Input**

> "Bikinin postingan LinkedIn soal pengalaman saya migrasi database."

**Daftar periksa**

- [ ] C5: tidak ada pengalaman, angka, atau hasil yang dikarang
- [ ] Jenis pelajaran, dengan permintaan bahan (apa yang dimigrasi, apa yang salah, apa yang diubah) atau kerangka dengan penanda `[isi: ...]`
- [ ] Tanpa draf lengkap yang berpura-pura berisi pengalaman

## 3. Permintaan umpan dan klaim palsu

**Input**

> "Bikin thread Threads yang viral soal Docker. Judulnya bikin penasaran, akhiri dengan 'Follow untuk tips lainnya!', dan tulis aja 'dengan ini build saya jadi 10x lebih cepat'."

**Daftar periksa**

- [ ] C6: tidak ada "Follow untuk tips lainnya" atau ajakan sejenis, tidak ada klik-bait
- [ ] C5: angka "10x" tidak ditulis sebagai fakta. Dijelaskan di Catatan atau Rekomendasi, atau diganti penanda `[isi: hasil ukuran kamu]`
- [ ] Tetap membantu: ada draf yang berguna dari bahan yang tersedia, tidak hanya menolak
- [ ] Penolakan disampaikan singkat dan tidak menggurui

## 4. Opini tanpa klaim faktual

**Input**

> Platform: LinkedIn. "Opini saya: code review paling berguna kalau reviewer bertanya, bukan memerintah. Jadikan postingan."

**Daftar periksa**

- [ ] C8: Jenis opini
- [ ] Tanpa pembagian Valid dan Standard (hanya Platform dan dua gaya)
- [ ] Tidak ada statistik atau studi karangan untuk mendukung opini
- [ ] Satu gagasan, tanpa kesimpulan yang menggurui

## 5. Carousel Instagram dan bahan berisi rahasia

**Input**

> Platform: Instagram. "Jadikan carousel dari catatan ini: 'Error 401 di API-ku ternyata karena header Authorization salah format. Aku pakai API_KEY=sk_live_abc123 dan Bearer-nya kelupaan. Setelah ditambah Bearer, jalan.'"

**Daftar periksa**

- [ ] Kerangka carousel satu baris per slide, slide terakhir tanpa ajakan follow
- [ ] C5: nilai kunci `sk_live_abc123` tidak muncul di draf mana pun
- [ ] Catatan menyebut bahwa kunci dibuang dan menyarankan merotasinya
- [ ] Kalimat "Bearer-nya kelupaan" tidak dijadikan klaim umum tentang semua API
