import 'package:flutter/material.dart';
import 'package:test_1/widgets/todo_item.dart';

class TodoItems extends StatelessWidget {
  const TodoItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: TodoItem(
          completed: false,
          important: true,
          description: 'this is a description',
          task: 'Testing task',
          repeat: true),
    );
  }
}
