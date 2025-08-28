import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_application_frontend/features/task_list/widget/overview_column.dart';
import 'package:todo_application_frontend/features/task_list/widget/task_button.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key});

  final gap = 16.0;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('検索'),
            Gap(gap),
            OverviewColumn(),
            Gap(gap),
            TaskButton(title: '検索'),
          ],
        ),
      ),
    );
  }
}
