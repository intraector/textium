import 'package:flutter/material.dart';

Future<T?> showAppCustomDialog<T>(
  BuildContext context, {
  required Widget body,
  bool barrierDismissible = true,
}) {
  return showDialog<T?>(
    context: context,
    barrierDismissible: barrierDismissible,
    barrierColor: Colors.white54,
    builder: (context) {
      return Dialog(
        insetPadding: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: body,
      );
    },
  );
}
