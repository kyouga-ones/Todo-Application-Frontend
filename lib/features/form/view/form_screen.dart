import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_application_frontend/features/form/widget/buttons_row.dart';
import 'package:todo_application_frontend/features/form/widget/detail_column.dart';
import 'package:todo_application_frontend/features/form/widget/overview_column.dart';
import 'package:todo_application_frontend/features/form/widget/status_dropdown_button.dart';

class FormScreen extends StatelessWidget {
  final String statusValue;
  final Map<String, String> statusMap;
  final void Function(String?) onStatusChanged;
  final void Function() onCreatePressed;
  final void Function() onClosePressed;

  const FormScreen({
    super.key,
    required this.statusValue,
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
            child: Column(
              children: [
                OverviewColumn(),
                Gap(gap),
                DetailColumn(),
                Gap(gap),
                StatusDropdownButton(
                  statusValue: statusValue,
                  statusMap: statusMap,
                  onChanged: onStatusChanged,
                ),
                Gap(gap),
                ButtonsRow(
                  onCreatePressed: onCreatePressed,
                  onClosePressed: onClosePressed,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
