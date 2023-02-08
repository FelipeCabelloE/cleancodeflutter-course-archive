import 'dart:math';
import 'dart:io';

void main() {}

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

  int lives = 10;
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

  List<String> _replace_a_word(
      List<String> hidden_list, String word, String letter) {
    List<String> splitted_word = word.split("");

    for (int i = 0; i < word.length; i++) {
      if (splitted_word[i] == letter) {
        hidden_list[i] = "$letter ";
      } else {
        continue;
      }
    }
    return hidden_list;
  }

  void start_playing() {
    String random_word = this._word_picker();
    String hang_man_hidden = "_ " * random_word.length;
    print("The game starts! \n Pick a letter \n $hang_man_hidden");

    String? input = stdin.readLineSync();
  }
}
