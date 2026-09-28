void main() {
  String menuName = 'Es Teh';
  int menuStock = 20;
  double menuPrice = 5000.0;
  bool menuAvailable = true;

  print(menuName);
  print(menuStock);
  print(menuPrice);
  print(menuAvailable);

  menuStock = 25;

  print('Stok terbaru: $menuStock');
}