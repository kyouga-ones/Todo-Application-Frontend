import 'package:flutter/material.dart';
import 'package:todo_application_frontend/home/view_model/home_view_model.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Todoアプリ'),
      ),
      body: HomeViewModel(),
    );
  }
}
