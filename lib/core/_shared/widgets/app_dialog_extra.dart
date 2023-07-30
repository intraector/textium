import 'package:flutter/material.dart';

import '../../theme/themes/_interface/app_theme.dart';

Future<T?> showAppDialogExtra<T>(
  BuildContext context, {
  String? title,
  Widget? titleWidget,
  String? body,
  Widget? icon,
  bool barrierDismissible = true,
  String? labelConfirm,
  String? labelCancel,
  void Function(BuildContext)? onConfirm,
  void Function(BuildContext)? onCancel,
}) {
  return showDialog<T?>(
    context: context,
    barrierDismissible: barrierDismissible,
    builder: (_) {
      return WillPopScope(
        onWillPop: () async => false,
        child: Dialog(
          insetPadding: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Builder(
            builder: (context) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: IntrinsicHeight(
                      child: Row(
                        children: [
                          if (icon != null)
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: icon,
                              ),
                            ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (title != null || titleWidget != null)
                                  Row(
                                    children: [
                                      Expanded(
                                        child: titleWidget ??
                                            Text(
                                              title!,
                                              style: context.text.h16w700,
                                            ),
                                      ),
                                    ],
                                  ),
                                if ((title != null || titleWidget != null) && body != null) const SizedBox(height: 16),
                                if (body != null)
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          body,
                                          style: context.text.s14w400.copyWith(
                                            color: context.color.grey900,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(height: 1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                            right: 8,
                          ),
                          child: labelCancel == null
                              ? null
                              : Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: FittedBox(
                                    child: TextButton(
                                      style: context.button.text2,
                                      child: Text(
                                        labelCancel,
                                        textAlign: TextAlign.center,
                                      ),
                                      onPressed: () => onCancel?.call(context),
                                    ),
                                  ),
                                ),
                        ),
                      ),
                      if (labelConfirm != null)
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                            right: 16,
                          ),
                          child: TextButton(
                            style: context.button.text1,
                            child: Text(
                              labelConfirm,
                              textAlign: TextAlign.center,
                              softWrap: false,
                              overflow: TextOverflow.ellipsis,
                            ),
                            onPressed: () => onConfirm?.call(context),
                          ),
                        ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      );
    },
  );
}
