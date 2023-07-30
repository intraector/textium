import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../_shared/utils/logger.dart';
import '../../l10n/generated/l10n.dart';
import 'state.dart';

export 'state.dart';

enum FbTokenErrorType { on, off }

class FbTokenRepo extends Cubit<FbTokenState> {
  FbTokenRepo() : super(FbTokenIdle());

  String? token;

  StreamSubscription<String>? _subsc;

  Future<void> switchOn() async {
    final messaging = FirebaseMessaging.instance;
    final settings = await messaging.requestPermission(provisional: true);
    final allowed = switch (settings.authorizationStatus) {
      AuthorizationStatus.authorized => true,
      AuthorizationStatus.provisional => true,
      AuthorizationStatus.denied => false,
      AuthorizationStatus.notDetermined => false,
    };
    if (!allowed) {
      emit(
        FbTokenError(
          S.current.permissionsRequestPushNotifs,
          type: FbTokenErrorType.on,
        ),
      );
      return;
    }
    messaging.getToken().then(_onToken).onError(_onError);
    _subsc?.cancel();
    _subsc = messaging.onTokenRefresh.listen(_onToken)..onError(_onError);
  }

  Future<void> switchOff() async {
    {
      _subsc?.cancel();
    }
  }

  void _onError(Object? error, StackTrace stack) {
    Log.error(error, stack);
    emit(
      FbTokenError(
        S.current.pushNotifsErrorCantSwitchOn,
        type: FbTokenErrorType.on,
      ),
    );
  }

  Future<void> _onToken(String? token) async {
    if (token == null) {
      Log.w('Firebase token is null');
      emit(
        FbTokenError(
          S.current.pushNotifsErrorCantSwitchOn,
          type: FbTokenErrorType.on,
        ),
      );
      return;
    }

    emit(
      FbTokenData(token),
    );
  }
}
