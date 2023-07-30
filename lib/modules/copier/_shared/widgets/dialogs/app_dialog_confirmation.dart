import 'package:flutter/material.dart';

import '../../../../../core/l10n/l10n_helper.dart';
import '../../../../../core/theme/themes/_interface/app_theme.dart';
import '../../../../_shared/widgets/dialogs/app_dialog.dart';

Future<bool?> showAppDialogConfirm(
  BuildContext context, {
  required String labelConfirm,
  String? body,
  bool barrierDismissible = true,
  Widget? icon,
  void Function(BuildContext)? onConfirm,
}) {
  return showAppDialog<bool?>(
    context,
    content: body,
    prefixIcon: icon,
    showCancel: false,
    barrierDismissible: barrierDismissible,
    actions: (context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 8),
            child: TextButton(
              style: context.button.text2,
              child: Text(
                context.s.cancel,
                textAlign: TextAlign.center,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 16),
            child: TextButton(
              style: context.button.text1,
              child: Text(
                labelConfirm,
                textAlign: TextAlign.left,
              ),
              onPressed: () {
                Navigator.of(context).pop(true);
                onConfirm?.call(context);
              },
            ),
          ),
        ],
      );
    },
  );
}
