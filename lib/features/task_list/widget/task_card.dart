import 'package:flutter/material.dart';
import 'package:todo_application_frontend/core/model/task_model.dart';

class TaskCard extends StatelessWidget {
  final TaskModel task;
  const TaskCard({
    super.key,
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Text(task.id.toString()),
          Text(task.summary),
          Text(task.description),
          Text(task.status),
        ],
      ),
    );
  }
}
