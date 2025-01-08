import 'dart:math';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int number = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: GestureDetector(
            onTap: () {
              final newNumber = Random().nextInt(30) + 1;
              setState(() {
                number = newNumber;
              });
            },
            child: Image.asset('asset/img/pooky ($number).jpg'),
          ),
        ));
  }
}
