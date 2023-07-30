import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

import '../auth/data/secure_storage_api.dart';
import '../firebase_token/repo/fb_token_repo.dart';
import '../l10n/locale_repo.dart';
import '../settings/data/repo/core_settings_repo.dart';
import '../settings/data/source/local_storage.dart';
import '../theme/repo/theme_repo.dart';

class CoreDi {
  static final get = GetIt.instance;

  static void register() {
    get
      ..registerSingleton(FbTokenRepo())
      ..registerSingletonAsync(() => LocalStorage.instance)
      ..registerSingletonWithDependencies(
        () => CoreSettingsRepo(local: get<LocalStorage>()),
        dependsOn: [LocalStorage],
      )
      ..registerSingleton(
        const SecureStorageApi(
          FlutterSecureStorage(
            aOptions: AndroidOptions(
              encryptedSharedPreferences: true,
            ),
          ),
        ),
      )
      ..registerSingleton(ThemeRepo())
      ..registerSingleton(LocaleRepo());
  }
}
