/*
4) Car 
Create a class called Car with properties: brand, model, year, and speed. 
Add the following methods: 
· accelerate() increases the speed by 10. 
· brake() decreases the speed by 10. 
· displayInfo() displays complete car details and current speed. 
Condition: Ensure the speed cannot become negative when braking (minimum is 0). 
Hint: Instantiate a Car object and simulate accelerating and braking. 
*/
void main() {
  Car car = Car(brand: "Nissan", model: "Sunny", year: 2022, speed: 5);

  car.displayInfo();

  car.accelerate();
  car.accelerate();

  car.brake();
  car.brake();
  car.brake(); // Minimum speed reached
  car.displayInfo();
}
class Car {
  String brand;
  String model;
  int year;
  int speed;

  Car({required this.brand, required this.model, required this.year, required this.speed});

  void accelerate() {
    speed += 10;
    print("Accelerated: Current speed is $speed km/h");
  }

  void brake() {
    if (speed >= 10) {
      speed -= 10;
      print("Braked: Current speed is $speed km/h");
    } else {
      speed = 0;
      print("Braked: Minimum speed reached. Current speed is $speed km/h");
    }
  }

  void displayInfo() {
    print("Car Information:");
    print("Brand: $brand");
    print("Model: $model");
    print("Year: $year");
    print("Current Speed: $speed km/h");
  }
}