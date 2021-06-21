import 'package:bmi_calculater/Consts/contsants.dart';
import 'package:bmi_calculater/models/calculator_brain.dart';
import 'package:bmi_calculater/screens/result_page.dart';
import 'package:bmi_calculater/screens/weight.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculater/screens/icon_content.dart';
import 'package:bmi_calculater/screens/reusable_card.dart';
import 'package:bmi_calculater/models/calculator_brain.dart';


class InputPage extends StatefulWidget{
  @override
  _InputState createState() => _InputState();

}

class _InputState extends State<InputPage>{

 int height = 180;
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: GestureDetector(
                onTap: (){
                 setState(() {
                   selectedGender = Gender.male;
                 });
                },
                child: ReusableCards(selectedGender == Gender.male ? activeCardColour : inactiveCardColour,
                    ReusableCardIcon(icons: FontAwesomeIcons.mars,text: 'MALE',)
                ),
              )
              ),
              Expanded(child: GestureDetector(
                onTap: (){
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                child: ReusableCards(selectedGender == Gender.female ? activeCardColour : inactiveCardColour,
                    ReusableCardIcon(icons: FontAwesomeIcons.venus,text: 'FEMALE',)
                ),
              )
              ),
            ],
          )),
          Expanded(child:ReusableCards(activeCardColour, Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('HEIGHT',style: kLableTextStyle,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(height.toString(),style: kNumberextStyle,),
                  Text('cm',style: kLableTextStyle,)
                ],
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                  overlayShape: RoundSliderOverlayShape(),
                ),
                child: Slider(
                  value: height.toDouble(),
                  min: 120.0,
                  max: 220.0,
                  activeColor: Color(0xFFEB1555),
                  inactiveColor: Color(0xFF8D8E98),
                  onChanged: (double newValue){
                    setState(() {
                      height = newValue.round();
                    });
                  },
                ),
              ),
            ],
          ))),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ReusableCards(activeCardColour, WeightContent())),
              Expanded(child: ReusableCards(activeCardColour, WeightContent())),
            ],
          )),
          GestureDetector(
            onTap: (){
              CalculatorBrain calculatorBrain = CalculatorBrain(height: height ,weight: weight);
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => ResultsPage(bmiResult: calculatorBrain.calculatorBMI(),
              interpretation: calculatorBrain.getInterpretation(), resultText: calculatorBrain.getResult(),)));
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 10.0),
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              height: bottomContainerHeight,
              width: double.infinity,
              child: Center(
                child:Text('CALCULATOR',style: kLableTextStyle,)
              ),
            ),
          )
        ],
      )
    );
  }

}

//Themes
class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }

}



