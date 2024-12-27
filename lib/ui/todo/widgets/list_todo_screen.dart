import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_mvvm/routing/routes.dart';

import '../view_model/list_todo_view_model.dart';

class ListTodoScreen extends StatelessWidget {
  final ListTodoViewModel viewModel;

  const ListTodoScreen({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              context.push(Routes.createTodo);
            },
            child: Text('Add Todo'),
          ),
          ListView(
            shrinkWrap: true,
            children: [
              Text('Todo 1'),
              Text('Todo 2'),
            ],
          )
        ],
      ),
    );
  }
}
