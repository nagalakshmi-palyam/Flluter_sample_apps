import 'package:destini_app/screens/destini_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover
          )
        ),
        child: SafeArea(child: DestiniPage()),
      )
    )
  )
  );
}

