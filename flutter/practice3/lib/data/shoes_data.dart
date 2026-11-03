class Shoes {
  final String name;
  final String imagePath;
  final double price;

  const Shoes({
    required this.name,
    required this.imagePath,
    required this.price,
  });
}

const List<Shoes> shoes = [
  Shoes(
    name: 'Nike Jordan',
    imagePath: 'assets/images/nike_jordan.png',
    price: 493.00,
  ),
  Shoes(
    name: 'Nike Air Max',
    imagePath: 'assets/images/nike_air_max.png',
    price: 897.99,
  ),
];

const List<Shoes> newArrivals = [
  Shoes(
    name: 'Nike Air Jordan',
    imagePath: 'assets/images/nike_air_jordan.png',
    price: 849.69,
  ),
];
