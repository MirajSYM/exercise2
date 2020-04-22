import 'package:exercise2/models/todo.dart';
import 'package:flutter/material.dart';

import '../models/todo.dart';

class TaskListScreen extends StatefulWidget {
  final Todo _todoData;
  TaskListScreen(this._todoData);
  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text(widget._todoData.title),
          centerTitle: true,
        ),
        body: ListView.separated(
          itemCount: widget._todoData.items.length,
          separatorBuilder: (context, index) => Divider(
            color: Colors.blueGrey,
          ),
          itemBuilder: (context, index) => ListTile(
            title: Text(
              'Deliverable #${index + 1}: ${widget._todoData.items[index].title}',
              style: (widget._todoData.items[index].completed)
                  ? TextStyle(decoration: TextDecoration.lineThrough)
                  : TextStyle(decoration: TextDecoration.none),
            ),
            onTap: () {
              setState(() {
                widget._todoData.items[index].completed =
                    !widget._todoData.items[index].completed;
              });
            },
            onLongPress: () {
              setState(() {
                widget._todoData.items.removeAt(index);
              });
            },
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton.extended(
              heroTag: null,
              onPressed: () => Navigator.of(context).pop(widget._todoData),
              label: Text('Update'),
              icon: Icon(Icons.check_circle),
            ),
            FloatingActionButton.extended(
              heroTag: null,
              onPressed: () => Navigator.of(context).pop(null),
              label: Text('Cancel'),
              icon: Icon(Icons.cancel),
            ),
          ],
        ),
      ),
    );
  }
}
