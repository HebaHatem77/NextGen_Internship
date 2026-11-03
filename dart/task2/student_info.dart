/*
3) Student Information (Map) 
  Create a Map that stores information about a student. 
  The Map should contain: 
- name (String) | age (int) | grade (double/int) | isPassed (bool) 
  Print all the student's information in a clear format. 
  Then, update the student's grade and print the updated map information 
*/
void main() {
  Map<String, dynamic> student = {
    'name': 'Heba Hatem',
    'age': 21,
    'grade': 90,
    'isPassed': true,
  };
  print('Student information:');
  for (var key in student.keys) {
    print('$key: ${student[key]}');
  }
  student['grade'] = 95; // Update the student's grade
  print('Updated map information:');
  for (var key in student.keys) {
    print('$key: ${student[key]}');
  }
}
