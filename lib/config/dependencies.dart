import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:todo_mvvm/data/repositories/todo/todo_repository.dart';
import 'package:todo_mvvm/data/repositories/todo/todo_repository_local.dart';
import 'package:todo_mvvm/data/repositories/todo/todo_repository_remote.dart';
import 'package:todo_mvvm/data/services/local/todo_local_service.dart';

/// Shared providers for all configurations.
List<SingleChildWidget> _sharedProviders = [];

List<SingleChildWidget> get providersRemote {
  return [
    //! Add your remote providers here
    /*Provider(
      create: (context) => AuthRepositoryRemote() as AuthRepository,
    ),*/
    Provider(
      create: (context) => TodoRepositoryRemote() as TodoRepository,
    ),
    ..._sharedProviders,
  ];
}

List<SingleChildWidget> get providersLocal {
  return [
    //! Add your local providers here
    /* Provider(
      create: (context) => AuthRepositoryLocal() as AuthRepository,
    ),*/
    Provider(
      create: (context) => TodoLocalService(),
    ),
    Provider(
      create: (context) => TodoRepositoryLocal(
        todoLocalService: context.read(),
      ) as TodoRepository,
    ),
    ..._sharedProviders,
  ];
}
