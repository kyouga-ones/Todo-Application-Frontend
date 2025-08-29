import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_application_frontend/core/model/task_model.dart';
import 'package:todo_application_frontend/features/form/widget/buttons_row.dart';
import 'package:todo_application_frontend/features/form/widget/detail_column.dart';
import 'package:todo_application_frontend/features/form/widget/overview_column.dart';
import 'package:todo_application_frontend/features/form/widget/status_dropdown_button.dart';

class FormScreen extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TaskModel postData;
  final void Function(String?) onOverviewChanged;
  final void Function(String?) onDetailChanged;
  final Map<String, String> statusMap;
  final void Function(String?) onStatusChanged;
  final void Function(TaskModel) onCreatePressed;
  final void Function() onClosePressed;

  const FormScreen({
    super.key,
    required this.formKey,
    required this.postData,
    required this.onOverviewChanged,
    required this.onDetailChanged,
    required this.statusMap,
    required this.onStatusChanged,
    required this.onCreatePressed,
    required this.onClosePressed,
  });

  final gap = 16.0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 600),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  OverviewColumn(
                    initialValue: postData.summary,
                    onOverviewChanged: onOverviewChanged,
                  ),
                  Gap(gap),
                  DetailColumn(
                    initialValue: postData.description,
                    onDetailChanged: onDetailChanged,
                  ),
                  Gap(gap),
                  StatusDropdownButton(
                    statusValue: postData.status,
                    statusMap: statusMap,
                    onChanged: onStatusChanged,
                  ),
                  Gap(gap),
                  ButtonsRow(
                    postData: postData,
                    onCreatePressed: onCreatePressed,
                    onClosePressed: onClosePressed,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
