import 'package:flutter/material.dart';

import '../../../core/l10n/l10n_helper.dart';
import '../../../core/theme/themes/_interface/app_theme.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({
    super.key,
    this.message,
    this.subMessage,
    this.onRetry,
    this.buttonLabel,
    this.content,
    this.header,
  });

  final String? buttonLabel;
  final Widget? content;
  final Widget? header;
  final String? message;
  final VoidCallback? onRetry;
  final String? subMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        children: [
          if (header != null) header!,
          Icon(
            Icons.error_outline_rounded,
            size: 48,
            color: context.color.grey900,
          ),
          const SizedBox(height: 16),
          if (content != null)
            Row(
              children: [
                Expanded(child: content!),
              ],
            ),
          if (content == null)
            Text(
              message ?? context.s.somethingWentWrong,
              style: context.text.h20w700,
              textAlign: TextAlign.center,
            ),
          if (content == null && subMessage != null)
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                subMessage!,
                style: context.text.s14w400.copyWith(
                  color: context.color.grey900,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          if (onRetry != null)
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
              ),
              child: ElevatedButton(
                style: context.button.text4,
                onPressed: onRetry,
                child: Text(
                  buttonLabel ?? context.s.tryAgain,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
