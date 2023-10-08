import 'package:flutter/material.dart';
import 'package:test_1/widgets/todo_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const TodoItems(),
    );
  }
}
