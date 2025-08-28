import 'package:flutter/material.dart';

class OverviewColumn extends StatelessWidget {
  const OverviewColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('概要'),
        TextField(
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: '概要',
          ),
        ),
      ],
    );
  }
}
