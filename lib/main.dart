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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var lefDiceNumber;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                print("Left button got pressed");
              },
              child: Image.asset('images/dice$lefDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {

              },
            child: Image.asset('images/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
