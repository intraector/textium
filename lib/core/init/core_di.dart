import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

import '../auth/data/secure_storage_api.dart';
import '../l10n/locale_repo.dart';
import '../settings/data/repo/core_settings_repo.dart';
import '../settings/data/source/local_storage.dart';
import '../theme/repo/theme_repo.dart';

class CoreDi {
  static final get = GetIt.instance;

  static void register() {
    get
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
      ..registerSingletonAsync(() async {
        final repo = LocaleRepo();
        await repo.init();
        return repo;
      });
  }
}
