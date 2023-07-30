import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../modules/copier/navigation/root_screen/copier_root_screen.dart';
import '../../../init/core_di.dart';
import '../../../init/ui/splash_screen.dart';
import '../../../settings/data/repo/core_settings_repo.dart';
import '../../auth/ui/sign_out/ui/sign_out_screen.dart';
import 'navigator_transitions.dart';

extension NavigatorUtils on BuildContext {
  NavigatorState get router => Navigator.of(this);
  NavigatorState get rootRouter => Navigator.of(this, rootNavigator: true);
}

extension NavigatorStateUtils on NavigatorState {
  NavigatorHelper get use => NavigatorHelper(this);
}

extension NavigatorStateUtilsNullable on NavigatorState? {
  NavigatorHelper? get use {
    if (this == null) return null;
    return NavigatorHelper(this!);
  }
}

class NavigatorHelper {
  NavigatorHelper(this._nav);

  final NavigatorState _nav;

  Future<T?> push<T>(
    Widget screen, {
    TransitionBuilder? transition,
    Duration transitionDuration = const Duration(milliseconds: 300),
  }) {
    return _nav.push<T?>(
      adaptiveRoute(screen, transition, transitionDuration),
    );
  }

  Future<T?> pushOff<T>(
    Widget screen, {
    TransitionBuilder? transition,
    Duration transitionDuration = const Duration(milliseconds: 300),
  }) {
    return _nav.pushAndRemoveUntil<T>(
      adaptiveRoute(screen, transition, transitionDuration),
      (route) => false,
    );
  }

  Future<void> pushReplacement(
    Widget screen, {
    TransitionBuilder? transition,
    Duration transitionDuration = const Duration(milliseconds: 300),
  }) {
    return _nav.pushReplacement(
      adaptiveRoute(screen, transition, transitionDuration),
    );
  }

  Future<T?> pushAndRemoveUntil<T>(
    Widget screen, {
    required String until,
    TransitionBuilder? transition,
    Duration transitionDuration = const Duration(milliseconds: 300),
  }) {
    return _nav.pushAndRemoveUntil<T?>(
      adaptiveRoute(screen, transition, transitionDuration),
      (route) => route.settings.name == until,
    );
  }

  void popUntil<T>(String until) {
    return _nav.popUntil(
      (route) => route.settings.name == until || route.isFirst,
    );
  }

  Future<T?> pushRootScreen<T>({bool withAnimation = false}) async {
    final module = CoreDi.get<CoreSettingsRepo>().state.moduleOrDefault;
    final Widget screen = switch (module) {
      AppModule.copier => const CopierRootScreen(),
    };
    _pushRootScreen(screen, withAnimation: withAnimation);
    return Future.value();
  }

  Future<T?> pushSplashScreen<T>() {
    return _nav.pushAndRemoveUntil<T>(
      adaptiveRoute(
        const SplashScreen(),
        NavigatorTransitions.noTransition,
        Duration.zero,
      ),
      (route) => false,
    );
  }

  Future<T?> pushSignOutScreen<T>({String? token}) {
    return _nav.pushAndRemoveUntil<T>(
      adaptiveRoute(
        SignOutScreen(token: token),
        NavigatorTransitions.noTransition,
        Duration.zero,
      ),
      (route) => false,
    );
  }

  static Route<T> adaptiveRoute<T>(
    Widget screen, [
    TransitionBuilder? transition,
    Duration? transitionDuration,
  ]) {
    if (transition != null && transitionDuration != null) {
      return PageRouteBuilder(
        pageBuilder: (context, _, __) => screen,
        transitionDuration: transitionDuration,
        transitionsBuilder: transition,
        settings: RouteSettings(
          name: screen.runtimeType.toString(),
        ),
      );
    }
    if (kIsWeb || Platform.isIOS) {
      return CupertinoPageRoute(
        builder: (context) => screen,
        settings: RouteSettings(
          name: screen.runtimeType.toString(),
        ),
      );
    } else {
      return MaterialPageRoute(
        builder: (context) => screen,
        settings: RouteSettings(
          name: screen.runtimeType.toString(),
        ),
      );
    }
  }

  Future<T?> _pushRootScreen<T>(Widget screen, {required bool withAnimation}) {
    return switch (withAnimation) {
      false => _nav.pushAndRemoveUntil<T>(
          PageRouteBuilder(
            pageBuilder: (context, _, __) => screen,
            transitionDuration: Duration.zero,
            transitionsBuilder: (_, __, ___, child) => child,
            settings: RouteSettings(
              name: screen.runtimeType.toString(),
            ),
          ),
          (route) => false,
        ),
      true => _nav.pushAndRemoveUntil<T>(
          PageRouteBuilder(
            pageBuilder: (context, _, __) => screen,
            transitionsBuilder: NavigatorTransitions.scale,
            settings: RouteSettings(
              name: screen.runtimeType.toString(),
            ),
          ),
          (route) => false,
        ),
    };
  }

  String? currentRouteName() {
    String? output;
    _nav.popUntil((route) {
      output = route.settings.name;
      return true;
    });
    return output;
  }
}

typedef TransitionBuilder = Widget Function(
  BuildContext context,
  Animation<double> animation,
  Animation<double> reverseAnimation,
  Widget child,
);
