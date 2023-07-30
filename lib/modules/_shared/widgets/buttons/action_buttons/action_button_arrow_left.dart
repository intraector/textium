import 'package:flutter/material.dart';

import '../../../../../core/theme/themes/_interface/app_theme.dart';

class ActionButtonArrowLeft extends StatelessWidget {
  const ActionButtonArrowLeft({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Icon(
        Icons.chevron_left,
        color: context.color.accent,
        size: 32,
      ),
    );
  }
}
