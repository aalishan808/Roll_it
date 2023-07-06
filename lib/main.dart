import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal.shade900,
        appBar: AppBar(
          title: Text('Roll It'),
          backgroundColor: Colors.teal.shade500,
        ),
        body: DicePage(),
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
  Random random = Random();

  int leftdicenumber = 1;
  int rightdicenumber = 1;

  void change(){
    setState(() {
      leftdicenumber = random.nextInt(6)+1;
      rightdicenumber = random.nextInt(6)+1;
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
                  change();

                }, child: Image.asset('images/dice$leftdicenumber.png'))),
        Expanded(
          child: TextButton(
              onPressed: () {
                change();
              },
              child: Image.asset('images/dice$rightdicenumber.png')),
        ),
      ],
    ),
  );
}
}



