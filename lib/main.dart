import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
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
    return Center(
      child: Row(
        children: [
          DiceImage(),
          DiceImage(),
        ],
      ),
    );
  }
}

class DiceImage extends StatefulWidget {
  @override
  _DiceImageState createState() => _DiceImageState();
}

class _DiceImageState extends State<DiceImage> {
  int imageNum = 1;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          setState(() {
            imageNum = 5;
          });
        },
        child: Image.asset(
          'images/dice$imageNum.png',
        ),
      ),
    );
  }
}
