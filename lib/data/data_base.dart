import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  //reference our box
  final _myBox = Hive.box('mybox');

  //run this method if this is the 1st rime ever opening rhis app
  void createInitialData() {
    toDoList = [
      ["MakeTutorial", false],
      ["Do Exercise", false],
    ];
  }

  //Load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //Update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
