import "dart:io";

int factorial(int? n) {
  return n == 1 ? 1 : n! * factorial(n - 1);
}

void main() {
  print("Please enter a numer, any number.");
  String? input = stdin.readLineSync();
  final int? int_input = int.tryParse(input!);
  int? result = factorial(int_input);

  print("Factorial of $input");
  print(result);
}
