import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(XylophoneApp());
}

// TO DO: Fix bug - error
// "Unhandled Exception: Bad state: Future already completed" when note clicked.

class XylophoneApp extends StatelessWidget {
  final player = AudioPlayer();
  void playSound(int note) {
    player.setSource(AssetSource('note$note.wav'));
    player.play(DeviceFileSource('note$note.wav'));
    player.stop();
    print('note$note played.');
  }

  // Note: Could also return Widget instead of Expanded
  Expanded buildKey({Color color = Colors.white, int soundNumber = 1 }){
    return Expanded(
      child: TextButton (
        onPressed: (){
          playSound(soundNumber);
        },
        style: TextButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.zero))),
        child: Text(""),
          ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1), // Expanded Widgets
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
          ),
        ),
      );
  }
}
