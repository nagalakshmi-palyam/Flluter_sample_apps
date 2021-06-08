import 'package:flutter/material.dart';


class Home extends StatelessWidget {

//Container widget
  @override
  Widget build(BuildContext context) {
    return Center(
        child : (
        Container(
     alignment:  Alignment.center,
     color: Colors.blue,
     child: Text("Nagalakshmi", textDirection: TextDirection.ltr,
     style: TextStyle(
       decoration: TextDecoration.none,
       fontSize: 20.0,
       fontFamily: 'Raleway',
       fontWeight: FontWeight.w300,
     ))
   )
        )
    );
  }


}