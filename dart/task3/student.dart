/*
1) Student Class 
Create a class called Student with the following properties: 
· name (String) | age (int) | grade (double) 
Requirements: 
1. Create a constructor to initialize these properties. 
2. Add a method called displayInfo() that prints all the student's information clearly.
3. Instantiate 3 Student objects and call displayInfo() for each. 
*/
class Student {
  String name;
  int age;
  double grade;

  Student(this.name, this.age, this.grade);

  void displayInfo() {
    print("Student Information:");
    print("Name: $name");
    print("Age: $age");
    print("Grade: ${grade.toStringAsFixed(1)}");
  }
}

void main() {
  Student student1 = Student("Ahmed", 20, 85.55);
  Student student2 = Student("Mohammed", 22, 90.01);
  Student student3 = Student("Ali", 21, 78.57);

  student1.displayInfo();
  student2.displayInfo();
  student3.displayInfo();
}
