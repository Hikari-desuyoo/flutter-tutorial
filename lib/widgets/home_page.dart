import 'package:flutter/material.dart';
import 'package:flutter_tutorial/main.dart';
import 'package:flutter_tutorial/support/with_changed_h_s_v.dart';
import 'package:flutter_tutorial/widgets/word/word_interactive.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();
    var word = appState.word;
    var color = appState.color;

    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomPaint(
          painter: BackgroundPainter(color: color),
          child: WordInteractive(appState: appState, word: word, color: color)),
    );
  }
}

class BackgroundPainter extends CustomPainter {
  final Color color;

  BackgroundPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Gradient gradient = RadialGradient(
        center: Alignment.centerLeft,
        colors: [withChangedHSV(color, v: -0.5), withChangedHSV(color, h: 100, v: -0.5)],
        focalRadius: 20,
        radius: 1.7);

    var paint = Paint();

    paint.shader =
        gradient.createShader(Rect.fromLTRB(0, 0, size.width, size.height));

    canvas.drawRect(
      Rect.fromLTRB(0, 0, size.width, size.height),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
