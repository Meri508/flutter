import 'dart:io';

void main() {
  int n = 5; // Number of lines
  int stars = 1;

  for (int i = 1; i <= n; i++) {
    // Print spaces for centering
    for (int j = 1; j <= n - i; j++) {
      stdout.write(' ');
    }
    // Print stars
    for (int k = 1; k <= stars; k++) {
      stdout.write('*');
    }
    print(''); 
    stars += 2; 
  }
}
