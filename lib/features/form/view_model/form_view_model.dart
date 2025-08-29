import 'package:flutter/material.dart';
import 'package:todo_application_frontend/core/api/post_task.dart';
import 'package:todo_application_frontend/core/constants/map.dart';
import 'package:todo_application_frontend/core/model/task_model.dart';
import 'package:todo_application_frontend/features/form/view/form_screen.dart';

class FormViewModel extends StatefulWidget {
  final void Function() changeScreen;

  const FormViewModel({
    super.key,
    required this.changeScreen,
  });

  @override
  State<FormViewModel> createState() => _FormViewModelState();
}

class _FormViewModelState extends State<FormViewModel> {
  final _formKey = GlobalKey<FormState>();

  var postData = TaskModel(
    summary: '',
    description: null,
    status: 'TODO',
  );

  void onOverviewChanged(String? value) {
    setState(() {
      postData.summary = value!;
    });
  }

  void onDetailChanged(String? value) {
    setState(() {
      postData.description = value!;
    });
  }

  void onStatusChanged(String? value) {
    if (value == null) return;
    setState(() {
      postData.status = value;
    });
  }

  void onCreatePressed(TaskModel task) {
    if (_formKey.currentState!.validate()) {
      postTask(task);
      widget.changeScreen();
    }
  }

  void onClosePressed() {
    widget.changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return FormScreen(
      formKey: _formKey,
      postData: postData,
      onOverviewChanged: onOverviewChanged,
      onDetailChanged: onDetailChanged,
      statusMap: statusMap,
      onStatusChanged: onStatusChanged,
      onCreatePressed: onCreatePressed,
      onClosePressed: onClosePressed,
    );
  }
}
