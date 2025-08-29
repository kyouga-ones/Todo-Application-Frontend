import 'package:flutter/material.dart';
import 'package:todo_application_frontend/core/api/fetch_task_model_list.dart';
import 'package:todo_application_frontend/core/model/task_model.dart';
import 'package:todo_application_frontend/features/task_list/view/task_list_screen.dart';

class TaskListViewModel extends StatefulWidget {
  final void Function() onCreatePressed;

  const TaskListViewModel({
    super.key,
    required this.onCreatePressed,
  });

  @override
  State<TaskListViewModel> createState() => _TaskListViewModelState();
}

class _TaskListViewModelState extends State<TaskListViewModel> {
  var taskList = <TaskModel>[];

  @override
  void initState() {
    super.initState();
    () async {
      taskList = await fetchTaskModelList();
      setState(() {});
    }();
  }

  @override
  Widget build(BuildContext context) {
    return TaskListScreen(
      taskList: taskList,
      onCreatePressed: widget.onCreatePressed,
    );
  }
}
