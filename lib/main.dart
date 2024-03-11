import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  int playsound(int notes) {
    final player = AudioPlayer();
    player.play(AssetSource('note$notes.wav'));

    return notes;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          centerTitle: true,
          title: Text(
        style: TextStyle(
          color: Colors.white,
        ),
              'Xylophone'),
        ),
        body: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        playsound(1);
                      },
                      child: Container(
                        color: Colors.red,

                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        playsound(2);
                      },
                      child: Container(
                        color: Colors.orange,

                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        playsound(3);
                      },
                      child: Container(
                        color: Colors.yellow,

                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        playsound(4);
                      },
                      child: Container(
                        color: Colors.lightGreen,

                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        playsound(5);
                      },
                      child: Container(
                        color: Colors.teal,

                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        playsound(6);
                      },
                      child: Container(
                        color: Colors.blue,

                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        playsound(7);
                      },
                      child: Container(
                        color: Colors.purple,

                      ),
                    ),
                  ),




                ],
              ),

          ),
        ),

    );
  }
}
