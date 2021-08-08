import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }

  Expanded buildKey({int i, Color color}) {
    return Expanded(
      child: OutlinedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          playsound(i);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildKey(i: 1, color: Colors.red),
              buildKey(i: 2, color: Colors.green),
              buildKey(i: 3, color: Colors.blue),
              buildKey(i: 4, color: Colors.yellow),
              buildKey(i: 5, color: Colors.purple),
              buildKey(i: 6, color: Colors.orange),
              buildKey(i: 7, color: Colors.pink),
            ],
          ),
        ),
      ),
    );
  }
}
