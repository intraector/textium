// ignore_for_file: unnecessary_lambdas

import 'dart:async';

import 'package:flutter/material.dart';

import 'core/_shared/utils/logger.dart';
import 'core/init/core_di.dart';
import 'core/init/core_orchestrator.dart';
import 'main_app.dart';

void main() async {
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      // await Firebase.initializeApp(
      //   options: DefaultFirebaseOptions.currentPlatform,
      // );
      CoreDi.register();
      await CoreDi.get.allReady();
      WidgetsBinding.instance.addPostFrameCallback(
        (_) => CoreOrchestrator.init(),
      );
      runApp(const MainApp());
    },
    (error, stack) {
      Log.error(error, stack);
      // if (kReleaseMode) {
      //   FirebaseCrashlytics.instance
      //       .recordError(
      //         error,
      //         stack,
      //         reason: 'runZonedGuarded',
      //       )
      //       .whenComplete(
      //         () => FirebaseCrashlytics.instance.sendUnsentReports(),
      //       );
      // }
    },
  );
}
