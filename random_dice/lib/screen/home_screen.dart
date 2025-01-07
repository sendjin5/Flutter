import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
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
