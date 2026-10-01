# Pertemuan 1 - Dasar Dart

## Ringkasan

1. **Explicit Typing**
   Eksperimen deklarasi variabel dengan tipe data yang ditulis secara langsung seperti `String` (teks), `int` (angka bulat), `double` (angka desimal), dan `bool` (benar/salah). Variabel masih dapat diubah nilainya selama nilai baru memiliki tipe data yang sama.

2. **Sound Null Safety (? dan ??)**
   Fitur Dart untuk mencegah penggunaan nilai `null` yang dapat menyebabkan error saat program berjalan. Variabel biasa bersifat *non-nullable*, sedangkan tanda `?` digunakan untuk membuat variabel yang boleh memiliki nilai `null`. Operator `??` digunakan untuk memberikan nilai alternatif ketika suatu variabel bernilai `null`.

3. **Final**
   `final` digunakan untuk membuat variabel yang hanya dapat diberikan nilai satu kali. Nilainya ditentukan ketika program berjalan (*runtime*), sehingga cocok digunakan untuk data yang baru diketahui saat aplikasi dijalankan, seperti waktu transaksi menggunakan `DateTime.now()`.

4. **Const**
   `const` digunakan untuk nilai yang sudah diketahui dan bersifat tetap sejak *compile-time*. Nilainya tidak dapat diubah setelah ditentukan. Pada praktik digunakan untuk data seperti nilai pajak dan metode pembayaran.

5. **Late Modifier**
   `late` digunakan ketika sebuah variabel non-nullable belum memiliki nilai saat dideklarasikan, tetapi nilainya akan diberikan sebelum digunakan. Pada praktik digunakan untuk menyimpan waktu masuk barang yang baru ditentukan kemudian.

6. **Tipe Data Koleksi (List, Set, Map)**
   - **List**: Menyimpan banyak data secara berurutan. Data dapat diakses menggunakan indeks yang dimulai dari `0`.
   - **Set**: Menyimpan kumpulan data yang unik. Nilai yang sama atau duplikat tidak disimpan lebih dari satu kali.
   - **Map**: Menyimpan data dalam bentuk pasangan *key-value*. Pada praktik digunakan untuk menyimpan jadwal karyawan berdasarkan hari.

7. **Object & Dynamic**
   Keduanya dapat digunakan untuk menyimpan data dengan tipe yang berbeda, tetapi memiliki perbedaan dalam pemeriksaan tipe.
   - `Object`: Lebih aman karena operasi khusus terhadap data perlu dilakukan setelah tipe data diperiksa, misalnya menggunakan `is String`.
   - `dynamic`: Lebih fleksibel karena tipe data dapat berubah-ubah, tetapi pemeriksaan tipe lebih longgar sehingga kesalahan dapat muncul saat program dijalankan. Penggunaannya sebaiknya dibatasi ketika tipe data sebenarnya sudah diketahui.