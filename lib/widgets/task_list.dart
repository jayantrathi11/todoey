import 'package:flutter/material.dart';
import 'package:todoey_list/widgets/task_tile.dart';
import 'package:todoey_list/module/basic_task.dart';
import 'package:provider/provider.dart';
import 'package:todoey_list/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          title: Provider.of<TaskData>(context).task[index].name,
          isChecked: Provider.of<TaskData>(context).task[index].isDone,
          func: (bool? value) {
            // setState(() {
            //   widget.task[index].isDone = !widget.task[index].isDone;
            // });
          },
        );
      },
      itemCount: Provider.of<TaskData>(context).count,
    );
  }
}
