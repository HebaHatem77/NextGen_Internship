/*
List Aggregation: Sum of Elements 
Write a program that fulfills the following specifications: 
1. Asks the user to input 5 integers and stores them in a list. 
2. Calculates and prints the cumulative sum of all the numbers in the list. 
Hint: Loop through the list, sum the elements into an accumulator variable, and print the result. 
*/
import 'dart:io';

void main() {
  int input, sum = 0;
  List<int> numbers = [];
  for (int i = 1; i <= 5; i++) {
    print("Enter the number $i: ");
    input = int.parse(stdin.readLineSync()!);
    numbers.add(input);
    sum += input;
  }
  print("Numbers list: $numbers");
  print("Result: $sum");
}
