import 'package:todo_mvvm/data/services/local/todo_local_service.dart';
import 'package:todo_mvvm/domain/models/todo/todo.dart';
import 'package:todo_mvvm/utils/result.dart';

import 'todo_repository.dart';

class TodoRepositoryLocal implements TodoRepository {
  TodoRepositoryLocal({
    required TodoLocalService todoLocalService,
  }) : _todoLocalService = todoLocalService;

  final TodoLocalService _todoLocalService;

  @override
  Future<Result<List<Todo>>> getTodos() async {
    try {
      await Future.delayed(Duration(seconds: 2));
      final result = await _todoLocalService.getTodos();
      return Result.ok(result);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<void>> addTodo(Todo todo) async {
    try {
      final result = await _todoLocalService.addTodo(todo);
      return Result.ok(result);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<void>> updateTodo(Todo todo) async {
    try {
      final result = await _todoLocalService.updateTodo(todo);
      return Result.ok(result);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<void>> deleteTodo(int id) async {
    try {
      final result = await _todoLocalService.deleteTodo(id);
      return Result.ok(result);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
