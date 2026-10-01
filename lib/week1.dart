void main(){
  //deklarasi tipe data dasar
  String drinkName = "Cappuccino";
  int stock = 15;
  double price = 25000.0;
  bool isAvailable = true;

  stock = 10;
  print(drinkName);
  print(stock);
  print(price);
  print(isAvailable);

  //non nullable
  String itemName = "Latte";
  print(itemName);

  //nullable(?)
  String? customerNote;
  customerNote = "Pls make it extra hot";
  customerNote = null;
  print(customerNote);

  //null aware operator(??)
  String noteToPrint = customerNote ?? 'Tidak ada catatatan khusus';
  print(noteToPrint);

  //final dgn tipe eksplisit
  final String finalDrinkName = "Americano";
  final DateTime waktuPesan = DateTime.now();
  print(finalDrinkName);
  print(waktuPesan);

  //const dgn tipe eksplisit
  const double pajak = 0.1;
  const String bayar = "Tunai";
  print(pajak);
  print(bayar);

  //late modifier
  late DateTime masukBarang;
  void setMasukBarang() {
    masukBarang = DateTime.now();
    print(masukBarang);
  }

  //Type data lainnya
  //List
  List<String> drinkList = ["Cappuccino", "Latte", "Americano"];
  print(drinkList[0]);
  print(drinkList[1]);

  //Set
  Set<String> drinkSet = {"Cappuccino", "Latte", "Americano"};
  print(drinkSet);

  Set<String> drinkSet2 = {};
  drinkSet2.add("Espresso");
  drinkSet2.add("Cappuccino");
  drinkSet2.add("Latte");

  //Map
  Map<String, String> jadwalKaryawan = {
    'Senin': 'Fadia',
    'Selasa': 'Budi',
    'Rabu': 'Siti'
  };
  print(jadwalKaryawan['Senin']);
  print(jadwalKaryawan['Selasa']);
  print(jadwalKaryawan['Rabu']);

  //Object
  Object drinkObject = "Cappuccino";
  drinkObject = 25000;
  drinkObject = true;

  if (drinkObject is String) {
    print(drinkObject.toUpperCase());
  }

  //dynamic
  dynamic drinkData = "Cappuccino";
  drinkData = 25000;
  drinkData = true;
  print(drinkData);

  dynamic nama = "John";
  print(nama.toUpperCase());
}