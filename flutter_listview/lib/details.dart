import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget{
  final int index;
  const DetailPage(this.index) ;
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Details"),
    ),
    body: Center(
      child: Text("The ListItem index is #$index"),
    ),
  );
}