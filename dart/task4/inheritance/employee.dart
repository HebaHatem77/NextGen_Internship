class Employee {
  String name;
  double salary;
  Employee({required this.name, required this.salary});
  
  void displayInfo() {
    print("Name: $name");
    print("Salary: $salary");
  }

  void work() {
    print("Employee is working.");
  }
}
