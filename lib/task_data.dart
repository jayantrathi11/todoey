import 'package:flutter/material.dart';
import 'package:todoey_list/module/basic_task.dart';

class TaskData extends ChangeNotifier {
  List<Task> task = [
    Task(name: "Go to the Gym"),
  ];
  int get count {
    return task.length;
  }

  void add(Task k) {
    task.add(k);
    notifyListeners();
  }
}
