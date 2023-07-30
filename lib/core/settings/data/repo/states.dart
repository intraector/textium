import 'package:equatable/equatable.dart';

import '../../../_shared/constants/app_defaults.dart';
import '../../dto/core_settings.dart';

sealed class CoreSettingsState {
  const CoreSettingsState();

  CoreSettings? get settings => this is CoreSettingsData ? (this as CoreSettingsData).settings : null;
  AppModule get moduleOrDefault => settings?.module ?? AppDefaults.module;
  LocaleName get localeOrDefault => settings?.locale ?? AppDefaults.locale;
}

class CoreSettingsInitial extends CoreSettingsState {}

class CoreSettingsData extends CoreSettingsState with EquatableMixin {
  const CoreSettingsData({
    required this.settings,
  });

  @override
  final CoreSettings settings;

  @override
  List<Object> get props => [settings];
}
