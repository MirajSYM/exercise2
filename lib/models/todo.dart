// Define the class Todo here. The attributes are given. Complete the rest.

import 'package:exercise2/models/task.dart';

import 'task.dart';

class Todo {
  String title;
  List<Task> items;
  Todo({this.title, this.items});
  Todo.copy(Todo from)
      : this(
            title: from.title,
            items: [...from.items.map((item) => Task.copy(item))]);
  double get progress =>
      (items.fold(0, (sum, item) => item.completed ? sum + 1 : sum) /
          items.length) *
      100;
}
