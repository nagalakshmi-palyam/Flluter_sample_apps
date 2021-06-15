import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("First App sample"),
        backgroundColor: Colors.blueGrey[900],
      ),
          backgroundColor: Colors.blueGrey,
          body: Image(
            image: NetworkImage(
              'https://images.pexels.com/photos/736230/pexels-photo-736230.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
          ),
          ),
    ));
