import 'package:flutter/material.dart';
import 'package:todo_application_frontend/core/utils/loading.dart';
import 'package:todo_application_frontend/features/form/view_model/form_view_model.dart';
import 'package:todo_application_frontend/features/home/view_model/home_view_model.dart';
import 'package:todo_application_frontend/features/task_list/view_model/task_list_view_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget screen = HomeViewModel();

  void screenChange() {
    setState(() {
      screen = TaskListViewModel(onCreatePressed: onCreatePressed);
    });
  }

  void onCreatePressed() {
    setState(() {
      screen = FormViewModel(
        changeScreen: screenChange,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  loading(context, 200);
                  screen = HomeViewModel();
                });
              },
              child: Text(
                'Todoアプリ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  loading(context, 200);
                  screen = HomeViewModel();
                });
              },
              child: Text(
                'Home',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  loading(context, 300);
                  screen = TaskListViewModel(
                    onCreatePressed: onCreatePressed,
                  );
                });
              },
              child: Text(
                'タスク一覧',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      body: screen,
    );
  }
}
