import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ldn = 6, rdn = 6;//left and right dice number.
  void click(){
      setState(() {
        rdn=Random().nextInt(6)+1;
        ldn=Random().nextInt(6)+1;
      });
  }
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  click();
                  print("dice left pressed");
                },
                child: Image.asset('images/dice$ldn.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  click();
                  print("dice right pressed");
                },
                child: Image.asset('images/dice$rdn.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
