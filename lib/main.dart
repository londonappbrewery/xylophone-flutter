import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                  child: FlatButton(
                    color: Colors.red,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note1.wav');
                    },
                    child: Text('C'),
                  ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                  child: FlatButton(
                    color: Colors.orange,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note2.wav');
                    },
                    child: Text('D'),
                  ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                  child: FlatButton(
                    color: Colors.yellow,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note3.wav');
                    },
                    child: Text('E'),
                  ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                  child: FlatButton(
                    color: Colors.green,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note4.wav');
                    },
                    child: Text('F'),
                  ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                  child: FlatButton(
                    color: Colors.teal,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note5.wav');
                    },
                    child: Text('G'),
                  ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                  child: FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note6.wav');
                    },
                    child: Text('A'),
                  ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                  child: FlatButton(
                    color: Colors.purple,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note7.wav');
                    },
                    child: Text('B'),
                  ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
