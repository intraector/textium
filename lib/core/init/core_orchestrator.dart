import 'package:firebase_core/firebase_core.dart';

import '../firebase_token/repo/fb_token_repo.dart';
import '../firebase_token/repo/utils/mapper.dart';
import '../l10n/locale_repo.dart';
import '../settings/data/repo/core_settings_repo.dart';
import '../settings/data/repo/utils/mapper.dart';
import '../theme/repo/theme_repo.dart';
import 'core_di.dart';

class CoreOrchestrator {
  static void init() {
    CoreSettingsRepoMapper(
      repo: CoreDi.get(),
      onServerChange: (isProduction) {
        // CoreDi.get<AuthGateway>().isProduction = isProduction;
      },
      onLocaleChange: (locale) {
        // CoreDi.get<AuthGateway>().localeCode = locale?.code;
        CoreDi.get<LocaleRepo>().apply(locale?.code);
      },
      onThemeChange: (themeId) {
        CoreDi.get<ThemeRepo>().apply(themeId);
      },
      onPushEnabledChange: (isEnabled) {
        if (isEnabled) {
          CoreDi.get<FbTokenRepo>().switchOn();
        } else {
          CoreDi.get<FbTokenRepo>().switchOff();
        }
      },
    );

    FbTokenRepoMapper(
      repo: CoreDi.get(),
      onSwitch: (isEnabled) {
        CoreDi.get<CoreSettingsRepo>().apply(
          CoreSettings(
            isPushEnabled: isEnabled,
            silent: true,
          ),
        );
      },
      onError: (error) {
        //on error change core setting to previous state
        final triedToSwitchTo = switch (error.type) {
          FbTokenErrorType.on => true,
          FbTokenErrorType.off => false,
        };
        CoreDi.get<CoreSettingsRepo>().apply(
          CoreSettings(
            isPushEnabled: !triedToSwitchTo,
            silent: true,
          ),
        );
      },
    );

    _start();
  }

  static Future<void> _start() async {
    await Firebase.initializeApp();
    CoreDi.get<CoreSettingsRepo>().read();
  }
}
