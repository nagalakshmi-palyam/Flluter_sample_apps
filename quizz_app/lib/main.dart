import 'package:flutter/material.dart';
import 'package:quizz_app/models/question_bank.dart';
import 'package:quizz_app/screens/quizz_page.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      body: QuizzPage(),
    )
  )
);


