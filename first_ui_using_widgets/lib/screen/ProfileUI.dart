
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileUI extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink.shade200,
        body: Container(
          child: Center(
            child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/shiv.jpeg'),
              ),
              Text('Shiva Karhikeyan', style: TextStyle(fontSize: 30.0,fontFamily: 'Pacifico')),
              Text('Mobile App Developer', style: TextStyle(fontSize: 20.0,color: Colors.black38)),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.black,

                  ),
                ),
                Card(
                  color: Colors.black,
                  margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                  child: ListTile(
                    leading: Icon(Icons.mail,color: Colors.pink.shade200),
                    title: Text('shiv@gmail.com',style: TextStyle(fontSize: 15.0,color: Colors.pink.shade200),),
                  ),
                ),
              Card(
                color: Colors.black,
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                child: ListTile(
                  leading: Icon(Icons.phone,color: Colors.pink.shade200),
                  title: Text('+91 9123456789',style: TextStyle(fontSize: 15.0,color: Colors.pink.shade200),),
                ),
              ),
            ],
          ),
        )
        )
      )
    );
  }



}