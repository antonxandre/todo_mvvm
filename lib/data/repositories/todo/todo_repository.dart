import 'package:todo_mvvm/domain/models/todo/todo.dart';

import '../../../utils/result.dart';

abstract class TodoRepository {
  Future<Result<List<Todo>>> getTodos();

  Future<Result<void>> addTodo(Todo todo);

  Future<Result<void>> updateTodo(
    Todo todo,
  );

  Future<Result<void>> deleteTodo(
    int id,
  );
}
