void main() {
  // EXPLICIT TYPING

  String drinkName = 'Matcha Latte';
  int drinkStock = 12;
  double drinkPrice = 22000.0;
  bool drinkAvailable = true;

  print('Nama minuman: $drinkName');
  print('Stok: $drinkStock');
  print('Harga: $drinkPrice');
  print('Tersedia: $drinkAvailable');

  // Nilai masih dapat diubah
  drinkStock = 18;

  print('Stok setelah diperbarui: $drinkStock');


  // SOUND NULL SAFETY

  String itemName = 'Roti Cokelat';

  // Tidak boleh diisi null karena String bersifat non-nullable
  print('Item: $itemName');

  // Nullable menggunakan tanda ?
  String? customerNote;

  customerNote = 'Tanpa gula';
  print('Catatan: $customerNote');

  // Variabel nullable boleh berisi null
  customerNote = null;

  // Null-aware operator (??)
  String noteToPrint =
      customerNote ?? 'Tidak ada catatan khusus';

  print('Catatan pelanggan: $noteToPrint');

  // Null-aware access (?)
  print(customerNote?.toUpperCase());


  // NULL ASSERTION OPERATOR (!)

  String? customerMessage = 'Pesanan diproses';

  // ! digunakan ketika kita yakin nilainya tidak null
  print(customerMessage!.toUpperCase());


  // FINAL DENGAN TIPE EKSPLISIT

  final String transactionId = 'TRX-2026-001';
  final DateTime transactionTime = DateTime.now();

  print('ID transaksi: $transactionId');
  print('Waktu transaksi: $transactionTime');

  // Nilai final tidak dapat diubah lagi
  // transactionId = 'TRX-2026-002'; // ERROR


  // CONST DENGAN TIPE EKSPLISIT

  const double taxRate = 0.11;
  const String appCurrency = 'IDR';

  print('Pajak: $taxRate');
  print('Mata uang: $appCurrency');

  // Nilai const tidak dapat diubah
  // taxRate = 0.12; // ERROR


  // LATE MODIFIER

  late String receiptNumber;

  receiptNumber =
      'REC-${DateTime.now().millisecondsSinceEpoch}';

  print('Nomor nota: $receiptNumber');


  // STRING

  String studentName = 'Fadia';
  String studentAddress = 'Tangerang';

  print(studentName.toUpperCase());
  print(studentAddress);

  // String interpolation
  int studentAge = 20;

  print(
    'Nama saya $studentName, umur saya $studentAge tahun',
  );


  // INT

  int totalItems = 7;
  int rewardPoints = 1500;

  print('Jumlah barang: $totalItems');
  print('Poin: $rewardPoints');


  // DOUBLE

  double packageWeight = 3.75;
  double productRating = 4.9;

  print('Berat paket: $packageWeight kg');
  print('Rating produk: $productRating');


  // NUM

  num productValue = 15000;
  print('Nilai produk: $productValue');

  productValue = 15500.50;
  print('Nilai setelah berubah: $productValue');


  // BOOL

  bool isLoggedIn = true;
  bool notificationEnabled = false;

  print('Sudah login: $isLoggedIn');
  print('Notifikasi aktif: $notificationEnabled');


  // LIST

  List<String> productList = [
    'Botol Minum',
    'Tas Belanja',
    'Kotak Makan',
  ];

  print(productList[0]);
  print(productList[1]);

  // Menambahkan data
  productList.add('Sedotan Stainless');

  print('Daftar produk: $productList');


  // SET

  Set<String> categorySet = {
    'Makanan',
    'Minuman',
    'Makanan',
  };

  print('Kategori: $categorySet');

  // Makanan hanya disimpan satu kali
  categorySet.add('Snack');

  print('Kategori setelah ditambah: $categorySet');


  // MAP

  Map<String, dynamic> studentData = {
    'nama': 'Fadia',
    'umur': 20,
    'aktif': true,
  };

  print('Nama mahasiswa: ${studentData['nama']}');
  print('Umur: ${studentData['umur']}');
  print('Status aktif: ${studentData['aktif']}');


  // OBJECT

  Object userData = 'Fadia';
  if (userData is String) {
    print(userData.toUpperCase());
  }

  userData = 25;

  if (userData is int) {
    print('Data berupa angka: $userData');
  }


}