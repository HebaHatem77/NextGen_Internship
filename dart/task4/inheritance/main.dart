/*
2) Inheritance - Employees 
Create a base class called Employee with properties: name and salary, and a method: displayInfo() 
Create two subclasses that inherit from Employee: 
- Developer adds an additional role-specific property (e.g. programmingLanguage ). 
- Designer → adds an additional role-specific property (e.g. designTool). 
Create objects from both derived classes and display their complete information. 
-------------------------------------------------------------------------
3) Method Overriding 
Extending the Employee hierarchy from the previous question: 
1. Create a method called work() inside the base Employee class. 
2. Override this method in both Developer and Designer to print specific messages: 
- Developer - "Developer is writing code." 
- Designer"Designer is creating designs." 
Instantiate both objects and invoke work() to observe the overridden behavior.
*/
import 'designer.dart';
import 'developer.dart';

void main() {
  Developer dev = Developer(
    name: "Heba",
    salary: 80000,
    programmingLanguage: "Dart",
  );
  Designer designer = Designer(
    name: "Mariam",
    salary: 70000,
    designTool: "Figma",
  );

  print("Developer Information:");
  dev.displayInfo();

  print("\nDesigner Information:");
  designer.displayInfo();

  print("\nDeveloper Work:");
  dev.work();

  print("\nDesigner Work:");
  designer.work();
}
