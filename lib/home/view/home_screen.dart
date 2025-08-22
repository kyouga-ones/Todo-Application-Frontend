import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'タスク管理のお手伝いをします',
            textAlign: TextAlign.center,
          ),
          Text(
            'タスク管理のお手伝いをします',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
