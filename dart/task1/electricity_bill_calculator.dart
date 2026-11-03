/*
Electricity Bill Calculator
Write a program that asks the user to enter the number of electricity units consumed. Calculate and
display the total bill according to the following tiered pricing rules:
Pricing Breakdown:
If units consumed are greater than 300: The price per unit is 2.5.
If units are greater than 150 and less than or equal to 300: The price per unit is 2.0.
Otherwise (150 units or fewer): The price per unit is 1.5.
Output the total calculated bill with a descriptive summary message.
*/
import 'dart:io';

void main() {
  print('Enter the number of electricity units consumed: ');
  double units = double.parse(stdin.readLineSync()!);
  double unitPrice;
  if (units > 300){
    unitPrice = 2.5;
  } else if (units > 150 && units <= 300) {
    unitPrice = 2;
  } else {
    unitPrice = 1.5;
  }

  print('Total electricity bill is $units * $unitPrice = ${units * unitPrice}');
}
/*
OUTPUT:
**********
Enter the number of electricity units consumed: 
300
Total electricity bill is 300.0 * 2.0 = 600.0
*/