import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

//import 'package:english_words/english_words.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNO) {
    //play the sounds
    final player = AudioCache();
    //assumes that the audio fies are in tthe assets dir
    player.play('note$soundNO.wav');
  }

  Expanded soundButton({Color color,int soundNO}) {
    return Expanded(
      child: Container(
        color: color,
        //width: 5000,
        child: TextButton(
          onPressed: () {
            playSound(soundNO);
          },
          child: null,
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
            crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              //create the buttons 
              soundButton(color: Colors.cyan,soundNO: 1),
              soundButton(color:Colors.deepOrangeAccent,soundNO:2),
              soundButton(color: Colors.indigoAccent,soundNO: 3),
              soundButton(color: Colors.brown,soundNO: 4),
              soundButton(color: Colors.yellowAccent,soundNO: 5),
              soundButton(color: Colors.blueGrey,soundNO: 6),
              soundButton(color: Colors.orange,soundNO: 7),
            ]),
      ),
    ));
  }
}
