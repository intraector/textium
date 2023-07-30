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
        } else {}
      },
    );

    _start();
  }

  static Future<void> _start() async {
    // await Firebase.initializeApp();
    CoreDi.get<CoreSettingsRepo>().read();
  }
}
