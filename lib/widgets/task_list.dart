import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/tasks.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TaskData taskData = Provider.of<TaskData>(context);

    return Expanded(
        child: ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: taskData.tasks[index].isChecked,
          title: taskData.tasks[index].title,
          toggleCheckBox: (newValue) {
            taskData.toggleCheckBox(index);
          },
          onLongPressCallback: () {
            taskData.deleteTask(index);
          },
        );
      },
      itemCount: taskData.tasks.length,
    ));
  }
}
