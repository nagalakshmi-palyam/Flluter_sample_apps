import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
//Container widget
  @override
  Widget build(BuildContext context)=> Container(
     color: Colors.white,
     child:  Column(
    children: <Widget>[
      LoadImagefromAssets(),
      RaiseButton()
        ]
    )
    );

}

//Loading Images from Assets
class LoadImagefromAssets extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   AssetImage assetImage = AssetImage("images/photo.jpeg");
   Image image = Image(image: assetImage);
   return Container(
       margin: EdgeInsets.only(top: 100.0),
       child: image
   );
  }

}

//Raised button
class RaiseButton extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
   return Container(
     child: RaisedButton(
       color: Colors.deepOrange,
       child: Text("Button",
       style: TextStyle(
           fontSize: 20.0,
         fontFamily: 'Raleway'
       )),
       elevation: 6.0,
       onPressed: () => AlertDialogmethod(context)
     )
   );
  }

  //AlertDialog
  void AlertDialogmethod(BuildContext context){
    var alertDialog = AlertDialog(
      title: Text("Button Clicked"),
      content: Text("This example is quite better"),
    );
    showDialog(context: context, builder: (
    BuildContext context) =>  alertDialog
    );
  }

}




