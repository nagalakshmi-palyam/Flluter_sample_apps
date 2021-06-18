import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Ball extends StatefulWidget{
  @override
  _BallState createState() => _BallState();

}


class _BallState extends State<Ball>{
  int ballState = 1;
@override
 Widget build(BuildContext context){
  return Center(
           child: FlatButton(
             onPressed: (){
               setState(() {
                 ballState = Random().nextInt(5) +1;
               });
             },
               child: Image.asset('images/ball$ballState.png')
           ),
  );
 }
}

