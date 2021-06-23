import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list_app/models/task.dart';
String newTasktitle ;
class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  AddTaskScreen(this.addTaskCallback);
  @override
  Widget build(BuildContext context) {
   return Container(
     color: Color(0xFF757575),
     child: Container(
       padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),
      ),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[
           Center(child: Text('Add Task', style: TextStyle(color: Colors.lightBlueAccent),)),
           TextField(
             autofocus: true,
             textAlign: TextAlign.center,
             onChanged: (newText){
               newTasktitle = newText;
               print(newTasktitle);
             },
           ),
           FlatButton(
             color: Colors.lightBlueAccent,
             autofocus: true,
             child: Text('Add', style: TextStyle(color: Colors.white),),
             onPressed: (){
               print(newTasktitle);
               addTaskCallback(newTasktitle);
             },
           ),
         ],
       ),
     )
   );
  }
}