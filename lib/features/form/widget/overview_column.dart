import 'package:flutter/material.dart';

class OverviewColumn extends StatelessWidget {
  final String? initialValue;
  final void Function(String?) onOverviewChanged;

  const OverviewColumn({
    super.key,
    required this.initialValue,
    required this.onOverviewChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('概要'),
        TextFormField(
          initialValue: initialValue,
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
          onChanged: onOverviewChanged,
          validator: (value) {
            if (value == null || value.isEmpty || value == '') {
              return '空白は許可されていません。';
            } else if (value.length > 256) {
              return '256文字以内で入力してください。';
            }
            return null;
          },
        ),
      ],
    );
  }
}
