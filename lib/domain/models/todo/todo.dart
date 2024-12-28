import 'package:floor/floor.dart';

@entity
class Todo {
  @primaryKey
  final int id;
  final String title;
  final String description;

  Todo({
    required this.id,
    required this.title,
    required this.description,
  });
}
