import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class Xylophone extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int soundNumber, Color color})=> Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );


  @override
  Widget build(BuildContext context) =>
     MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            body: SafeArea(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(soundNumber: 1, color: Colors.pinkAccent),
                buildKey(soundNumber: 2, color: Colors.black),
                buildKey(soundNumber: 3, color: Colors.red),
                buildKey(soundNumber: 4, color: Colors.yellow),
                buildKey(soundNumber: 5, color: Colors.green),
                buildKey(soundNumber: 6, color: Colors.blue),
                buildKey(soundNumber: 7, color: Colors.brown)
              ],
            ))));
  }

