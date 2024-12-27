import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:todo_mvvm/config/dependencies.dart';
import 'package:todo_mvvm/data/repositories/auth/auth_repository_remote.dart';
import 'package:todo_mvvm/main.dart';
import 'package:todo_mvvm/routing/router.dart';

/// Development config entry point.
/// Launch with `flutter run --target lib/main_development.dart`.
/// Uses local data.
///
void main() {
  final authRepositoryRemote = AuthRepositoryRemote();
  final appRouter = AppRouter(authRepository: authRepositoryRemote);
  runApp(
    MultiProvider(
      providers: providersLocal
        ..add(
          Provider.value(value: authRepositoryRemote),
        ),
      child: MainApp(
        appRouter: appRouter,
      ),
    ),
  );
}
