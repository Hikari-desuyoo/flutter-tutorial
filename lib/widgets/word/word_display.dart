import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/main.dart';

class WordDisplay extends StatelessWidget {
  const WordDisplay({
    super.key,
    required this.appState
  });

  final AppState appState;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0.0), // Set radius for top left corner
          topRight: Radius.circular(50.0), // Set radius for top right corner
          bottomLeft: Radius.circular(0.0), // Set radius for bottom left corner
          bottomRight:
              Radius.circular(50.0), // Set radius for bottom right corner
        ),
      ),
      color: appState.color,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text('${appState.word.first} ${appState.word.second}',
            style: const TextStyle(color: Colors.white, fontSize: 100.0)),
      ),
    );
  }
}
