import 'package:flutter/material.dart';
import 'package:flutter_tutorial/main.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({super.key, required this.appState});

  final AppState appState;

  @override
  Widget build(BuildContext context) {
    IconData icon;
    if (appState.favorites.contains(appState.word)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
      child: ElevatedButton(
        onPressed: () {
          appState.toggleFavorite();
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(appState.color)
        ),
        child: Icon(icon,
          color: Colors.white
        ), // Use Icon as the child of the button
      ),
    );
  }
}
