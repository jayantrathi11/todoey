import 'package:flutter/material.dart';
import 'package:todoey_list/module/task.dart';

class AddTaskScreen extends StatelessWidget {
  late final Function func;
  AddTaskScreen({required this.func});
  late String newToDo;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF686868),
      child: Container(
        padding: const EdgeInsets.all(40),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (String ans) {
                newToDo = ans;
              },
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.lightBlueAccent,
              child: TextButton(
                onPressed: () {
                  func(newToDo);
                },
                child: const Text(
                  'Add Task',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
