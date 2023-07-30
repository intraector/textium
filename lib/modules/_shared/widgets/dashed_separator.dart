import 'package:flutter/material.dart';

import '../../../core/theme/themes/_interface/app_theme.dart';

class DashedSeparator extends StatelessWidget {
  const DashedSeparator({
    super.key,
    this.height = 2,
    this.dashWidth = 4,
    this.color,
  });

  final Color? color;
  final double dashWidth;
  final double height;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            dashCount,
            (_) {
              return SizedBox(
                width: dashWidth,
                height: dashHeight,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: color ?? context.color.grey300,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
