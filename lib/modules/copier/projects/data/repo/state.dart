import 'package:equatable/equatable.dart';

import '../../../../_shared/data/dto/project.dart';

sealed class ProjectsState {}

class ProjectsIdle extends ProjectsState {}

class ProjectsLoading extends ProjectsState {}

class ProjectsData extends ProjectsState with EquatableMixin {
  ProjectsData({required this.data});

  final List<Project> data;

  @override
  List<Object> get props => [data];

  ProjectsData copyWith({
    List<Project>? data,
  }) {
    return ProjectsData(
      data: data ?? this.data,
    );
  }
}

class ProjectsError extends ProjectsState {
  ProjectsError(this.message);

  final String? message;
}
