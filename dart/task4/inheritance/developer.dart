import 'employee.dart';

class Developer extends Employee{
  String programmingLanguage;
  
  Developer({required String name, required double salary, required this.programmingLanguage}) 
      : super(name: name, salary: salary);
  
  @override
  void displayInfo() {
    super.displayInfo();
    print("Programming Language: $programmingLanguage");
  }

  @override
  void work() {
    print("Developer is writing code.");
  }
}