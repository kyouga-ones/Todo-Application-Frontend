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
        actions: [],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Todoアプリ',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Home', style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: () {},
              child: Text('タスク一覧', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
      body: HomeViewModel(),
    );
  }
}
