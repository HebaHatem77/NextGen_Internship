/*
  Student Information
  Write a program that asks the user to enter their name, age, and university name, then prints all the
  information in a clear format.
*/
import 'dart:io';

void main() {
  print('Enter your name: ');
  String name = stdin.readLineSync()!;
  print('Enter your age: ');
  double age = double.parse(stdin.readLineSync()!);
  print('Enter your university name: ');
  String university = stdin.readLineSync()!;
  print(''' Student Information:
*******************************
    Student Name: $name 
    Student Age: $age
    University Name: $university''');
}
