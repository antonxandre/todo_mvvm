import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:todo_mvvm/data/repositories/auth/auth_repository.dart';
import 'package:todo_mvvm/routing/routes.dart';
import 'package:todo_mvvm/ui/home/widgets/home_screen.dart';
import 'package:todo_mvvm/ui/todo/view_model/save_todo_view_model.dart';
import 'package:todo_mvvm/ui/todo/widgets/save_todo_screen.dart';

GoRouter router(AuthRepository authRepository) => GoRouter(
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
            return const HomeScreen();
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'create',
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
        ),
      ],
    );
