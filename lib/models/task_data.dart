
import 'package:flutter/foundation.dart';
import 'package:todo_list/models/task.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier{
  List<Task> _tasks =[

  ];
  UnmodifiableListView <Task> get tasks{
    return UnmodifiableListView (_tasks);
  }
  int get taskCount{
    return _tasks.length;
  }
  void addTask(String newTaskTitle){
    final task = Task(taskName: newTaskTitle,isDone: false);
    _tasks.add(task);
    notifyListeners();
  }
  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}