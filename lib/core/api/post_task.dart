import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:todo_application_frontend/core/constants/backend_origin.dart';
import 'package:todo_application_frontend/core/model/task_model.dart';

Future postTask(TaskModel task) async {
  var url = Uri.parse(
    '$backendOrigin/tasks',
  );
  try {
    http.post(
      url,
      body: jsonEncode(task.toJson()),
      headers: {"Content-Type": "application/json"},
    );
  } catch (e, st) {
    print(">>> error: $e");
    print(">>> stackTrace: $st");

    postTask(task);
  }
}
