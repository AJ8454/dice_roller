import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text('Dice Roller'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: DiceRoller(),
    ),
  ));
}

class DiceRoller extends StatefulWidget {
  @override
  _DiceRollerState createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceNumber() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceNumber();
              },
              child: Image.asset('assets/images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceNumber();
              },
              child: Image.asset('assets/images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
