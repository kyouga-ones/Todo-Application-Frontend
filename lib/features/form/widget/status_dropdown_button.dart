import 'package:flutter/material.dart';

class StatusDropdownButton extends StatelessWidget {
  final String statusValue;
  final Map<String, String> statusMap;
  final void Function(String?) onChanged;

  const StatusDropdownButton({
    super.key,
    required this.statusValue,
    required this.statusMap,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(border: OutlineInputBorder()),
      value: statusValue,
      isExpanded: true,
      items: statusMap.entries
          .map(
            (entry) => DropdownMenuItem<String>(
              value: entry.value,
              child: Text(entry.key),
            ),
          )
          .toList(),
      onChanged: onChanged,
    );
  }
}
