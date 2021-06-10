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
          DiceImage(
            image: 'dice1.png',
          ),
          DiceImage(
            image: 'dice2.png',
          ),
        ],
      ),
    );
  }
}

class DiceImage extends StatelessWidget {
  final String image;
  const DiceImage({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Image.asset(
        'images/' + image,
      ),
    ));
  }
}
