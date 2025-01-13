import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                const Color.fromARGB(255, 67, 8, 169),
                const Color.fromARGB(255, 119, 48, 243)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: StartScreen()),
      ),
    ),
  );
}
