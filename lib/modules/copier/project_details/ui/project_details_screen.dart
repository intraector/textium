import 'package:flutter/material.dart';

import '../features/edit/ui/project_edit_screen.dart';
import '../features/view/ui/project_view_screen.dart';
import 'widgets/project_builder.dart';

class ProjectDetailsScreen extends StatefulWidget {
  const ProjectDetailsScreen({
    required this.projectId,
    super.key,
  });

  final String projectId;

  @override
  State<ProjectDetailsScreen> createState() => _ProjectDetailsScreenState();
}

class _ProjectDetailsScreenState extends State<ProjectDetailsScreen> {
  final mode = ValueNotifier<bool>(false);

  @override
  void dispose() {
    mode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ProjectBuilder(
      projectId: widget.projectId,
      builder: (project) {
        return ValueListenableBuilder(
          valueListenable: mode,
          builder: (context, isEditMode, _) {
            if (isEditMode) {
              return ProjectEditScreen(
                project: project,
                switchToView: () => mode.value = false,
              );
            } else {
              return ProjectViewScreen(
                project: project,
                switchToEdit: () => mode.value = true,
              );
            }
          },
        );
      },
    );
  }
}
