import 'package:flutter/material.dart';
import 'package:todoey/models/tasks.dart';
import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'models/task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Task> tasks = [
    Task(title: 'Buy Milk'),
    Task(title: 'Buy Coffeee'),
    Task(title: 'Buy Tea'),
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
