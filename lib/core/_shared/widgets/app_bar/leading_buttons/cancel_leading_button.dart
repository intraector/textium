import 'package:flutter/material.dart';

import '../../../../theme/themes/_interface/app_theme.dart';

class CancelLeadingButton extends StatelessWidget {
  const CancelLeadingButton({super.key, this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.cancel),
      color: context.color.textPrimary,
      tooltip: MaterialLocalizations.of(context).backButtonTooltip,
      onPressed: () {
        FocusScope.of(context).unfocus();
        if (onPressed == null) {
          Navigator.maybePop(context);
        } else {
          onPressed?.call();
        }
      },
    );
  }
}
