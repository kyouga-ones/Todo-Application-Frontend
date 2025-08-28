import 'package:flutter/material.dart';
import 'package:todo_application_frontend/core/widget/loading_dialog.dart';

Future<void> loading(BuildContext context, int delayedMilliseconds) async {
  //ダイアログを呼び出す
  await showLoadingDialog(context: context);

  //100ミリ秒待つ
  await Future.delayed(Duration(milliseconds: delayedMilliseconds));

  //ダイアログを閉じる
  if (Navigator.of(context).canPop()) {
    Navigator.of(context, rootNavigator: true).pop();
  }
}
