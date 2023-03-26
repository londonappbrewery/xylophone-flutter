import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playmusic1(int fileno) {
    Audio audio = Audio.load('assets/note$fileno.wav');
    audio.play();
  }

  Expanded builtKey(Color color, int keyNo) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playmusic1(keyNo);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              builtKey(Colors.red, 1),
              builtKey(Colors.orange, 2),
              builtKey(Colors.yellow, 3),
              builtKey(Colors.green, 4),
              builtKey(Colors.teal, 5),
              builtKey(Colors.cyan, 6),
              builtKey(Colors.blue, 7),
            ],
          ),
        ),
      ),
    );
  }
}
