import 'dart:async';

import 'package:floor/floor.dart';
// ignore: depend_on_referenced_packages
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:todo_mvvm/data/dao/todo_dao.dart';

import '../../domain/models/todo/todo.dart';

part 'database.g.dart';

@Database(version: 1, entities: [Todo])
abstract class AppDatabase extends FloorDatabase {
  TodoDao get todoDao;
}
