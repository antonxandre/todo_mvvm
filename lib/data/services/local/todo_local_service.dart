import '../../../domain/models/todo/todo.dart';
import '../../database/database.dart';

class TodoLocalService {
  Future<List<Todo>> getTodos() async {
    final database =
        await $FloorAppDatabase.databaseBuilder('app_database.db').build();

    final personDao = database.todoDao;

    final result = await personDao.findAllTodo();
    return result;
  }

  Future<void> addTodo(Todo todo) async {
    // Add todo to local storage
  }

  Future<void> updateTodo(Todo todo) async {
    // Update todo in local storage
  }

  Future<void> deleteTodo(int id) async {
    // Delete todo from local storage
  }
}
