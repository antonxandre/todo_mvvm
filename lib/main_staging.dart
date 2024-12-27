import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:todo_mvvm/config/dependencies.dart';
import 'package:todo_mvvm/data/repositories/auth/auth_repository_local.dart';
import 'package:todo_mvvm/main.dart';
import 'package:todo_mvvm/routing/router.dart';

void main() {
  final authRepositoryLocal = AuthRepositoryLocal();
  final appRouter = AppRouter(authRepository: authRepositoryLocal);
  runApp(
    MultiProvider(
      providers: providersRemote
        ..add(
          Provider.value(value: authRepositoryLocal),
        ),
      child: MainApp(
        appRouter: appRouter,
      ),
    ),
  );
}
