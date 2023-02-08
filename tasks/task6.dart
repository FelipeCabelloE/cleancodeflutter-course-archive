import 'dart:math';
import 'dart:io';

void main() {
  HangManGame new_game = HangManGame();

  new_game.start_playing();
}

class HangManGame {
  final List<String> game_words = [
    "double",
    "tree",
    "magic",
    "difficult",
    "trope",
    "touch",
    "lost",
    "hagnman",
    "witcher",
    "guild"
  ];

  // picks a random word
  String _word_picker() {
    int random_index = Random().nextInt(this.game_words.length);
    String random_word = game_words[random_index];
    return random_word;
  }

  bool _guess_a_word(
      {required String random_word, required String input_letter}) {
    if (random_word.contains(input_letter)) {
      return true;
    } else {
      return false;
    }
  }

  List<String> _replace_a_letter(
      List<String> hidden_list, String word, String letter) {
    List<String> splitted_word = word.split("");
    List<String> copy_list = hidden_list;

    for (int i = 0; i < word.length; i++) {
      if (splitted_word[i] == letter) {
        copy_list[i] = "$letter ";
      } else {
        continue;
      }
    }
    return copy_list;
  }

  void start_playing() {
    int lives = 10;
    String random_word = this._word_picker();
    List<String> hang_man_hidden = random_word.split("");
    List<String> word_with_spaces = hang_man_hidden.map((e) => "$e ").toList();

    hang_man_hidden.fillRange(0, random_word.length, "_ ");
    print("The game starts! \n ${hang_man_hidden.join()}");
    print("You have $lives lives!");

    while (true) {
      if (lives == 0) {
        print("You have $lives lives \n GAME OVER");
        break;
      } else if (word_with_spaces.join() == hang_man_hidden.join()) {
        print("You won!!");
        break;
      } else {
        print("Pick a letter:");
        String? input = stdin.readLineSync();
        if (_guess_a_word(random_word: random_word, input_letter: input!)) {
          print("Yess!! \n You guessed correctly");
          hang_man_hidden =
              _replace_a_letter(hang_man_hidden, random_word, input);
          print("Your word is now: \n ${hang_man_hidden.join()}");
          continue;
        } else {
          lives--;
          print(
              "Sorry, you guessed wrong \n you have lost a life \n you have $lives lives left");

          continue;
        }
      }
    }
  }
}
