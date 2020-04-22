import 'package:exercise2/models/mock_todos.dart';
import 'package:flutter/material.dart';

import 'package:exercise2/screens/todos_screen.dart';
// import 'package:exercise2/screens/tasks_screen.dart';

void main() => runApp(
      MaterialApp(
        title: 'MAP Exercise 2',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.purple),
        home: TodoListScreen(mockData),
        // home: TaskListScreen(),
      ),
    );
