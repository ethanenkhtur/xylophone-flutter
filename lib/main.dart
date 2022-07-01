import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void number(int yay) {
    final player = AudioCache();
    player.play('note$yay.wav');
  }

  Expanded buildYay(int input, {required Color color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          number(input);
        },
        child: Container(
          color: color,
        ),
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
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildYay(1, color: Colors.red),
              buildYay(2, color: Colors.orange),
              buildYay(3, color: Colors.yellow),
              buildYay(4, color: Colors.green),
              buildYay(5, color: Colors.teal),
              buildYay(6, color: Colors.blue),
              buildYay(7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
