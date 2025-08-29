import 'package:flutter/material.dart';

class DetailColumn extends StatelessWidget {
  const DetailColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('詳細'),
        TextField(
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
