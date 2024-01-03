import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/main.dart';
import 'package:flutter_tutorial/widgets/word/next_word_button.dart';
import 'package:flutter_tutorial/widgets/word/word_display.dart';

class WordInteractive extends StatelessWidget {
  const WordInteractive({
    super.key,
    required this.appState,
    required this.word,
    required this.color,
  });

  final AppState appState;
  final WordPair word;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
        child: Row(
          children: [
            NextWordButton(appState: appState),
            WordDisplay(word: word, color: color),
          ],
        ),
      ),
    );
  }
}
