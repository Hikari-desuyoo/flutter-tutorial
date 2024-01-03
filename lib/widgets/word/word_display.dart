import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class WordDisplay extends StatelessWidget {
  const WordDisplay({
    super.key,
    required this.word,
    required this.color,
  });

  final WordPair word;
  final Color color;

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
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text('${word.first} ${word.second}',
            style: const TextStyle(color: Colors.white, fontSize: 100.0)),
      ),
    );
  }
}
