import 'package:flutter/material.dart';
import 'package:todoey_list/widgets/task_tile.dart';
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
              Provider.of<TaskData>(context, listen: false).update(index);
            },
            func2: () {
              if (Provider.of<TaskData>(context, listen: false)
                  .task[index]
                  .isDone) {
                Provider.of<TaskData>(context, listen: false).erase(index);
              }
            });
      },
      itemCount: Provider.of<TaskData>(context).count,
    );
  }
}
