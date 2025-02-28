import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  @override
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  playSound(1);
                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.red,
                  child: Text('Sound 1', style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  playSound(2);
                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.orange,
                  child: Text('Sound 2', style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  playSound(3);
                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.yellow,
                  child: Text('Sound 3', style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  playSound(4);
                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.green,
                  child: Text('Sound 4', style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  playSound(5);
                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.greenAccent,
                  child: Text('Sound 5', style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  playSound(6);
                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.amber,
                  child: Text('Sound 6', style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  playSound(7);
                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.white,
                  child: Text('Sound 7', style: TextStyle(color: Colors.black), textAlign: TextAlign.center,),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
