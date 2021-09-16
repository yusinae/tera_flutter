import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Todo {
  final String title;
  final String description;
  const Todo(this.title, this.description);
}

class TodoList extends StatelessWidget {
  final todos = List.generate(20,
        (i) => Todo(
      'Todo $i',
      'A description of what needs to be done for Todo $i',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('ScreenA',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          color: Colors.grey[800],
          icon: Icon(Icons.arrow_back),
          iconSize: 20,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo: todos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  // In the constructor, require a Todo.
  const DetailScreen({Key? key, required this.todo}) : super(key: key);

  // Declare a field that holds the Todo.
  final Todo todo;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(todo.description),
      ),
    );
  }
}