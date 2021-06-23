import 'package:flutter/material.dart';
import 'package:to_do_list_app/models/task.dart';
import 'package:to_do_list_app/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> taskList;


  TaskList(this.taskList);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return TaskListTile(taskTitle: widget.taskList[index].taskTitle, isChecked:  widget.taskList[index].isDone,
      checkBoxState: (chechBoxState){
        setState(() {
          widget.taskList[index].toggleDone();
        });
      },);
    },
      itemCount: widget.taskList.length,
    );
  }
}


