sealed class NewProjectEvent {}

class ResetNewProject extends NewProjectEvent {}

class FromStringAddNewProject extends NewProjectEvent {
  FromStringAddNewProject({
    required this.name,
    required this.data,
  });

  final String data;
  final String name;
}
