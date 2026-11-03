import 'employee.dart';

class Designer extends Employee{
  String designTool;
  
  Designer({required String name, required double salary, required this.designTool}) 
      : super(name: name, salary: salary);
  
  @override
  void displayInfo() {
    super.displayInfo();
    print("Design Tool: $designTool");
  }

  @override
  void work() {
    print("Designer is creating designs.");
  }
}