import 'package:flutter/material.dart';
import 'package:todo_application_frontend/core/model/task_model.dart';
import 'package:todo_application_frontend/features/task_list/widget/task_card.dart';

class TaskListView extends StatelessWidget {
  final List<TaskModel> taskList;

  const TaskListView({
    super.key,
    required this.taskList,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: taskList.asMap().entries.map((entry) {
          final task = entry.value;
          return TaskCard(task: task);
        }).toList(),
      ),
    );
  }
}
