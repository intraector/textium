import 'package:flutter/material.dart';

class ActionButtonSignOut extends StatelessWidget {
  const ActionButtonSignOut({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: onPressed, child: const Icon(Icons.logout));
  }
}
