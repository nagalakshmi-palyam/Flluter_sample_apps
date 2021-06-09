import 'package:flutter/material.dart';
import 'package:flutter_listview/details.dart';

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) => Scaffold(
     appBar: AppBar(
       title: Text("Responsive ListView"),
     ),
     body: _buildListView(context),
   );

  //Method to Build ListView
  ListView _buildListView(BuildContext context) => ListView.builder(
        itemCount: 10,
        itemBuilder: (_,index){
         return ListTile(
           title: Text("The List Item is #$index"),
           subtitle: Text("Hey, this is ListItem"),
           leading: Icon(Icons.thumb_up),
           trailing: Icon(Icons.arrow_forward),
           onTap: (){
             Navigator.push(context,
                 MaterialPageRoute(builder: (context)=>
                   DetailPage(index))
             );
           },
         ) ;
        }
    );
}