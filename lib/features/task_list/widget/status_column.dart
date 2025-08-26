import 'package:flutter/material.dart';

class StatusColumn extends StatelessWidget {
  const StatusColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('ステータス'),
      ],
    );
  }
}
