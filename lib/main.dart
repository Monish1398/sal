import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:audioplayers/src/audio_cache.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('music$soundNumber.mp3');
  }

// buildkey
  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      // ignore: deprecated_member_use
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text('Hip Hop Songs 90s'),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: Column(
          //it is basicallly to wide the crossaxis alignment
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(color: Colors.red, soundNumber: 2),
            buildKey(color: Colors.lightBlue, soundNumber: 3),
            buildKey(color: Colors.lightGreen, soundNumber: 4),
            buildKey(color: Colors.yellow, soundNumber: 5),
            buildKey(color: Colors.deepOrange, soundNumber: 6),
            buildKey(color: Colors.grey, soundNumber: 7),
            buildKey(color: Colors.brown, soundNumber: 8),
            buildKey(color: Colors.deepPurple, soundNumber: 9)
          ],
        ),
      )),
    );
  }
}
