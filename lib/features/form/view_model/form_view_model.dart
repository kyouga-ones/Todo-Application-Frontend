import 'package:flutter/material.dart';
import 'package:todo_application_frontend/core/constants/map.dart';
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
  var statusValue = statusMap.values.first;

  void onStatusChanged(String? value) {
    if (value == null) return;
    setState(() {
      statusValue = value;
    });
  }

  void onCreatePressed() {
    widget.changeScreen();
  }

  void onClosePressed() {
    widget.changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return FormScreen(
      statusValue: statusValue,
      statusMap: statusMap,
      onStatusChanged: onStatusChanged,
      onCreatePressed: onCreatePressed,
      onClosePressed: onClosePressed,
    );
  }
}
