import 'package:flutter/material.dart';
import 'package:todo_mvvm/data/repositories/todo/todo_repository.dart';
import 'package:todo_mvvm/domain/models/todo/todo.dart';
import 'package:todo_mvvm/utils/command.dart';
import 'package:todo_mvvm/utils/result.dart';

class ListTodoViewModel extends ChangeNotifier {
  ListTodoViewModel({required TodoRepository todoRepository})
      : _todoRepository = todoRepository {
    load = Command0(_load)..execute();
    //TODO: Implement addTodo
    // addTodo = Command1(_addTodo);
  }

  late Command0 load;
  late Command1<void, Todo> addTodo;

  final TodoRepository _todoRepository;

  List<Todo> _todos = [];
  List<Todo> get todos => _todos;

  Future<Result> _load() async {
    try {
      final result = await _todoRepository.getTodos();

      switch (result) {
        case Ok<List<Todo>>():
          _todos = result.value;
          break;
        case Error<void>():
          break;
      }
      return result;
    } finally {
      notifyListeners();
    }
  }
}
