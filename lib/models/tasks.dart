import 'dart:collection';

import 'package:flutter/foundation.dart';

import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(title: 'Buy Milk'),
    Task(title: 'Buy Coffeee'),
    Task(title: 'Buy Tea'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String task) {
    _tasks.add(Task(title: task));
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  void toggleCheckBox(int index) {
    _tasks[index].toggleCheck();
    notifyListeners();
  }
}
