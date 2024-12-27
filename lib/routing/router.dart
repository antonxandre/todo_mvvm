import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:todo_mvvm/data/repositories/auth/auth_repository.dart';
import 'package:todo_mvvm/routing/routes.dart';
import 'package:todo_mvvm/ui/home/widgets/home_screen.dart';
import 'package:todo_mvvm/ui/todo/view_model/list_todo_view_model.dart';
import 'package:todo_mvvm/ui/todo/view_model/save_todo_view_model.dart';
import 'package:todo_mvvm/ui/todo/widgets/list_todo_screen.dart';
import 'package:todo_mvvm/ui/todo/widgets/save_todo_screen.dart';

final _navigationKey = GlobalKey<NavigatorState>();

class AppRouter {
  final AuthRepository authRepository;

  AppRouter({
    required this.authRepository,
  });

  late final GoRouter _router = GoRouter(
    navigatorKey: _navigationKey,
    debugLogDiagnostics: true,
    initialLocation: Routes.home,
    routes: <RouteBase>[
      GoRoute(
        path: Routes.home,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        path: Routes.todo,
        builder: (BuildContext context, GoRouterState state) {
          final viewModel = ListTodoViewModel();
          return ListTodoScreen(
            viewModel: viewModel,
          );
        },
        routes: <RouteBase>[],
      ),
      GoRoute(
        path: Routes.createTodo,
        builder: (context, state) {
          final viewModel = SaveTodoViewModel(
            todoRepository: context.read(),
          );
          return SaveTodoScreen(
            viewModel: viewModel,
          );
        },
      ),
    ],
  );

  GoRouter get router => _router;
}
