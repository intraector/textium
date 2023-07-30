import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/init/app_global_keys.dart';
import 'core/init/app_module_swticher.dart';
import 'core/init/core_di.dart';
import 'core/init/ui/splash_screen.dart';
import 'core/l10n/generated/l10n.dart';
import 'core/l10n/locale_repo.dart';
import 'core/theme/repo/theme_repo.dart';
import 'core/theme/themes/_interface/app_theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppModuleSwticher(
      child: ValueListenableBuilder<AppTheme>(
        valueListenable: CoreDi.get<ThemeRepo>().theme,
        builder: (context, theme, _) {
          return ValueListenableBuilder<Locale>(
            valueListenable: CoreDi.get<LocaleRepo>().locale,
            builder: (context, locale, _) {
              return MaterialApp(
                key: const ValueKey('App'),
                scaffoldMessengerKey: AppGlobalKeys.scaffoldMessenger,
                debugShowCheckedModeBanner: false,
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                ],
                locale: locale,
                supportedLocales: S.delegate.supportedLocales,
                title: 'Textium',
                home: const SplashScreen(),
                theme: theme.data,
                navigatorKey: AppGlobalKeys.rootNavigator,
              );
            },
          );
        },
      ),
    );
  }
}
