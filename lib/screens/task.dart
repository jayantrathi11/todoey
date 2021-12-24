import 'package:flutter/material.dart';
import 'package:todoey_list/task_data.dart';
import 'package:todoey_list/widgets/task_list.dart';
import 'package:todoey_list/screens/add_task_screen.dart';
import 'package:todoey_list/module/basic_task.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen(),
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 40,
              top: 100,
            ),
            child: const CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.format_list_bulleted_outlined,
                color: Colors.lightBlueAccent,
                size: 40,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 40,
              top: 40,
            ),
            child: const Text(
              "Todoey",
              style: TextStyle(
                fontSize: 50,
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 40,
              bottom: 30,
            ),
            child: Text(
              "${Provider.of<TaskData>(context).count} Tasks",
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                left: 30,
              ),
              child: TasksList(),
              width: double.infinity,
              height: double.minPositive,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
