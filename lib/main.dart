import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dicee',
      home: Dicee(),
    );
  }
}

class Dicee extends StatefulWidget {
  const Dicee({super.key});

  @override
  State <Dicee> createState() =>  DiceeState();
}

class  DiceeState extends State <Dicee> {
  int leftDiceFace = 4;
  int rightDiceFace = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: changeDiceFace,
                  child: Image.asset("images/dice$leftDiceFace.png")
                )
              ),
              Expanded(
                child: TextButton(
                  onPressed: changeDiceFace,
                  child: Image.asset("images/dice$rightDiceFace.png")
                )
              )
            ],
          ),
        ),
      ),
    );
  }

  void changeDiceFace(){
    final Random rand = Random();
    setState(() {
      leftDiceFace = rand.nextInt(6) + 1; //random (1-6)
      rightDiceFace = rand.nextInt(6) + 1; //random (1-6)
    });
  }
}
