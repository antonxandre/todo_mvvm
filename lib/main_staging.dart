import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:todo_mvvm/config/dependencies.dart';
import 'package:todo_mvvm/main.dart';

void main() {
  runApp(
    MultiProvider(
      providers: providersRemote,
      child: const MainApp(),
    ),
  );
}
