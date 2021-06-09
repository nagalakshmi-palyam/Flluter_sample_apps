import 'package:flutter/material.dart';

class Home extends StatelessWidget {
//Container widget
  @override
  Widget build(BuildContext context) {
    return Center(
      child: (
      LoadImagefromAssets()
      )
    );
  }
}

class LoadImagefromAssets extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   AssetImage assetImage = AssetImage("images/photo.jpeg");
   Image image = Image(image: assetImage);
   return Container(child: image);
  }

}