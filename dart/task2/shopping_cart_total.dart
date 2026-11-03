/*
1) Shopping Cart Total 
  Write a program that asks the user to enter the prices of 5 products and stores them in a list. 
  The program should: 
- Calculate the total price of all products. 
- Calculate the average price per product. 
- Print both results clearly on the screen. 
 */
import 'dart:io';

void main() {
  int input, total = 0;
  List<int> numbers = [];
  for (int i = 1; i <= 5; i++) {
    print("Enter the price for product $i: ");
    input = int.parse(stdin.readLineSync()!);
    numbers.add(input);
    total += input;
  }
  double average = total / numbers.length;
  print("Numbers list: $numbers");
  print("Total price: $total");
  print("Average price per product: $average");
}
