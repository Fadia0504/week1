# KB1185 - Aplikasi Mobile

Repository ini berisi tugas dan latihan mata kuliah **Aplikasi Mobile** menggunakan Dart dan Flutter.

## Pertemuan 1 - Dasar Dart

Materi pertemuan pertama: tipe data, null safety, variabel immutable, dan struktur data dasar Dart.

File latihan: `lib/week1.dart`

---

## 1. Explicit Typing

Penulisan tipe data secara langsung saat deklarasi variabel.

```dart
String menuName = 'Es Teh';
int menuStock = 20;
double menuPrice = 5000.0;
bool menuAvailable = true;
```

Nilai variabel masih bisa diubah selama tipenya sama.

```dart
menuStock = 25;          // valid
menuStock = 'dua puluh'; // error, tipe data harus int
```

---

## 2. Sound Null Safety

Null safety mencegah variabel yang tidak boleh kosong bernilai `null`.

### Non-Nullable

```dart
String itemName = 'Roti Cokelat';
itemName = null; // error
```

### Nullable

Gunakan tanda `?` jika variabel boleh bernilai `null`.

```dart
String? customerNote;

customerNote = 'Tanpa gula';
customerNote = null;
```

### Null-Aware Operator `??`

Memberi nilai pengganti jika variabel bernilai `null`.

```dart
String noteToPrint = customerNote ?? 'Tidak ada catatan khusus';
```

### Null-Aware Access `?.`

Menjalankan operasi hanya jika nilainya tidak `null`.

```dart
print(customerNote?.toUpperCase());
```

### Null Assertion Operator `!`

Digunakan ketika yakin variabel nullable tidak bernilai `null`.

```dart
print(customerNote!.toUpperCase());
```

Gunakan dengan hati-hati karena akan error jika nilainya ternyata `null`.

---

## 3. Final

`final` hanya bisa diberi nilai satu kali. Nilainya ditentukan saat **runtime**.

```dart
final String transactionId = 'TRX-2026-001';
final DateTime transactionTime = DateTime.now();

transactionId = 'TRX-2026-002'; // error
```

---

## 4. Const

`const` untuk nilai tetap yang sudah diketahui saat **compile-time**.

```dart
const double taxRate = 0.11;
const String appCurrency = 'IDR';

taxRate = 0.12; // error
```

---

## 5. Late

`late` untuk variabel non-nullable yang nilainya diberikan setelah deklarasi, tetapi sebelum digunakan.

```dart
late String receiptNumber;

receiptNumber = 'REC-${DateTime.now().millisecondsSinceEpoch}';

print(receiptNumber);
```

---

# Tipe Data Dart

## 6. String

Menyimpan teks.

```dart
String studentName = 'Fadia';
String studentAddress = 'Tangerang';

print(studentName.toUpperCase());
```

String interpolation:

```dart
int studentAge = 20;

print('Nama saya $studentName, umur saya $studentAge tahun');
```

## 7. int

Bilangan bulat tanpa desimal.

```dart
int totalItems = 7;
int rewardPoints = 1500;
```

## 8. double

Bilangan desimal.

```dart
double packageWeight = 3.75;
double productRating = 4.9;
```

## 9. num

Dapat menyimpan `int` maupun `double`.

```dart
num productValue = 15000;

productValue = 15500.50;
```

## 10. bool

Hanya bernilai `true` atau `false`.

```dart
bool isLoggedIn = true;
bool notificationEnabled = false;
```

## 11. List

Kumpulan data berurutan, indeks dimulai dari `0`.

```dart
List<String> productList = [
  'Botol Minum',
  'Tas Belanja',
  'Kotak Makan',
];

print(productList[0]);
productList.add('Sedotan Stainless');
```

## 12. Set

Kumpulan data unik (tanpa duplikat).

```dart
Set<String> categorySet = {
  'Makanan',
  'Minuman',
  'Makanan', // hanya disimpan satu kali
};
```

## 13. Map

Menyimpan data dalam pasangan **key dan value**.

```dart
Map<String, dynamic> studentData = {
  'nama': 'Fadia',
  'umur': 20,
  'aktif': true,
};

print(studentData['nama']);
print(studentData['umur']);
```

## 14. Object

Dapat menyimpan tipe apa pun, sehingga tipenya perlu diperiksa sebelum dipakai.

```dart
Object userData = 'Fadia';

userData = 25;
userData = true;

if (userData is String) {
  print(userData.toUpperCase());
}
```

## 15. Dynamic

Tipe data variabel dapat berubah-ubah. Gunakan secukupnya, misalnya untuk data JSON dengan tipe yang belum diketahui.

```dart
dynamic flexibleData = 'Dart';

flexibleData = 100;
flexibleData = true;
```

---

# Immutability & Lifecycle Variabel

| Keyword | Waktu Nilai Ditentukan | Keterangan |
|---------|------------------------|------------|
| `final` | Runtime | Diisi satu kali, contoh: ID transaksi, waktu sistem |
| `const` | Compile-time | Nilai tetap, contoh: tarif pajak, kode mata uang |
| `late`  | Sebelum pertama kali dipakai | Inisialisasi ditunda |

Konsep immutability menjadi dasar pengelolaan state dan widget tree pada Flutter.

---

# Immutable Class

Class dibuat immutable dengan `final` pada properties dan constructor `const`.

```dart
class CurrencyFormatter {
  final String symbol;

  const CurrencyFormatter({
    required this.symbol,
  });

  String format(double value) {
    return '$symbol ${value.toStringAsFixed(0)}';
  }
}
```

Property `symbol` tidak dapat diubah setelah object dibuat.

---

# Cara Menjalankan

```bash
dart run lib/week1.dart
```

Hasil `print()` akan tampil di Terminal.

---

# Tools yang Digunakan

- Flutter SDK
- Dart
- Visual Studio Code
- DartPad
- Git & GitHub

Validasi instalasi:

```bash
git --version
flutter --version
dart --version
flutter doctor
flutter emulators
flutter devices