import 'package:flutter/material.dart';

Future<void> showLoadingDialog({
  required BuildContext context,
}) async {
  showGeneralDialog(
    context: context,
    barrierDismissible: false,
    transitionDuration: const Duration(milliseconds: 250),
    barrierColor: Colors.black.withValues(alpha: 0.5),
    pageBuilder:
        (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
        ) {
          return PopScope(
            canPop: false,
            onPopInvokedWithResult: (didPop, resilt) {},
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircularProgressIndicator(),
                ],
              ),
            ),
          );
        },
  );
}
