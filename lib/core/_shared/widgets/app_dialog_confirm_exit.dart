import 'package:flutter/material.dart';

import '../../init/app_global_keys.dart';
import '../../l10n/l10n_helper.dart';
import '../../theme/themes/_interface/app_theme.dart';
import 'app_dialog_extra.dart';

Future<T?> showAppDialogConfirmation<T>({
  void Function()? onConfirm,
  void Function()? onCancel,
}) {
  final context = AppGlobalKeys.rootNavigator.currentContext!;
  return showAppDialogExtra(
    context,
    icon: CircleAvatar(
      backgroundColor: context.color.errorBg,
      radius: 20,
      child: const Icon(Icons.exit_to_app),
    ),
    title: context.s.appExitConfirmation,
    labelConfirm: context.s.signout,
    onConfirm: (context) {
      Navigator.of(context).pop(true);
      onConfirm?.call();
    },
    labelCancel: context.s.cancel,
    onCancel: (context) {
      Navigator.of(context).pop(false);
      onCancel?.call();
    },
  );
}
