import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:todo_mvvm/data/repositories/auth/auth_repository.dart';
import 'package:todo_mvvm/data/repositories/auth/auth_repository_local.dart';
import 'package:todo_mvvm/data/repositories/auth/auth_repository_remote.dart';
import 'package:todo_mvvm/data/repositories/todo/todo_repository.dart';
import 'package:todo_mvvm/data/repositories/todo/todo_repository_local.dart';
import 'package:todo_mvvm/data/repositories/todo/todo_repository_remote.dart';

/// Shared providers for all configurations.
List<SingleChildWidget> _sharedProviders = [];

List<SingleChildWidget> get providersRemote {
  return [
    //! Add your remote providers here
    Provider(
      create: (_) => AuthRepositoryRemote() as AuthRepository,
    ),
    Provider(
      create: (_) => TodoRepositoryRemote() as TodoRepository,
    ),
    ..._sharedProviders,
  ];
}

List<SingleChildWidget> get providersLocal {
  return [
    //! Add your local providers here
    Provider(
      create: (_) => AuthRepositoryLocal() as AuthRepository,
    ),
    Provider(
      create: (_) => TodoRepositoryLocal() as TodoRepository,
    ),
    ..._sharedProviders,
  ];
}
