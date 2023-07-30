import 'dart:async';

import '../core_settings_repo.dart';

class CoreSettingsRepoMapper {
  CoreSettingsRepoMapper({
    required this.repo,
    this.onServerChange,
    this.onLocaleChange,
    this.onThemeChange,
    this.onPushEnabledChange,
  }) {
    init();
  }

  final void Function(bool? isProduction)? onServerChange;
  final void Function(LocaleName? locale)? onLocaleChange;
  final void Function(String? themeId)? onThemeChange;
  final void Function(bool enabled)? onPushEnabledChange;
  final CoreSettingsRepo repo;

  bool? _prevIsProduction;
  var _prevIsPushEnabled = true;
  LocaleName? _prevLocale;
  String? _prevThemeId;
  StreamSubscription? _subscription;

  void init() {
    _prevIsProduction = repo.state.settings?.isProduction;
    _prevLocale = repo.state.settings?.locale;
    _prevThemeId = repo.state.settings?.themeId;
    _subscription = repo.stream.listen(
      (state) {
        if (state is! CoreSettingsData) return;
        if (_prevIsProduction != state.settings.isProduction) {
          onServerChange?.call(state.settings.isProduction);
          _prevIsProduction = state.settings.isProduction;
        }
        if (_prevLocale != state.settings.locale) {
          onLocaleChange?.call(state.settings.locale);
          _prevLocale = state.settings.locale;
        }
        if (_prevThemeId != state.settings.themeId) {
          onThemeChange?.call(state.settings.themeId);
          _prevThemeId = state.settings.themeId;
        }
        final nextisPushEnabled = state.settings.isPushEnabled ?? true;
        if (_prevIsPushEnabled != nextisPushEnabled) {
          onPushEnabledChange?.call(nextisPushEnabled);
          _prevIsPushEnabled = nextisPushEnabled;
        }
      },
    );
  }

  void dispose() {
    _subscription?.cancel();
  }
}
