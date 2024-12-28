import 'package:floor/floor.dart';
import 'package:todo_mvvm/domain/models/todo/todo.dart';

@dao
abstract class TodoDao {
  @Query('SELECT * FROM todo')
  Future<List<Todo>> findAllTodo();

  @insert
  Future<void> insertTodo(Todo todo);
}
