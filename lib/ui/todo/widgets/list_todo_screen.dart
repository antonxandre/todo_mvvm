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
      body: ListenableBuilder(
        listenable: viewModel.load,
        builder: (context, child) {
          if (viewModel.load.running) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (viewModel.load.error) {
            return Center(
              child: Text('Failed to load todos'),
            );
          }
          return Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  context.push(Routes.createTodo);
                },
                child: Text('Add Todo'),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: viewModel.todos.length,
                itemBuilder: (context, index) {
                  final todo = viewModel.todos[index];
                  return Text(
                    todo.title,
                  );
                },
              )
            ],
          );
        },
      ),
    );
  }
}
