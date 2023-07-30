import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../dto/core_settings.dart';
import '../source/local_storage.dart';
import 'states.dart';

export '../../dto/core_settings.dart';
export 'states.dart';

class CoreSettingsRepo extends Cubit<CoreSettingsState> {
  CoreSettingsRepo({
    required this.local,
  }) : super(CoreSettingsInitial());

  final LocalStorage local;

  Future<void> reset() async {
    _delete(_Keys.values).ignore();
    emit(const CoreSettingsData(settings: CoreSettings()));
  }

  Future<void> read() async {
    try {
      final output = CoreSettings(
        isOnboardingSeen: local.read(_Keys.coreIsOnboardingSeen.name) as bool?,
        isProduction: local.read(_Keys.coreIsProduction.name) as bool?,
        isPushEnabled: local.read(_Keys.coreIsPushEnabled.name) as bool?,
        locale: LocaleName.fromCode(local.read(_Keys.coreLocale.name) as String?),
        themeId: local.read(_Keys.coreThemeId.name) as String?,
        module: AppModule.from(local.read(_Keys.coreModule.name) as String?),
      );
      emit(
        CoreSettingsData(settings: output),
      );
    } catch (e) {
      emit(
        const CoreSettingsData(settings: CoreSettings()),
      );
      rethrow;
    }
  }

  Future<void> apply(CoreSettings settings) async {
    if (settings.module != null) {
      local.write(
        _Keys.coreModule.name,
        settings.module!.name,
      );
    }
    if (settings.locale != null) {
      local.write(
        _Keys.coreLocale.name,
        settings.locale!.code,
      );
    }
    if (settings.isProduction != null) {
      local.write(
        _Keys.coreIsProduction.name,
        settings.isProduction!,
      );
    }
    if (settings.isPushEnabled != null) {
      local.write(
        _Keys.coreIsPushEnabled.name,
        settings.isPushEnabled!,
      );
    }
    if (settings.themeId != null) {
      local.write(
        _Keys.coreThemeId.name,
        settings.themeId!,
      );
    }
    if (settings.isOnboardingSeen != null) {
      local.write(
        _Keys.coreIsOnboardingSeen.name,
        settings.isOnboardingSeen!,
      );
    }
    var output = state.settings ?? settings;
    output = output.copyWith(
      isOnboardingSeen: settings.isOnboardingSeen,
      isProduction: settings.isProduction,
      isPushEnabled: settings.isPushEnabled,
      locale: settings.locale,
      module: settings.module,
      themeId: settings.themeId,
    );
    emit(CoreSettingsData(settings: output));
  }

  Future<List> _delete(List<_Keys> keys) async {
    final futures = <Future>[];
    for (final key in keys) {
      futures.add(local.delete(key.name));
    }
    return Future.wait(futures);
  }
}

enum _Keys {
  coreIsOnboardingSeen,
  coreIsProduction,
  coreIsPushEnabled,
  coreLocale,
  coreModule,
  coreThemeId,
}
