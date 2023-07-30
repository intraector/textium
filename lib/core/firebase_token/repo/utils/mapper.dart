import 'dart:async';

import '../fb_token_repo.dart';

class FbTokenRepoMapper {
  FbTokenRepoMapper({
    required this.repo,
    this.onSwitch,
    this.onError,
  }) {
    init();
  }

  final void Function(bool isEnabled)? onSwitch;
  final void Function(FbTokenError state)? onError;
  final FbTokenRepo repo;

  bool? _prev;
  StreamSubscription? _subscription;

  void init() {
    _prev = _isOn(repo.state);

    _subscription = repo.stream.listen(
      (state) {
        if (state is FbTokenData) {
          if (_prev != true) {
            onSwitch?.call(true);
          }
        } else if (state is FbTokenIdle) {
          if (_prev != false) {
            onSwitch?.call(false);
          }
        } else if (state is FbTokenError) {
          if (_prev != false) {
            onError?.call(state);
          }
        }
        _prev = _isOn(state);
      },
    );
  }

  void dispose() {
    _subscription?.cancel();
  }

  bool? _isOn(FbTokenState state) {
    return switch (state) {
      (final FbTokenData _) => true,
      (final FbTokenIdle _) => false,
      _ => null,
    };
  }
}
