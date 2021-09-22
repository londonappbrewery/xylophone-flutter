import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int noteCode) {

    final player = AudioCache();
    player.play('note$noteCode.wav');

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                      playSound(1);
                    },
                    child: Text('C',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30
                    ),),
                  ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                  child: FlatButton(
                    color: Colors.orange,
                    onPressed: () {
                      playSound(2);
                    },
                    child: Text('D',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30
                    ),),
                  ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                  child: FlatButton(
                    color: Colors.yellow,
                    onPressed: () {
                      playSound(3);
                    },
                    child: Text('E',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30
                    ),),
                  ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                  child: FlatButton(
                    color: Colors.green,
                    onPressed: () {
                      playSound(4);
                    },
                    child: Text('F',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30
                    ),),
                  ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                  child: FlatButton(
                    color: Colors.teal,
                    onPressed: () {
                      playSound(5);
                    },
                    child: Text('G',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30
                    ),),
                  ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                  child: FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      playSound(6);
                    },
                    child: Text('A',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30
                    ),),
                  ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                  child: FlatButton(
                    color: Colors.purple,
                    onPressed: () {
                      playSound(7);
                    },
                    child: Text('B',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30
                    ),),
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
