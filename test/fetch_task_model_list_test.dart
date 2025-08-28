import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_application_frontend/core/api/fetch_task_model_list.dart';

void main() {
  group('Testing App Provider', () {
    test('fetch_task_model_list_test', () async {
      var taskList = await fetchTaskModelList();
      if (kDebugMode) {
        for (var task in taskList) {
          print(task.id);
          print(task.summary);
          print(task.description);
          print(task.status);
        }
      }
    });
  });
}
