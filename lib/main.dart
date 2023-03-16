import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  return runApp(
    MaterialApp(
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
  // const DicePage({Key? key}) : super(key: key);
  // const DicePage({Key key = GlobalKey()}) : super(key: key);
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceButton = 1;
  int rightDiceButton = 1;
  @override

  Widget build(BuildContext context) {
    return Center(
      child: Row(
         children: <Widget>[
           Expanded(
             child: TextButton(
               onPressed: (){
                 setState(() {
                   leftDiceButton = Random().nextInt(6) + 1;
                 });
               },
                 child: Image(
                   image: AssetImage('images/dice$leftDiceButton.png'),
                 ),
             ),
           ),
           Expanded(
             child: TextButton(
               onPressed: (){
                 setState(() {
                   rightDiceButton = Random().nextInt(6) + 1;
                 });
               },
               child: Image(
                 image: AssetImage('images/dice$rightDiceButton.png'),
               ),
             ),
           ),
         ],
      ),
    );
  }
}

