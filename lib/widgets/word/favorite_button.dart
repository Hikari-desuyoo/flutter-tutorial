import 'package:flutter/material.dart';
import 'package:flutter_tutorial/main.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    super.key,
    required this.appState
  });

  final AppState appState;

  @override
  Widget build(BuildContext context) {
    IconData icon;
    if (appState.favorites.contains(appState.word)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return ElevatedButton.icon(
      onPressed: () {
        appState.toggleFavorite();
      },
      icon: Icon(icon),
      label: const Text('Like'),
    );
  }
}
