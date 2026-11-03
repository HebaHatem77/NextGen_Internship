/*
Delivery Management System
Duration: 25 Minutes
Problem Statement
You are developing a simple delivery management system that handles food orders and product orders. Each
delivery has its own information and behavior.
Requirements
  1. Create an Abstract Class: Delivery
The class should contain:
  • orderId: The order ID.
  • price: The order price.
Create a constructor to initialize these attributes.
Create the following methods:
  • displayInfo(): Prints the order ID and price.
  • calculateDeliveryFee(): Returns a delivery fee equal to 10% of the order price.
  • deliver(): An abstract method.

  2. Create Two Child Classes
Create two classes that inherit from Delivery:

A. FoodDelivery
  • Override deliver() to print: "Food order [orderId] is being delivered."
  • Create a method called checkFoodOrder() that prints: "Food order is ready."

B. ProductDelivery
  • Override deliver() to print: "Product order [orderId] is being delivered."
  • Create a method called checkProductOrder() that prints: "Product order is packed and ready."

  3. Test Your Code
Inside main():
1. Create a food delivery with order ID 101 and price 250.
2. Create a product delivery with order ID 202 and price 800.
3. Display the information of both orders.
4. Calculate and print the delivery fee for each order.
5. Call deliver() for both objects.
6. Call the appropriate checking method for each delivery.

Expected Output Example
=== Food Delivery ===
Order ID: 101
Price: 250.0 EGP
Delivery Fee: 25.0 EGP
Food order 101 is being delivered.
Food order is ready.

=== Product Delivery ===
Order ID: 202
Price: 800.0 EGP
Delivery Fee: 80.0 EGP
Product order 202 is being delivered.
Product order is packed and ready.

Notes
  • Use Dart.
  • Use extends for inheritance.
  • Use @override when overriding methods.
  • Use super to initialize the parent class.
*/

import 'foodDelivery.dart';
import 'productDelivery.dart';

void main() {
  print('=== Food Delivery ===');
  FoodDelivery foodDelivery = FoodDelivery(orderId: 101, price: 250);
  foodDelivery.displayInfo();
  print('Delivery Fee: ${foodDelivery.calculateDeliveryFee()} EGP');
  foodDelivery.deliver();
  foodDelivery.checkFoodOrder();

  print('\n=== Product Delivery ===');
  ProductDelivery productDelivery = ProductDelivery(orderId: 202, price: 800);
  productDelivery.displayInfo();
  print('Delivery Fee: ${productDelivery.calculateDeliveryFee()} EGP');
  productDelivery.deliver();
  productDelivery.checkProductOrder();
}
