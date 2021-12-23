import 'package:flutter/material.dart';
import 'package:todoey_list/widgets/task_tile.dart';
import 'package:todoey_list/module/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> task;
  TasksList({required this.task});
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          title: widget.task[index].name,
          isChecked: widget.task[index].isDone,
          func: (bool? value) {
            setState(() {
              widget.task[index].isDone = !widget.task[index].isDone;
            });
          },
        );
      },
      itemCount: widget.task.length,
    );
  }
}
