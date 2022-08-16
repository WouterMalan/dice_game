import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text(
              "Dicee"
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int lefDiceNumber=1;
  int rightDiceNumber=1;
  Random random = new Random();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
              setState(() {
                lefDiceNumber = random.nextInt(6)+1;
              });
              },
              child: Image.asset('images/dice$lefDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
              setState(() {
                rightDiceNumber = random.nextInt(6)+1;
              });
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

