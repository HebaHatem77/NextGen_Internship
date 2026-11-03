import 'dart:io';

void main() {
  String correctPassword = '123456';
  print('Enter the password: ');
  String password = stdin.readLineSync()!;
  int attempts = 1;
  while (password != correctPassword && attempts < 3) {
    print('Incorrect password, try again:');
    password = stdin.readLineSync()!;
    attempts++;
  }
  if (password != correctPassword) {
    print('Account locked');
  }
  else {
    print('Login successful');
  }
}
