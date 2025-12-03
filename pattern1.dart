void main() {
  int n = 5; // Number of lines

  for (int i = 1; i <= n; i++) {
    // Print i stars on the i-th line
    for (int j = 1; j <= i; j++) {
      print('*');
    }
    print(''); // Move to the next line
  }
}
