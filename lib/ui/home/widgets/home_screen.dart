import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_mvvm/routing/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Home Screen',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(Routes.todo);
        },
        child: Icon(Icons.document_scanner),
      ),
    );
  }
}
