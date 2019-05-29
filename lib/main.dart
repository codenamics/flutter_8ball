import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('8ball'),
        backgroundColor: Colors.blue,
      ),
      body: Ball(),
    ),
  ));
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNum = 1;

  void setBall() {
    setState(() {
      ballNum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              setBall();
            },
            child: Image.asset('images/ball$ballNum.png'),
          ),
        )
      ],
    ));
  }
}
