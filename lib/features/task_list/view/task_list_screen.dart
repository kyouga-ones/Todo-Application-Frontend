import 'package:flutter/material.dart';
import 'package:todo_application_frontend/core/model/task_model.dart';
import 'package:todo_application_frontend/features/task_list/widget/search_card.dart';
import 'package:todo_application_frontend/features/task_list/widget/task_button.dart';
import 'package:todo_application_frontend/features/task_list/widget/task_list_view.dart';

class TaskListScreen extends StatelessWidget {
  final List<TaskModel> taskList;

  const TaskListScreen({
    super.key,
    required this.taskList,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 600),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'タスク一覧',
              style: TextStyle(),
            ),
            TaskButton(title: '作成'),
            SearchCard(),
            TaskListView(taskList: taskList),
          ],
        ),
      ),
    );
  }
}
