# Kebijakan keamanan

## Cakupan

Repo ini berisi teks instruksi (skill), manifest JSON, dan skrip shell untuk validasi dan build. Tidak ada layanan yang berjalan dan tidak ada kredensial yang dibutuhkan.

Hal yang kami anggap masalah keamanan:

- Instruksi di skill yang bisa membuat model membocorkan data pengguna, mengarahkan ke tautan berbahaya, atau menyarankan membagikan token, kunci API, atau password.
- Celah prompt injection yang membuat skill melanggar prinsipnya (misalnya melabeli klaim tak terverifikasi sebagai Valid) saat memproses thread yang berisi teks berbahaya.
- Skrip di `scripts/` atau workflow di `.github/` yang bisa dieksploitasi (misalnya injeksi perintah lewat nama cabang atau input).

## Melapor

Jangan buka issue publik untuk kerentanan. Gunakan **Private vulnerability reporting** di tab Security repo ini (Security > Report a vulnerability). Sertakan langkah reproduksi, versi, dan dampaknya.

Kami berusaha membalas dalam 7 hari dan memperbaiki masalah yang terkonfirmasi sesegera mungkin, lalu mencantumkannya di [CHANGELOG](CHANGELOG.md).

## Versi yang didukung

Hanya rilis terbaru yang menerima perbaikan keamanan.
