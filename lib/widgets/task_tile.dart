import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  late final bool isChecked;
  late final String title;
  late final Function(bool?) func;
  TaskTile({required this.title, required this.isChecked, required this.func});
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
    );
  }
}
//
// void callback(bool? value) {
//   setState(() {
//     isChecked = !isChecked;
//   });
// }
