import 'package:flutter/material.dart';

class TextDecoration extends StatelessWidget{
  const TextDecoration(this.text,{super.key});
  final String text;
  @override
  Widget build(context){
    return  Text(text,
    style:const TextStyle(color: Color.fromARGB(215, 234, 23, 3),
    fontSize: 35.0),);
  }
}