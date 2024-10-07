import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List dics = [
    "assets/images/d1.png",
    "assets/images/d2.png",
    "assets/images/d3.png",
    "assets/images/d4.png",
    "assets/images/d5.png",
    "assets/images/d6.png",
  ];

  int? randonNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            randonNumber = Random().nextInt(6);
            print(randonNumber);
            setState(() {});
          },
          child: Image.asset(randonNumber == null
              ? "assets/images/start_button.avif"
              : dics[randonNumber!]),
        ),
      ),
    );
  }
}
