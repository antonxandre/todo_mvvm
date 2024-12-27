import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:todo_mvvm/config/dependencies.dart';
import 'package:todo_mvvm/main.dart';

/// Development config entry point.
/// Launch with `flutter run --target lib/main_development.dart`.
/// Uses local data.
///
void main() {
  runApp(
    MultiProvider(
      providers: providersLocal,
      child: const MainApp(),
    ),
  );
}
