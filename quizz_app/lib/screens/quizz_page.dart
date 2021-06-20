import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizz_app/models/quizz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizzBrain quizzBrain = QuizzBrain();

class QuizzPage extends StatefulWidget {
  @override
  _QuizzState createState() => _QuizzState();
}

class _QuizzState extends State<QuizzPage> {
  List<Icon> scoreKeeper = [];
  int correctAnsers = 0,
      wrongAnswers = 0;

  void checkAnswer(bool userPickedAnswer, BuildContext buildContext) {
    bool correctAnswer = quizzBrain.getAnswer();


    if (userPickedAnswer == correctAnswer) {
      setState(() {
        correctAnsers++;
        if (quizzBrain.isQuizzfinished() == true) {
          Alert(
            context: buildContext,
            type: AlertType.success,
            title: "Successfully Complted",
            desc: "Your Score is $correctAnsers CorrectAnswers and $wrongAnswers WrongAnswers",
            buttons: [
              DialogButton(
                child: Text(
                  "Resset",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {
                  quizzBrain.reset();
                  correctAnsers = 0;
                  wrongAnswers = 0;
                  Navigator.pop(context);
                },
                width: 120,
              )
            ],
          ).show();

          scoreKeeper = [];
          print("Reached");

        }
        else {
          quizzBrain.nextQuestion();
          scoreKeeper.add(
            Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        }
      });
    } else {
      setState(() {
        wrongAnswers++;
        if (quizzBrain.isQuizzfinished() == true) {
          Alert(
            context: buildContext,
            type: AlertType.success,
            title: "Successfully Complted",
            desc: "Your Score is $correctAnsers and $wrongAnswers",
            buttons: [
              DialogButton(
                child: Text(
                  "Resset",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {
                  quizzBrain.reset();
                  correctAnsers = 0;
                  wrongAnswers = 0;
                  Navigator.pop(context);
                },
                width: 120,
              )
            ],
          ).show();
          scoreKeeper = [];

        } else {
          quizzBrain.nextQuestion();
          scoreKeeper.add(
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
  return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                      flex: 8,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                            child: Text(
                              quizzBrain.getQuestion(),
                              style: TextStyle(
                                  color: Colors.pink,
                                  fontFamily: 'Pacifico',
                                  fontSize: 20.0),
                            )),
                      )),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FlatButton(
                          color: Colors.red,
                          textColor: Colors.white,
                          child: Text('False', style: TextStyle(
                              fontSize: 20.0, fontFamily: 'Pacifico')),
                          onPressed: () {
                            checkAnswer(false,context);
                          },
                        ),
                      )),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FlatButton(
                          textColor: Colors.white,
                          child: Text('True', style: TextStyle(
                              fontSize: 20.0, fontFamily: 'Pacifico')),
                          color: Colors.green,
                          onPressed: () {
                            checkAnswer(true,context);
                          },
                        ),
                      )),
                  Row(
                    children: scoreKeeper,
                  )
                ],
              );
  }
}
