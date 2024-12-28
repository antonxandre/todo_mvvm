import 'package:todo_mvvm/domain/models/todo/todo.dart';
import 'package:todo_mvvm/utils/result.dart';

import 'todo_repository.dart';

/// Remote implementation of TodoRepository
class TodoRepositoryRemote implements TodoRepository {
// In the constructor, you can add the dependencies needed to access the remote data
// TodoRepositoryRemote({
//    required ApiClient apiClient,
//  }) : _apiClient = apiClient;

//  final ApiClient _apiClient;

  @override
  Future<Result<List<Todo>>> getTodos() async {
    return Result.ok([]);
  }

  @override
  Future<Result<void>> addTodo(Todo todo) async {
    //TODO implement addTodo
    return Result.ok(null);
  }

  @override
  Future<Result<void>> updateTodo(
    Todo todo,
  ) async {
    //TODO implement updateTodo
    return Result.ok(null);
  }

  @override
  Future<Result<void>> deleteTodo(
    int id,
  ) async {
    //TODO implement deleteTodo
    return Result.ok(null);
  }
}
