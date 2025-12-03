import 'dart:io';

void main() {
  
  stdout.write("Enter your name: ");
  String name = stdin.readLineSync()!;

  
  stdout.write("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);

  printUserInfo(name, age);
}

void printUserInfo(String name, int age) {
  print("----- User Information -----");
  print("Name: $name");
  print("Age: $age");
}
