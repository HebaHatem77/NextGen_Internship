class Product {
  final String name;
  final int price;
  final String image;
  final String desc;

  Product(this.name, this.price, this.image, this.desc);
}

List<Product> products = [
  Product(
    'Arabica',
    18,
    'assets/images/arabica.png',
    'Lorem ipsum dolor sit amet cons ',
  ),
  Product(
    'Robusta',
    20,
    'assets/images/robusta.png',
    'Lorem ipsum dolor sit amet cons ',
  ),
  Product(
    'Excelsa',
    15,
    'assets/images/excelsa.png',
    'Lorem ipsum dolor sit amet cons ',
  ),
  Product(
    'Liberica',
    12,
    'assets/images/liberica.png',
    'Lorem ipsum dolor sit amet cons ',
  ),
];
