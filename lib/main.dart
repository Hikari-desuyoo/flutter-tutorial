import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/support/with_changed_h_s_v.dart';
import 'package:flutter_tutorial/widgets/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 60, 255, 148)),
        ),
        home: const HomePage(),
      ),
    );
  }
}

class AppState extends ChangeNotifier {
  var word = WordPair.random();
  var color = const Color.fromRGBO(202, 44, 44, 1);

  void getNext() {
    word = WordPair.random();
    color = withChangedHSV(color, h: 10);
    notifyListeners();
  }

  var favorites = <WordPair>[];

  void toggleFavorite() {
    if (favorites.contains(word)) {
      favorites.remove(word);
    } else {
      favorites.add(word);
    }
    notifyListeners();
  }

}
