/*
Create a simple Dart program to manage an Employee using the basic OOP concepts covered in this session.
Scenario
A company needs a simple system to store employee information and calculate the employee's final salary
after receiving a bonus.
Requirements
Create a class called Employee.
The class should contain:
  • name → Employee's name
  • employeeId → Employee's ID
  • salary → Employee's basic salary
Constructor
Create a constructor that initializes all employee information.
Methods
  1. addBonus(double bonus)
Add the bonus amount to the employee's salary.
  2. calculateSalary()
Calculate and print the employee's final salary after the bonus.
  3. displayInfo()
Print the employee's:
  • Name
  • Employee ID
  • Basic Salary

Additional Requirement
If the final salary is 10,000 or more, print:
High Salary
Otherwise, print:
Regular Salary

Test Data

Use the following data:
Name: Ahmed Ali
Employee ID: 1025
Basic Salary: 8500
Bonus: 2000
Expected Output
Employee Name: Ahmed Ali
Employee ID: 1025
Basic Salary: 8500

Final Salary: 10500
High Salary
*/

void main() {
  Employee employee = Employee(
    name: "Ahmed Ali",
    employeeId: 1025,
    salary: 8500,
  );
  EmployeeDisplay display = EmployeeDisplay();
  display.displayInfo(employee);
  employee.addBonus(2000);
  display.displaySalary(employee);
}

class Employee {
  String name;
  int employeeId;
  double salary;

  Employee({
    required this.name,
    required this.employeeId,
    required this.salary,
  });

  void addBonus(double bonus) {
    salary += bonus;
  }

  double calculateSalary() {
    return salary;
  }
}

class EmployeeDisplay {
  void displayInfo(Employee employee) {
    print("Employee Name: ${employee.name}");
    print("Employee ID: ${employee.employeeId}");
    print("Basic Salary: ${employee.salary}");
  }

  void displaySalary(Employee employee) {
    double finalSalary = employee.calculateSalary();

    print("Final Salary: $finalSalary");

    if (finalSalary >= 10000) {
      print("High Salary");
    } else {
      print("Regular Salary");
    }
  }
}
