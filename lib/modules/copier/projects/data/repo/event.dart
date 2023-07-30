import '../../../../_shared/data/dto/project.dart';

sealed class ProjectsEvent {}

class ReadProjects extends ProjectsEvent {}

class RemoveFromProjects extends ProjectsEvent {
  RemoveFromProjects({required this.id});

  final String id;
}

class AddProjects extends ProjectsEvent {
  AddProjects(this.project);

  final Project project;
}
