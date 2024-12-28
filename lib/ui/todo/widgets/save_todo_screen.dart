import 'package:flutter/material.dart';
import 'package:todo_mvvm/ui/todo/view_model/save_todo_view_model.dart';

class SaveTodoScreen extends StatelessWidget {
  final SaveTodoViewModel viewModel;

  const SaveTodoScreen({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Create a task',
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(15),
          child: Column(
            spacing: 10,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Title',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Description',
                ),
                maxLines: null,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
