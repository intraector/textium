import 'package:equatable/equatable.dart';

import 'app_module.dart';
import 'locale_name.dart';

export 'app_module.dart';
export 'locale_name.dart';

class CoreSettings extends Equatable {
  const CoreSettings({
    this.isOnboardingSeen,
    this.isProduction,
    this.locale,
    this.module,
    this.themeId,
    this.isPushEnabled,
    this.silent = false,
  });

  ///Set [silent] to true if need
  ///to change settings silently
  final bool silent;

  final bool? isOnboardingSeen;
  final bool? isProduction;
  final bool? isPushEnabled;
  final LocaleName? locale;
  final AppModule? module;
  final String? themeId;

  @override
  List<Object?> get props => [
        isOnboardingSeen,
        isProduction,
        isPushEnabled,
        locale,
        module,
        themeId,
        silent,
      ];

  CoreSettings copyWith({
    bool? isOnboardingSeen,
    bool? isProduction,
    bool? isPushEnabled,
    LocaleName? locale,
    AppModule? module,
    String? themeId,
    bool? silent,
  }) {
    return CoreSettings(
      isOnboardingSeen: isOnboardingSeen ?? this.isOnboardingSeen,
      isProduction: isProduction ?? this.isProduction,
      isPushEnabled: isPushEnabled ?? this.isPushEnabled,
      locale: locale ?? this.locale,
      module: module ?? this.module,
      themeId: themeId ?? this.themeId,
      silent: silent ?? this.silent,
    );
  }
}
