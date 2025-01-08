import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => 
  _HomeScreenState(),
  _HomeStateAdd();

}

class _HomeScreenState extends State<HomeScreen> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: GestureDetector(
            onTap: () {
              final newNumber = Random().nextInt(100) + 1;

              setState(() {
                number = newNumber;
              });
            },
            child: Text('랜덤한 숫자의 값 : $number'),
          ),
        ));
  }
}

class _HomeStateAdd extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
              child: Text(
            '이 내용은 뭐죠?',
            style: TextStyle(fontSize: 50, color: Colors.amber),
          )),
        ));
  }
}
