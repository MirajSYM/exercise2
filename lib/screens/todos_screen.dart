import 'package:exercise2/screens/tasks_screen.dart';
import 'package:flutter/material.dart';
import '../models/todo.dart';

class TodoListScreen extends StatefulWidget {
  final List<Todo> _data;
  TodoListScreen(this._data);
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  void _doNavigate(index) async {
    final returnData = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TaskListScreen(
          Todo.copy(widget._data[index]),
        ),
      ),
    );

    if (returnData != null) {
      setState(() => widget._data[index] = returnData);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My To Do List'),
      ),
      body: ListView.separated(
        itemCount: 3,
        separatorBuilder: (context, index) => Divider(
          color: Colors.blueGrey,
        ),
        itemBuilder: (context, index) => ListTile(
          title: Text(widget._data[index].title),
          subtitle:
              Text('The List has ${widget._data[index].items.length} tasks'),
          trailing: CircleAvatar(
            child: Text(
              widget._data[index].progress.round().toString(),
              style: TextStyle(color: Colors.white),
            ),
          ),
          onTap: () => _doNavigate(index),
        ),
      ),
    );
  }
}
