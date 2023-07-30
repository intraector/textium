import 'package:flutter/material.dart';

import '../../../theme/themes/_interface/app_theme.dart';

class AppTabBar extends TabBar {
  AppTabBar({
    required super.tabs,
    required ThemeData theme,
    super.key,
    super.controller,
    super.padding = EdgeInsets.zero,
    super.labelPadding = const EdgeInsets.symmetric(
      horizontal: 10,
    ),
  }) : super(
          isScrollable: true,
          unselectedLabelColor: theme.color.grey700,
          unselectedLabelStyle: theme.text.s16w600.copyWith(
            color: theme.color.accent,
          ),
          labelStyle: theme.text.s16w600.copyWith(
            color: theme.color.accent,
          ),
          labelColor: theme.color.accent,
          splashBorderRadius: BorderRadius.circular(12),
          indicator: BoxDecoration(
            color: theme.color.accentBg,
            border: Border.all(
              color: theme.color.accent,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        );

  AppTabBar.chips({
    required super.tabs,
    required BuildContext context,
    super.key,
    super.controller,
    super.padding = EdgeInsets.zero,
  }) : super(
          labelPadding: EdgeInsets.zero,
          indicatorPadding: EdgeInsets.zero,
          indicatorSize: TabBarIndicatorSize.label,
          isScrollable: true,
          unselectedLabelColor: context.color.textPrimary,
          unselectedLabelStyle: context.text.s16w400.copyWith(
            fontFamily: 'Montserrat Alternates',
          ),
          labelStyle: context.text.s16w400.copyWith(
            fontFamily: 'Montserrat Alternates',
          ),
          labelColor: context.color.textPrimary,
          splashBorderRadius: BorderRadius.circular(25),
          indicator: BoxDecoration(
            color: context.color.accentBg,
            border: Border.all(
              color: context.color.accent,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        );
}
