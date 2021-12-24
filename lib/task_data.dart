import 'package:flutter/material.dart';
import 'package:todoey_list/module/basic_task.dart';

class TaskData extends ChangeNotifier {
  List<Task> task = [
    Task(name: "Go to the Gym"),
  ];
  int get count {
    return task.length;
  }

  void addTask(Task k) {
    task.add(k);
    notifyListeners();
  }

  void update(int k) {
    task[k].isDone = !task[k].isDone;
    notifyListeners();
  }

  void erase(int k) {
    task.remove(task[k]);
    notifyListeners();
  }
}
