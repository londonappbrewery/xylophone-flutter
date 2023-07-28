import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton (
                onPressed: (){
                  final player = AudioPlayer();
                  player.setSource(AssetSource('note1.wav'));
                  player.play(DeviceFileSource('note1.wav'));
                  print('note played.');
                },
                child: Text('Click Me')),
            ),
          ),
        ),
      );
  }
}
