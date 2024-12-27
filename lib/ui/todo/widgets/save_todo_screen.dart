import 'package:flutter/material.dart';
import 'package:todo_mvvm/ui/todo/view_model/save_todo_view_model.dart';

class SaveTodoScreen extends StatelessWidget {
  final SaveTodoViewModel viewModel;

  const SaveTodoScreen({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create a task'),
      ),
    );
  }
}
