import 'package:flutter/material.dart';

import '../../../core/l10n/l10n_helper.dart';
import '../../../core/theme/themes/_interface/app_theme.dart';

class TryAgainWidget extends StatelessWidget {
  const TryAgainWidget({
    required this.onPressed,
    required this.errorMessage,
    super.key,
  });

  final String errorMessage;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${context.s.error}:'),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: Text(
                errorMessage,
                textAlign: TextAlign.center,
                style: context.text.error,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          style: context.button.elevated2,
          onPressed: onPressed,
          child: Text(context.s.tryAgain),
        ),
      ],
    );
  }
}
