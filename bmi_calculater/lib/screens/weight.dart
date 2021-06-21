import 'package:bmi_calculater/Consts/contsants.dart';
import 'package:bmi_calculater/screens/round_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
int weight = 20;
class WeightContent extends StatefulWidget{
  @override
  _WeightState createState() => _WeightState();

}

//Cards
class _WeightState extends State<WeightContent> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('WEIGHT', style: kLableTextStyle,),
        Text(weight.toString(),style: kNumberextStyle,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(icon: FontAwesomeIcons.plus, onPressed: (){
              setState(() {
                weight = weight-1;
              });
            }),
            SizedBox(
              width: 10.0,
            ),
            RoundIconButton(icon: FontAwesomeIcons.minus, onPressed:(){
              setState(() {
                weight = weight+1;
              });
            })
          ],
        )
      ],
    );
  }

}
