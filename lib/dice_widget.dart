import 'package:flutter/material.dart';
import 'dart:math';

class DiceWidget extends StatefulWidget {
  const DiceWidget({super.key});

  @override
  State<DiceWidget> createState() => _DiceWidgetState();
}

class _DiceWidgetState extends State<DiceWidget> {
  var currentdiceface = 1;
  void rollDice() {
    setState(() {
      currentdiceface = Random().nextInt(6) + 1;
      print(currentdiceface);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.black, Colors.deepPurple],
              begin: Alignment.center,
              end: Alignment.bottomCenter),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/dice-images/dice-${currentdiceface.toString()}.png',
                  width: 200),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  fixedSize: const Size(100, 30),
                  backgroundColor: Colors.white,
                  textStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                onPressed: rollDice,
                child: const Text(
                  'Roll Dice',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
