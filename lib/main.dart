import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int noteCode) {

    final player = AudioCache();
    player.play('note$noteCode.wav');

  }

  Expanded produceKeyNote(Color noteColor, String letter, int noteNo) {
    return Expanded(
    child: Container(
     width: double.infinity,
      child: FlatButton(
       color: noteColor,
       onPressed: () {
        playSound(noteNo);
       },
         child: Text(letter,
          style: TextStyle(
          color: Colors.black,
          fontSize: 30
          ),
         ),
        ),
       ),
      );
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
                produceKeyNote(Colors.red,'C', 1),
                produceKeyNote(Colors.orange,'D', 2),
                produceKeyNote(Colors.yellow,'E', 3),
                produceKeyNote(Colors.green,'F', 4),
                produceKeyNote(Colors.teal,'G', 5),
                produceKeyNote(Colors.blue,'A', 6),
                produceKeyNote(Colors.purple,'B', 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
