/*
Task — Cafe Drinks
Create a simple Dart program for a café.
The café has a list of available drinks and a map that stores the price of each drink.
Requirements
  1. Create a List containing the available drinks.
  2. Create a Map containing each drink and its price.
  3. Create a function called showDrinks() that prints all available drinks.
  4. Create a function called getPrice() that takes a drink name and returns its price.
  5. Use Null Safety because the drink name may be null.
  6. If the drink exists, print its price.
  7. If the drink does not exist, print:
    Drink not found
    
Test Data
Available drinks:
  • Coffee
  • Tea
  • Juice
  • Latte
Prices:
  • Coffee → 50
  • Tea → 30
  • Juice → 40
  • Latte → 70
Test the program with:
Coffee
*/
import 'dart:io';

void main() {
  List drinks = ['coffee', 'tea', 'juice', 'latte'];
  Map<String, int> drinkPrices = {
    'coffee': 50,
    'tea': 30,
    'juice': 40,
    'latte': 70,
  };
  showDrinks(drinks);
  print("Please select a drink from the list:");
  String? selectedDrink = stdin.readLineSync()!;
  getPrice(selectedDrink, drinkPrices);
}

void showDrinks(List drinks) {
  print("Available drinks:");
  for (var drink in drinks) {
    print(drink);
  }
}

void getPrice(String? selectedDrink, Map<String, int> drinkPrices) {
  bool found = false;
  for (var drink in drinkPrices.keys) {
    if (selectedDrink == drink) {
      print("$selectedDrink = ${drinkPrices[drink]} EGP");
      found = true;
    }
  }
  if (!found) {
    print("Drink not found.");
  }
}
