import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftDice = 1;
  int rigthDice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text("Dice App"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 10,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: (){
                  leftDice = Random().nextInt(6) + 1;
                  rigthDice = Random().nextInt(6) +1;
                  setState((){

                  });
                },
                child: Image.asset("assets/images/dice$leftDice.png",
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: (){
                  leftDice = Random().nextInt(6) + 1;
                  rigthDice = Random().nextInt(6) +1;
                  setState(() {

                  });
                },
                child: Image.asset("assets/images/dice$rigthDice.png",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
