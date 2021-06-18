import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';


class _DiceState extends State<DicePage>{
  int leftDiceNumber = 1, rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) => MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('Dicee'),
            backgroundColor: Colors.red,
          ),
          body: Container(
              child: Center(
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child:FlatButton(
                          onPressed: (){
                           setState(() {
                             leftDiceNumber = Random().nextInt(6) + 1;
                           });
                          },
                          child: Image.asset('images/dice$leftDiceNumber.png'),
                        )),
                    Expanded(
                        child:FlatButton(
                            onPressed: (){
                            setState(() {
                              rightDiceNumber = Random().nextInt(6) + 1;
                            });
                            },
                            child: Image.asset('images/dice$rightDiceNumber.png'))),
                  ],
                ),
              )
          )
      )
  );

}
class DicePage extends StatefulWidget{
  @override
  _DiceState createState() => _DiceState();
}