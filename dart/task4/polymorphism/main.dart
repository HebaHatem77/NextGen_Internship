/*
4) Polymorphism - Animal Sounds 
Create a base class called Animal with a method makeSound(). 
Create three derived classes overriding makeSound() with distinct sounds: 
- Dog prints Dog sound (e.g. "Woof! Woof!") 
- Cat prints Cat sound (e.g. "Meow! Meow!") 
- Cow prints Cow sound (e.g. "Moo! Moo!") 

Polymorphic Execution: 
1. Create a polymorphic list: List<Animal> animals = [Dog(0),cat(,Cow()1: 
2. Loop through the list and invoke makeSound on each element to execute the appropriate version dynamically. 
*/

import 'animals.dart';

void main() {
  List<Animal> animals = [Dog(), Cat(), Cow()];

  for (var animal in animals) {
    animal.makeSound();
  }
}
