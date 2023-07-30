import 'package:flutter/material.dart';

import '../../../../l10n/l10n_helper.dart';
import '../../../../theme/themes/_interface/app_theme.dart';

class ArrowLeadingButton extends StatelessWidget {
  const ArrowLeadingButton({super.key, this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Semantics(
        label: context.s.comeBack,
        child: const Icon(Icons.chevron_left),
      ),
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
