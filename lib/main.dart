import 'package:flutter/material.dart';
import 'package:todo_mvvm/routing/router.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: appRouter.router,
    );
  }
}
