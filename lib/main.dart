import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  return runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(Color color, int sound) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(sound);
        },
        color: color,
        child: null,
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              buildKey(Colors.teal, 1),
              buildKey(Colors.red, 2),
              buildKey(Colors.indigo, 3),
              buildKey(Colors.limeAccent, 4),
              buildKey(Colors.deepOrange, 5),
              buildKey(Colors.deepPurple, 6),
            ],
          ),
        ),
      ),
    );
  }
}
