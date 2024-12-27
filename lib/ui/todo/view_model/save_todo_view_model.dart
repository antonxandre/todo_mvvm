import 'package:flutter/material.dart';
import 'package:todo_mvvm/data/repositories/todo/todo_repository.dart';

class SaveTodoViewModel extends ChangeNotifier {
  SaveTodoViewModel({
    required TodoRepository todoRepository,
  }) : _todoRepository = todoRepository;

  final TodoRepository _todoRepository;
}
