import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_application_frontend/core/model/task_model.dart';

class ButtonsRow extends StatelessWidget {
  final TaskModel postData;
  final void Function(TaskModel) onCreatePressed;
  final void Function() onClosePressed;

  const ButtonsRow({
    super.key,
    required this.postData,
    required this.onCreatePressed,
    required this.onClosePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF0d6efd),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            onCreatePressed(postData);
          },
          child: Text('作成'),
        ),
        Gap(8),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF6c757d),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: onClosePressed,
          child: Text('閉じる'),
        ),
      ],
    );
  }
}
