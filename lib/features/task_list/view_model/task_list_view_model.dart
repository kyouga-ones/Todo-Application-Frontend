import 'package:flutter/material.dart';
import 'package:todo_application_frontend/features/task_list/view/task_list_screen.dart';

class TaskListViewModel extends StatefulWidget {
  const TaskListViewModel({super.key});

  @override
  State<TaskListViewModel> createState() => _TaskListViewModelState();
}

class _TaskListViewModelState extends State<TaskListViewModel> {
  @override
  Widget build(BuildContext context) {
    return TaskListScreen();
  }
}
