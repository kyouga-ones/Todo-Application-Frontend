import 'package:flutter/material.dart';

class DetailColumn extends StatelessWidget {
  final String? initialValue;
  final void Function(String? value) onDetailChanged;

  const DetailColumn({
    super.key,
    this.initialValue,
    required this.onDetailChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('詳細'),
        TextFormField(
          initialValue: initialValue,
          onChanged: onDetailChanged,
          keyboardType: TextInputType.multiline,
          minLines: 10,
          maxLines: null,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
