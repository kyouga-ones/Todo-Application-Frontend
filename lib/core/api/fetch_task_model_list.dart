import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:todo_application_frontend/core/constants/backend_origin.dart';
import 'package:todo_application_frontend/core/model/task_model.dart';

Future<List<TaskModel>> fetchTaskModelList() async {
  var url = Uri.parse(
    '$backendOrigin/tasks',
  );

  try {
    var response = await http.get(url);

    var l = json.decode(response.body) as List<dynamic>;
    var taskList = l.map((groupData) => TaskModel.fromJson(groupData));

    return taskList.toList();
  } catch (e, st) {
    print(">>> error: $e");
    print(">>> stackTrace: $st");

    return fetchTaskModelList();
  }
}
