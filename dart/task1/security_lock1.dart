/*
Password Attempts & Security Lockout
Write a program that asks the user to enter a password. The predefined correct password is:
The user has a maximum of 3 attempts.
If the password is correct, print: "Login successful" and terminate execution.
If the password is incorrect, allow the user to try again.
After 3 incorrect attempts, print: "Account locked".
*/
import 'dart:io';

void main() {
  print('Enter the password: ');
  String correctPassword = '123456';
  String password = stdin.readLineSync()!;
  for (int i = 1; i <= 3; i++) {
    if (password == correctPassword) {
      print('Login successful');
      break;
    } else if (i < 3) {
      print('Incorrect password, try again:');
      password = stdin.readLineSync()!;
    }
  }
  if (password != correctPassword) {
    print('Account locked');
  }
}
/*
OUTPUT:
Enter the password: 
1
Incorrect password, try again:
1
Incorrect password, try again:
1
Account locked
*/