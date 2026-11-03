/*
2) Rectangle 
Create a class called Rectangle with the properties: width and height
Create methods to: 
· Calculate the area: calculateArea() 
· Calculate the perimeter: calculatePerimeter() 
Area = width x height 
Perimeter = 2 x (width + height) 
Create an object, pass dimensions, and print the calculated results. 
*/
void main() {
  Rectangle rectangle = Rectangle(5.5, 10.7);

  double area = rectangle.calculateArea();
  double perimeter = rectangle.calculatePerimeter();

  print("Rectangle Information:");
  print("Width: ${rectangle.width}");
  print("Height: ${rectangle.height}");
  print("Area: ${area.toStringAsFixed(2)}");
  print("Perimeter: ${perimeter.toStringAsFixed(2)}");
}

class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double calculateArea() {
    return width * height;
  }

  double calculatePerimeter() {
    return 2 * (width + height);
  }
}