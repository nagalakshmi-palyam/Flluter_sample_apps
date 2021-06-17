import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class order_listing_screen extends StatefulWidget {

  const order_listing_screen({key}) : super(key: key);
  @override
  State<order_listing_screen> createState() => _MyStatefulWidgetState();
}



/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<order_listing_screen> {

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Orders"),
    ),
    body: _buildListView(context),
    floatingActionButton:Container(
   margin: EdgeInsets.only(bottom: 20.0) ,
   height: 40.0,
   child: FloatingActionButton.extended(
     onPressed: (){

     },
      label:Text('Orders'),
      icon: Icon(Icons.add,size: 20.0,),
      backgroundColor: Colors.blue,

  )

    )
  );




  //Method to Build ListView
  ListView _buildListView(BuildContext context) {
    return ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(1.0),
              child: Card(
                elevation: 2.0,
                child: Container(
                    height: 150.0,
                    padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Buyer",textDirection: TextDirection.ltr,style: TextStyle( color: Colors.black26,),),
                            Text("Order Value",textDirection: TextDirection.ltr,style: TextStyle( color: Colors.black26,),),
                            Text("Delivery Date",textDirection: TextDirection.ltr,style: TextStyle( color: Colors.black26,),),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Buyer",textDirection: TextDirection.ltr,style: TextStyle( color: Colors.black,),),
                            Text("Order Value",textDirection: TextDirection.ltr,style: TextStyle( color: Colors.black,),),
                            Text("Delivery Date",textDirection: TextDirection.ltr,style: TextStyle( color: Colors.black,),),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,),
                        Row(
                          children: <Widget>[
                            Text("Order Id :",textDirection: TextDirection.ltr,style: TextStyle( color: Colors.black26,),),
                            Text("GF/ORD/",textDirection: TextDirection.ltr,style: TextStyle( color: Colors.black26,),),
                            Text("1001",textDirection: TextDirection.ltr,style: TextStyle( color: Colors.black26,),),
                          ],
                        ),
                        const Divider(
                          color: Colors.black26,
                          thickness: 2,
                          indent: 5,
                          endIndent: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[

                            Text('Products',style: TextStyle(color: Colors.black),),
                            Text('Details', textAlign: TextAlign.end,style: TextStyle(color: Colors.blue),)
                          ],
                        )

                      ],
                    )
                ),
              )
          );
        }
    );
  }
}
