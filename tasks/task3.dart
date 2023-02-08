import 'dart:math';
import 'dart:io';

void main() {
  var rng = Random().nextInt(5);
  print("Guess the number!!");
  int num_tries = 0;
  while (true) {
    String? input = stdin.readLineSync();
    int? int_input = int.tryParse(input!);

    if (int_input == rng) {
      print("Congratulations!!.\n $rng is the number we were looking for.");
      break;
    } else {
      print("Sorry. That was not the number we were looking for.");
      num_tries++;
      print("Number of times tried: $num_tries");

      continue;
    }
  }
}
