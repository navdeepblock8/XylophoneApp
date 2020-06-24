import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playKey(int audioKey){
    final player = AudioCache();
    player.play('note$audioKey.wav');
  }
  Expanded buildKey(Color color, int keyNum){
   return Expanded(
      child: FlatButton( // ignore: missing_required_param
        onPressed: (){
          playKey(keyNum);
        },
        color: color,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('XYLOPHONE'),
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.blue, 5),
              buildKey(Colors.indigo, 6),
              buildKey(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}

