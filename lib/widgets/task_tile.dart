import 'package:flutter/material.dart';
import 'package:todoey/models/tasks.dart';
import 'package:provider/provider.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function(bool?) toggleCheckBox;
  final Function() onLongPressCallback;

  TaskTile(
      {required this.isChecked,
      required this.title,
      required this.toggleCheckBox,
      required this.onLongPressCallback});

  @override
  Widget build(BuildContext context) {
    TaskData taskData = Provider.of<TaskData>(context);
    return ListTile(
      onLongPress: onLongPressCallback,
      title: Text(
        title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: toggleCheckBox,
      ),
    );
  }
}

//TaskCheckBox(
//isChecked: isChecked,
//toggleCheckBox: t
//});
//},
//),
