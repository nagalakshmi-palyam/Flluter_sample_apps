import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:to_do_list_app/models/task.dart';
import 'package:to_do_list_app/screens/add_tasks_screen.dart';
import 'package:to_do_list_app/widgets/task_list.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> taskList = [
    Task(taskTitle: 'Buy milk',isDone: false),
    Task(taskTitle: 'Buy eggs',isDone: false),
    Task(taskTitle: 'Buy fruites',isDone: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          showModalBottomSheet(context: context,builder: (context) => SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child: AddTaskScreen((newTaskTitle) {
                setState(() {
                  taskList.add(Task(taskTitle: newTaskTitle,isDone: false));
                  print(newTaskTitle);
                });
                Navigator.pop(context);
              }),
            ),
          ));
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add,color: Colors.white,),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top:60.0,left:30.0,right:30.0,bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(child: Icon(Icons.list,size: 30.0,
                color: Colors.lightBlueAccent,),
                backgroundColor: Colors.white,
                radius: 30.0,),
                SizedBox(
                  height: 10.0,
                ),
                Text('Today',style: TextStyle(color: Colors.white,fontSize: 50.0, fontWeight: FontWeight.w700),),
                Text('${taskList.length} Tasks',style: TextStyle(color: Colors.white,fontSize: 18.0),),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),
              ),
              child: TaskList(taskList),
            ),
          )
        ],

      )
    );
  }
}


