/*
Count Positive, Negative, and Zeros 
  Write a program that asks the user to enter 6 integers and stores them in a list. 
  The program should iterate through the collection and accurately count and print: 
Required Evaluation Metrics: 
- Number of positive numbers(>0) 
- Number of negative numbers (<0) 
- Number of zeros (== 0) 
Hint: Initialize three counters and iterate across the list using a for-in loop.
*/
import 'dart:io';

void main() {
  int input, countPositive = 0, countNegative = 0, countZero = 0;
  List<int> numbers = [];
  for (int i = 1; i <= 6; i++) {
    print("Enter the number $i: ");
    input = int.parse(stdin.readLineSync()!);
    numbers.add(input);
  }
  for (var number in numbers) {
    if (number > 0) {
      countPositive++;
    } else if (number < 0) {
      countNegative++;
    } else {
      countZero++;
    }
  }
  print("Numbers list: $numbers");
  print("Count of positive numbers: $countPositive");
  print("Count of negative numbers: $countNegative");
  print("Count of zero numbers: $countZero");
}
