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
        checkboxstate: isChecked,
        func: callback,
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  const TaskCheckbox({required this.checkboxstate, required this.func});
  final bool checkboxstate;
  final Function(bool?) func;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxstate,
      activeColor: Colors.lightBlueAccent,
      checkColor: Colors.white,
      onChanged: func,
    );
  }
}
