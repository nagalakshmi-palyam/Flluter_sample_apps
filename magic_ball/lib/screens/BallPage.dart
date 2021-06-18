import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:magic_ball/screens/Ball.dart';

class BallPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
     home: Scaffold(
       backgroundColor: Colors.blue,
       appBar: AppBar(
         backgroundColor: Colors.blue.shade900,
         title: Text('Magic Ball'),
       ),
       body: Ball(),
     )
   );
  }

}