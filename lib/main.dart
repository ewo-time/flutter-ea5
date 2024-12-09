import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

Expanded keys(int A, int B) {
  return Expanded(
    child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Color(B),
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        onPressed: () {
          final player = AudioPlayer();
          player.play(AssetSource('note$A.wav'));
        },
        child: Container()
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              keys(1, 0xFFFF0000),
              keys(2, 0xFFFF8000),
              keys(3, 0xFFFFFF00),
              keys(4, 0xFF239b56),
              keys(5, 0xFF008080),
              keys(6, 0xFF1e88e5),
              keys(7, 0xFF8e44ad),
            ]
          )
        ),
      ),
    );
  }
}
