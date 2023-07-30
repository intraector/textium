import 'package:flutter/material.dart';

import '../../../init/app_global_keys.dart';
import '../../../init/core_di.dart';
import '../../../theme/repo/theme_repo.dart';
import '../../../theme/themes/_interface/app_theme.dart';
import 'app_banner.dart';

class ShowBanner {
  static void hide() {
    AppGlobalKeys.scaffoldMessenger.currentState?.hideCurrentMaterialBanner();
  }

  static void error({
    String? message,
    Widget? content,
    bool showCloseButton = true,
    int? seconds,
    VoidCallback? onVisible,
  }) {
    final messenger = AppGlobalKeys.scaffoldMessenger.currentState;
    messenger?.hideCurrentMaterialBanner();
    messenger?.showMaterialBanner(
      AppBanner(
        message: message,
        content: content,
        theme: CoreDi.get<ThemeRepo>().theme.value.data,
        backgroundColor: CoreDi.get<ThemeRepo>().theme.value.data.color.error,
        leading: const Icon(Icons.error),
        showCloseButton: showCloseButton,
        seconds: seconds,
        onVisible: onVisible,
        onCancel: messenger.hideCurrentMaterialBanner,
      ),
    );
  }

  static void success({
    String? message,
    Widget? content,
    bool showCloseButton = true,
    int? seconds,
    VoidCallback? onVisible,
  }) {
    final messenger = AppGlobalKeys.scaffoldMessenger.currentState;
    messenger?.hideCurrentMaterialBanner();
    messenger?.showMaterialBanner(
      AppBanner(
        message: message,
        content: content,
        theme: CoreDi.get<ThemeRepo>().theme.value.data,
        backgroundColor: CoreDi.get<ThemeRepo>().theme.value.data.color.success,
        leading: const Icon(Icons.check_circle),
        showCloseButton: showCloseButton,
        seconds: seconds,
        onVisible: onVisible,
        onCancel: messenger.hideCurrentMaterialBanner,
      ),
    );
  }
}
