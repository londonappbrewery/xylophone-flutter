import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }

  Expanded builtButton(int i, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(i);
        },
        //child: ,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              builtButton(1, Colors.red),
              builtButton(2, Colors.pink),
              builtButton(3, Colors.teal),
              builtButton(4, Colors.yellow),
              builtButton(5, Colors.green),
              builtButton(6, Colors.blue),
              builtButton(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
