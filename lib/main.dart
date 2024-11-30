import 'package:flutter/material.dart';
import 'package:first_app/gradient_color.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        body: GradientContainer([Color.fromARGB(255, 226, 241, 12),Color.fromARGB(255, 143, 112, 230),Color.fromRGBO(61, 58, 34, 1)]),
      ),
    ),
  );
}
