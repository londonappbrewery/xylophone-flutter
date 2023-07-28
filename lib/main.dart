import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioPlayer();
  playSound(int note){
    player.setSource(AssetSource('note$note.wav'));
    player.play(DeviceFileSource('note$note.wav'));
    print('note$note played.');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child:Column(
            children: [
              TextButton (
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
                onPressed: (){
                    playSound(1);
                },
                child: Text('')),
              TextButton (
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)),
                  onPressed: (){
                    playSound(2);
                  },
                  child: Text('')),
              TextButton (
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.yellow)),
                  onPressed: (){
                    playSound(3);
                  },
                  child: Text('')),
              TextButton (
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen)),
                  onPressed: (){
                    playSound(4);
                  },
                  child: Text('')),
              TextButton (
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.teal)),
                  onPressed: (){
                    playSound(5);
                  },
                  child: Text('')),
              TextButton (
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightBlue)),
                  onPressed: (){
                    playSound(6);
                  },
                  child: Text('')),
              TextButton (
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple)),
                  onPressed: (){
                    playSound(7);
                  },
                  child: Text('')),
            ],
          ),
          ),
        ),
      );
  }
}
