import 'package:flutter/material.dart';
import 'package:myapp/start_screen.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;
void main() {
  runApp(MaterialApp(
      home: Scaffold(
          body: Container(
    decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: const [Colors.lightBlue, Color.fromARGB(255, 255, 178, 249)],
            begin: startAlignment,
            end: endAlignment,
      ),
    ),
    child: const StartScreen()
  ))));
}
