import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'Padosi ka sir phodna',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Checkbox(
        value: true,
        checkColor: Colors.white,
        onChanged: (bool? okay) {},
      ),
    );
  }
}
