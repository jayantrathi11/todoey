import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  late Function func;
  void callback(bool? value) {
    setState(() {
      isChecked = !isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Padosi ka sir phodna',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckbox(
        checkBoxState: isChecked,
        func: callback,
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  const TaskCheckbox({required this.checkBoxState, required this.func});
  final bool checkBoxState;
  final Function(bool?) func;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      activeColor: Colors.lightBlueAccent,
      checkColor: Colors.white,
      onChanged: func,
    );
  }
}
