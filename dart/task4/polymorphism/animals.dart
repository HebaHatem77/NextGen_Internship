abstract class Animal {
  void makeSound();
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog sound: Woof! Woof!");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Cat sound: Meow! Meow!");
  }
}

class Cow extends Animal {
  @override
  void makeSound() {
    print("Cow sound: Moo! Moo!");
  }
}
