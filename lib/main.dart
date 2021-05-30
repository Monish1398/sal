import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:audioplayers/src/audio_cache.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: Center(
          // ignore: deprecated_member_use
          child: FlatButton(
            onPressed: () {
              final player = AudioCache();
              player.play('music1.mp3');
            },
            child: Text('Music Hip Hop'),
          ),
        ),
      )),
    );
  }
}
