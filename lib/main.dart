import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Dicepage(),
      ),
    ),
  );
}

class Dicepage extends StatefulWidget {
  const Dicepage({Key key}) : super(key: key);

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;

  void random_number() {
    setState(() {
      rightdicenumber = (Random().nextInt(6)) + 1;
      leftdicenumber = (Random().nextInt(6)) + 1;
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
                random_number();
              },
              child: Image.asset('images/dice$leftdicenumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                random_number();
              },
              child: Row(
                children: [
                  Image.asset('images/dice$rightdicenumber.png'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
