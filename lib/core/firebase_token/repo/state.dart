import 'package:equatable/equatable.dart';

import 'fb_token_repo.dart';

sealed class FbTokenState {}

class FbTokenIdle extends FbTokenState {}

class FbTokenLoading extends FbTokenState {}

class FbTokenData extends FbTokenState with EquatableMixin {
  FbTokenData(this.token);

  final String token;

  @override
  List<Object?> get props => [token];
}

class FbTokenError extends FbTokenState with EquatableMixin {
  FbTokenError(this.message, {required this.type});

  final String message;
  final FbTokenErrorType type;

  @override
  List<Object?> get props => [message];
}
