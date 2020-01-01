import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNum) {
    final player = AudioCache();
    //Note this package assumes the audio file is saved inside of assets folder. Read documentation.
    player.play('note$noteNum.wav');
  }

  Expanded buildKey({Color keyColor, int keyNum}) {
    return Expanded(
      child: FlatButton(
        color: keyColor,
        onPressed: () {
          playSound(keyNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[800],
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(keyColor:Colors.red, keyNum: 1),
              buildKey(keyColor:Colors.orange, keyNum: 2),
              buildKey(keyColor:Colors.yellow, keyNum: 3),
              buildKey(keyColor:Colors.green, keyNum: 4),
              buildKey(keyColor:Colors.blue, keyNum: 5),
              buildKey(keyColor:Colors.indigo, keyNum: 6),
              buildKey(keyColor:Colors.purple, keyNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
