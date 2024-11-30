import 'package:flutter/material.dart';
import 'dart:math';
final randomizer=Random();
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceRoll=2;
  void rollDice(){
    setState(() {
        diceRoll=randomizer.nextInt(6)+1;
    });
  }
  @override
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Image.asset(
          'assets/dice-images/dice-$diceRoll.png',
          width: 220,
        ),
        const SizedBox(
          height: 40,
          ),
        ElevatedButton(onPressed: rollDice,
         style:ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 204, 218, 11),
          foregroundColor: const Color.fromARGB(255, 5, 5, 3),
          textStyle: const TextStyle(fontSize: 28),
         ),
         child: const Text("Roll Dice!"))
        // TextButton(onPressed: rollDice, 
        // style: TextButton.styleFrom(
        //   // padding: const EdgeInsets.only(
        //   //   top:20,
        //   // ),
        //   foregroundColor: Colors.white,
        //   textStyle: const TextStyle(
        //     fontSize: 28,
        //   )
        // ),
        // child:const Text('Roll Dice'))
        ],);
  }
}