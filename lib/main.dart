import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  Audio audio = Audio.load('assets/note1.wav');
                  audio.play();
                },
                child: Text('Click Me'),
              ),
              TextButton(
                onPressed: () {
                  Audio audio = Audio.load('assets/note2.wav');
                  audio.play();
                },
                child: Text('Click Me'),
              ),
              TextButton(
                onPressed: () {
                  Audio audio = Audio.load('assets/note3.wav');
                  audio.play();
                },
                child: Text('Click Me'),
              ),
              TextButton(
                onPressed: () {
                  Audio audio = Audio.load('assets/note4.wav');
                  audio.play();
                },
                child: Text('Click Me'),
              ),
              TextButton(
                onPressed: () {
                  Audio audio = Audio.load('assets/note5.wav');
                  audio.play();
                },
                child: Text('Click Me'),
              ),
              TextButton(
                onPressed: () {
                  Audio audio = Audio.load('assets/note6.wav');
                  audio.play();
                },
                child: Text('Click Me'),
              ),
              TextButton(
                onPressed: () {
                  Audio audio = Audio.load('assets/note7.wav');
                  audio.play();
                },
                child: Text('Click Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
