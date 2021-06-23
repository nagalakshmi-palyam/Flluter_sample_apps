import 'package:flutter/material.dart';

// class TaskListTile extends StatefulWidget {
//   @override
//   _TaskListTileState createState() => _TaskListTileState();
// }

class TaskListTile extends StatelessWidget {
 final bool isChecked ;
 final String taskTitle;
 final Function checkBoxState;


 TaskListTile({this.isChecked, this.taskTitle, this.checkBoxState});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,style: TextStyle
        (decoration: isChecked ? TextDecoration.lineThrough : null),),
      trailing: Checkbox(
       activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxState ,
      ),
    );
  }

}

