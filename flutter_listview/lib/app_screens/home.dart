import 'package:flutter/material.dart';
import 'package:flutter_listview/details.dart';
import 'package:flutter_listview/models/numbers_model.dart';



class Home extends StatelessWidget{


  @override
  Widget build(BuildContext context) => Scaffold(
     appBar: AppBar(
       title: Text("Responsive ListView"),
     ),
     body: _buildListView(context),
   );




  //Method to Build ListView
  ListView _buildListView(BuildContext context) {
    List<numbers_model> list =  [];
    list.add(new numbers_model(1, "Nagalakshmi", "GF123"));
    list.add(new numbers_model(1, "Nagalakshmi", "GF123"));
    list.add(new numbers_model(1, "Nagalakshmi", "GF123"));
    list.add(new numbers_model(1, "Nagalakshmi", "GF123"));
    list.add(new numbers_model(1, "Nagalakshmi", "GF123"));
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          var listname = list[index];
          return ListTile(
            title: Text(listname.name),
            subtitle: Text(listname.rollNumber),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>
                      DetailPage(index))
              );
            },
          );
        }
    );
  }




}

