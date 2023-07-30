import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n_helper.dart';
import '../../../../core/theme/themes/_interface/app_theme.dart';

Future<T?> showAppDialog<T>(
  BuildContext context, {
  String? title,
  String? content,
  Widget? prefixIcon,
  Widget Function(BuildContext context)? actions,
  bool barrierDismissible = true,
  bool showCancel = true,
}) {
  return showDialog<T?>(
    context: context,
    barrierDismissible: barrierDismissible,
    builder: (_) {
      return Dialog(
        insetPadding: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Builder(
          builder: (context) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (title != null)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                const SizedBox(height: 20),
                if (content != null)
                  Container(
                    padding: const EdgeInsets.fromLTRB(
                      20,
                      0,
                      20,
                      20,
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        if (prefixIcon != null)
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: prefixIcon,
                          ),
                        Expanded(
                          child: Text(
                            content,
                            style: context.text.s16w400,
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                const Divider(
                  height: 1,
                ),
                if (showCancel)
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          style: context.button.text1,
                          child: Text(
                            context.s.okay,
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  ),
                if (!showCancel && actions != null) actions(context),
              ],
            );
          },
        ),
      );
    },
  );
}
