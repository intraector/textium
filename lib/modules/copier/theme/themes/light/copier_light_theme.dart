import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../core/theme/themes/_interface/app_theme.dart';
import 'theme_button_styles.dart';
import 'theme_colors.dart';
import 'theme_text_styles.dart';

class CopierLightTheme implements AppTheme {
  @override
  late final data = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    primaryColor: _color.accent,
    colorScheme: ColorScheme.fromSeed(
      seedColor: _color.accent,
      error: _color.error,
    ),
    hintColor: _color.grey700,
    canvasColor: _color.background,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: _button.elevated1,
    ),
    textButtonTheme: TextButtonThemeData(
      style: _button.text1,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: _button.outline1,
    ),
    textTheme: TextTheme(
      bodyLarge: _text.s14w400,
      bodyMedium: _text.s14w400,
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: _color.accent,
      linearMinHeight: 2,
    ),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: _color.background,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    ),
    extensions: <ThemeExtension>[
      _color,
      _text,
      _button,
    ],
  );

  late final _button = ThemeButtonStyles(_color, _text);
  final _color = const ThemeColors();
  late final _text = ThemeTextStyles(_color);

  @override
  String get id => 'CopierLightTheme';

  @override
  String get name => 'Copier Light';
}
