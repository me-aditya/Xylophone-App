import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "XyloPhone App",
    home: Xylophone(),
    theme: ThemeData(
      primarySwatch: Colors.grey,
    ),
  ));
}

class Xylophone extends StatelessWidget {
  void playLocal(int soundNumber) {
    final audioPlayer = AudioCache();
    audioPlayer.play("note$soundNumber.wav");
  }

  Expanded keys({Color color, int soundNumber}) {
    return Expanded(
      child: TextButton(
        child: null,
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playLocal(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("XyloPhoneApp"),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            keys(color: Colors.red, soundNumber: 1),
            keys(color: Colors.orange, soundNumber: 2),
            keys(color: Colors.yellow, soundNumber: 3),
            keys(color: Colors.green, soundNumber: 4),
            keys(color: Colors.blue, soundNumber: 5),
            keys(color: Colors.indigo, soundNumber: 6),
            keys(color: Colors.purple, soundNumber: 7),
          ],
        ),
      ),
    );
  }
}
