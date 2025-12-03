import 'dart:io';

void main() {
  int n = 5; // Total number of lines

  for (int i = n; i >= 1; i--) {
    for (int j = 1; j <= i; j++) {
      stdout.write('*'); // Print stars on the same line
    }
    print(''); // Move to the next line
  }
}
