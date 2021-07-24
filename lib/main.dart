import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void playSound(int x) {
    final player = AudioCache();
    player.play('note$x.wav');
  }

  Expanded key({Color color, int a}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: color, padding: EdgeInsets.fromLTRB(20, 0, 20, 0)),
        onPressed: () {
          playSound(a);
        },
        child: Text(''),
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
            children: <Widget>[
              key(color: Colors.red, a: 1),
              key(color: Colors.orange, a: 1),
              key(color: Colors.yellow, a: 1),
              key(color: Colors.green, a: 1),
              key(color: Colors.blue, a: 1),
              key(color: Colors.blue[900], a: 1),
              key(color: Colors.purple, a: 1),
            ],
          ),
        ),
      ),
    );
  }
}
