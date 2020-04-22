// Create some mock data of a list of todos, as well as mock data of task list for each todo item.
// Create your own mock data.
import 'task.dart';
import 'todo.dart';

List<Todo> mockData = [
  Todo(title: 'MAP Projects', items: [
    Task(title: 'Project proposal and design', completed: true),
    Task(title: 'Prototype 1', completed: false),
    Task(title: 'Prototype 2', completed: true),
    Task(title: 'Backend', completed: false),
    Task(title: 'Release version', completed: true),
  ]),
  Todo(title: 'Preparing for online learning', items: [
    Task(title: 'Notes', completed: true),
    Task(title: 'Good Network', completed: false),
    Task(title: 'Work place', completed: true),
    Task(title: 'setting routine', completed: false),
  ]),
  Todo(title: 'Things to do this weekend', items: [
    Task(title: 'Grocery', completed: false),
    Task(title: 'Prepare for test', completed: true),
    Task(title: 'Project', completed: false),
  ]),
];
