import 'package:flutter/material.dart';
import 'package:bmi_calculater/Consts/contsants.dart';

//ReusableCard Widget
class ReusableCardIcon extends StatelessWidget{
  final IconData icons;
  final String text;

  ReusableCardIcon({this.icons, this.text});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icons,
          size: 30.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text, style: kLableTextStyle,
        )
      ],
    );
  }



}