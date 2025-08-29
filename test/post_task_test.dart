import 'package:flutter_test/flutter_test.dart';
import 'package:todo_application_frontend/core/api/post_task.dart';
import 'package:todo_application_frontend/core/model/task_model.dart';

void main() {
  group('Testing App Provider', () {
    test('post_tasktest', () async {
      await postTask(
        TaskModel(summary: 'test', description: 'テスト', status: 'TODO'),
      );
    });
  });
}
