import 'package:flutter/material.dart';
import 'package:todo_mvvm/routing/router.dart';
import 'package:todo_mvvm/ui/core/themes/theme.dart';
import 'main_development.dart' as development;

void main() {
  development.main();
}

class MainApp extends StatelessWidget {
  final AppRouter appRouter;
  const MainApp({
    required this.appRouter,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Tasks',
      theme: AppTheme.lightTheme,
      routerConfig: appRouter.router,
    );
  }
}
