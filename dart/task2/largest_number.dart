/*
2) Find the Largest Number 
  Write a function called findLargest that receives a list of integers and returns the largest number. 
  In the main program: 
- Ask the user to enter 5 integers and store them in a list. 
- Call the findLargest function passing the list. 
- Print the returned largest number. 
- Hint: Use a loop inside the function to compare elements. 
*/
import 'dart:io';

void main() {
  int input;
  List<int> numbers = [];
  for (int i = 1; i <= 5; i++) {
    print("Enter the number $i: ");
    input = int.parse(stdin.readLineSync()!);
    numbers.add(input);
  }
  print("Numbers list: $numbers");
  print("Largest number: ${findLargest(numbers)}");
}

/// Function to receive a list of integers and return the largest number
int findLargest(List<int> numbers) {
  int largest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  return largest;
}
