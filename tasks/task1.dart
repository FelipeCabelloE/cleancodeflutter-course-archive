import "dart:io";

void main() {
  print("Please enter a variable name:");
  String? inputText = stdin.readLineSync();
  // There seems to be two (2) ways of doing things.  
  print("Your variable name is \"$inputText\"");
  stdout.write(inputText);
}
