import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_list/task_data.dart';

class TaskTile extends StatelessWidget {
  late final bool isChecked;
  late final String title;
  late final Function(bool?) func;
  late final Function()? func2;
  TaskTile(
      {required this.title,
      required this.isChecked,
      required this.func,
      required this.func2});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        checkColor: Colors.white,
        onChanged: func,
      ),
      onLongPress: func2,
    );
  }
}
//
// void callback(bool? value) {
//   setState(() {
//     isChecked = !isChecked;
//   });
// }
