import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache(); // mandatory to play sounds
    player.play(
        'note$soundNumber.wav'); //   assets/note$soundNumber.wav is not put cuz this comes in the assests folder as mentioned in the doc!
  }

  Expanded buildKey({Color color, int soundNumber,Text texts}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: color,
        child: texts,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Container(
              child: Padding(
                padding: const EdgeInsets.all(90.0),
                child: Container(
                  color: Colors.brown,
                  child: Row(
            children: <Widget>[
                  Text(
                    'X',
                    style: TextStyle(fontSize: 30.0,color: Colors.red),
                  ),
                  Text(
                    'Y',
                    style: TextStyle(fontSize: 30.0,color: Colors.orange),
                  ),
                  Text(
                    'L',
                    style: TextStyle(fontSize: 30.0,color: Colors.teal),
                  ),
                  Text(
                    'O',
                    style: TextStyle(fontSize: 30.0,color: Colors.pink),
                  ),
                  Text(
                    'P',
                    style: TextStyle(fontSize: 30.0,color: Colors.yellow),
                  ),
                  Text(
                    'H',
                    style: TextStyle(fontSize: 30.0,color: Colors.lightBlue),
                  ),
                  Text(
                    'O',
                    style: TextStyle(fontSize: 30.0,color: Colors.deepOrangeAccent),
                  ),
                  Text(
                    'N',
                    style: TextStyle(fontSize: 30.0,color: Colors.purpleAccent),
                  ),
                  Text(
                    'E',
                    style: TextStyle(fontSize: 30.0,color: Colors.blue),
                  ),

            ],
          ),
                ),
              )),
          backgroundColor: Colors.white,
        ),
        body: Container(
          margin: EdgeInsets.all(30.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, soundNumber: 1,texts: Text('Sa')),
                buildKey(color: Colors.orange, soundNumber: 2,texts: Text('Ri')),
                buildKey(color: Colors.yellowAccent, soundNumber: 3,texts: Text('Ga')),
                buildKey(color: Colors.green, soundNumber: 4,texts: Text('Ma')),
                buildKey(color: Colors.blue, soundNumber: 5,texts: Text('Pa')),
                buildKey(color: Colors.indigo, soundNumber: 6,texts: Text('Da')),
                buildKey(color: Color(0xff7e57c2), soundNumber: 7,texts: Text('Ni')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
