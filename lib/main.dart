import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[700],
        appBar: AppBar(
          title: const Text('RandomDice'),
          backgroundColor: Colors.green[900],
        ),
        body: const DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left = 1, right = 1;
  @override
  Widget build(BuildContext context) {

    return Column(
        children: [
          const SizedBox(
            height: 110,
          ),
          Row(
            children: [
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                      child: Image.asset('images/dice$left.png'),
                    ),
                  ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                      child: Image.asset('images/dice$right.png'),
                    ),
              ),
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          Row(
            children: [
              const SizedBox(
                width: 80,
              ),
              Expanded(
                    child: TextButton(
                      onPressed: (){
                        setState(() {
                          changevalue();
                        });
                        const Size(100, 50);
                      },
                      child: const Image(
                        image: AssetImage('Roll/Let’s Roll!.png'),
                        width: 300,
                      ),
                    ),
              ),
              const SizedBox(
                width: 80,
              ),
            ],
          ),
        ],
    );
  }
  void changevalue(){
    left= 1 + Random().nextInt(6);
    right= 1 + Random().nextInt(6);
  }

}


