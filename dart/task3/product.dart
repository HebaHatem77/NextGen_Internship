/*
5) Product 
Create a class called Product with properties: name, price, and quantity 
Workflow: 
1. Add a method called calculateTotal() that returns: price x quantity. 
2. Create 3 product instances with different values. 
3. Print the total inventory cost/price for each product. 
*/
void main() {
  Product product1 = Product(name: "Laptop", price: 10000);
  Product product2 = Product(name: "Smartphone", price: 5000, quantity: 2);
  Product product3 = Product(name: "Headphones", price: 1000, quantity: 5);

  print("Total cost for ${product1.name}: ${product1.calculateTotal()}");
  print("Total cost for ${product2.name}: ${product2.calculateTotal()}");
  print("Total cost for ${product3.name}: ${product3.calculateTotal()}");
}

class Product {
  String name;
  double price;
  int quantity;

  Product({required this.name, required this.price, this.quantity = 1});

  double calculateTotal() {
    return price * quantity;
  }
}
