/*
A delivery company wants a small program to process an order.
The program should:
1. Store:
    o Customer balance
    o Order price
    o Delivery fee
    o Number of items
2. Calculate the final order cost.
3. Check if the customer can afford the order:
    o If the balance is enough → print Order confirmed
    o Otherwise → print Payment failed
4. The order can have one of these statuses:
    o pending
    o shipped
    o delivered

Use switch to print a suitable message for the current status.
5. Use a loop to simulate delivering the items:
Delivering item 1
Delivering item 2
...
6. At the end, print the final order cost.
Test Data
Balance: 1000
Order price: 750
Delivery fee: 50
Number of items: 4
Status: shipped
Challenge
Try to build the program from scratch without copying a previous example.
Use only the concepts you've learned in Session 1.
*/

import 'dart:io';

void main() {
  double balance, price, fee, totalCost;
  int itemsNumber;
  String status = 'pending';
  print('Enter your balance:');
  balance = double.parse(stdin.readLineSync()!);
  print('Enter the order price:');
  price = double.parse(stdin.readLineSync()!);
  print('Enter the delivery fee:');
  fee = double.parse(stdin.readLineSync()!);
  print('Enter the number of items:');
  itemsNumber = int.parse(stdin.readLineSync()!);

  totalCost = price + fee;

  if (balance >= totalCost) {
    print('Order confirmed.');
  } else {
    print('Payment failed.');
  }

  switch (status) {
    case 'pending':
      print('Your order is pending.');
      break;
    case 'shipped':
      print('Your order is shipped.');
      break;
    case 'delivered':
      print('Your order is delivered.');
      break;
    default:
      print('Invalid status.');
  }

  for (int i = 1; i <= itemsNumber; i++) {
    print('Delivering item $i');
  }

  print('The final order cost is: $totalCost');
}
