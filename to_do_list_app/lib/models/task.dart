class Task{
  String taskTitle;
  bool isDone = false;
  Function checkBoxState ;

  Task({this.taskTitle, this.isDone, this.checkBoxState});

  void toggleDone() {
    isDone = !isDone;
  }
}