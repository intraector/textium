import 'package:equatable/equatable.dart';

import '../../../../_shared/data/dto/project.dart';

sealed class NewProjectState {}

class NewProjectIdle extends NewProjectState {}

class NewProjectLoading extends NewProjectState {}

class NewProjectSuccess extends NewProjectState with EquatableMixin {
  NewProjectSuccess(this.project);

  final Project project;

  @override
  List<Object> get props => [project];
}

class NewProjectError extends NewProjectState {
  NewProjectError(this.message);

  final String message;
}
