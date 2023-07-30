import 'dart:async';

import '../../../core/init/core_di.dart';
import '../../../core/settings/data/repo/core_settings_repo.dart';
import '../../../core/settings/data/repo/utils/mapper.dart';
import '../theme/themes/light/copier_light_theme.dart';

class EmobiOrchestrator {
  CoreSettingsRepoMapper? _coreSettings;

  void init() {
    _coreSettings = CoreSettingsRepoMapper(
      repo: CoreDi.get(),
      onServerChange: (_) => _loadData(),
      onLocaleChange: (_) => _loadData(),
    );

    CoreDi.get<CoreSettingsRepo>().apply(
      CoreSettings(themeId: CopierLightTheme().id),
    );

    _loadData();
  }

  void dispose() {
    _coreSettings?.dispose();
  }

  Future<void> _loadData() async {}

  //void _initUserData() {}
}