import '../../../../_shared/data/dto/project.dart';

sealed class ProjectsEvent {}

class ReadProjects extends ProjectsEvent {}

class AddProjects extends ProjectsEvent {
  AddProjects(this.project);

  final Project project;
}
