/*
5) Simple ATM Simulation 
  Write a program that simulates a simple ATM machine starting with an initial balance of 5000. 
  The user should repeatedly choose an operation: 
1- Check balance: Displays current balance.
2- Deposit money: Adds the entered amount to balance. 
3- Withdraw money: If amount> balance, print "Insufficient balance" otherwise subtract amount
4- Exit: Terminates the program 
Use a loop so the user can perform multiple transactions until choosing Exit. 
Hint: Use a switch-case statement inside a while loop to handle operations cleanly.
*/
import 'dart:io';

void main() {
  int balance = 5000;
  bool isExiting = false;
  while (!isExiting) {
    print('***************************');
    print('Please choose an operation:');
    print('***************************');
    print('1. Check Balance');
    print('2. Deposit');
    print('3. Withdraw');
    print('4. Exit');
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        print('Your current balance is: $balance');
        break;
      case 2:
        print('Enter the amount to deposit:');
        int depositMoney = int.parse(stdin.readLineSync()!);
        balance += depositMoney;
        print('Your current balance: $balance');
        break;
      case 3:
        print('Enter the amount to withdraw:');
        int withdrawMoney = int.parse(stdin.readLineSync()!);
        if (withdrawMoney <= balance) {
          balance -= withdrawMoney;
          print('Your current balance: $balance');
        } else {
          print('Insufficient balance: $balance');
        }
        break;
      case 4:
        isExiting = true;
        print('Exiting the program.');
        break;
      default:
        print('Invalid choice.');
    }
  }
}
