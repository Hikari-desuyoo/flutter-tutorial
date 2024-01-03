import 'package:flutter/material.dart';
import 'package:flutter_tutorial/main.dart';

class NextWordButton extends StatelessWidget {
  const NextWordButton({
    super.key,
    required this.appState,
  });

  final AppState appState;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        appState.getNext();
      },
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0), // Set radius for top left corner
            topRight: Radius.circular(0.0), // Set radius for top right corner
            bottomLeft:
                Radius.circular(50.0), // Set radius for bottom left corner
            bottomRight:
                Radius.circular(0.0), // Set radius for bottom right corner
          ), // Set your desired border radius
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child:
            Text('→', style: TextStyle(color: Colors.black, fontSize: 100.0)),
      ),
    );
  }
}
