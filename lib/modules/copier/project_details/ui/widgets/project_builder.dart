import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/l10n/l10n_helper.dart';
import '../../../../_shared/data/dto/project.dart';
import '../../../../_shared/widgets/a.dart';
import '../../../../_shared/widgets/app_error_widget.dart';
import '../../../init/copier_di.dart';
import '../../../projects/data/repo/projects_repo.dart';

class ProjectBuilder extends StatelessWidget {
  const ProjectBuilder({
    required this.projectId,
    required this.builder,
    super.key,
  });

  final Widget Function(Project project) builder;
  final String projectId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectsRepo, ProjectsState>(
      bloc: CopierDi.get(),
      builder: (context, state) {
        return switch (state) {
          ProjectsLoading _ => const AppProgressIndicator(),
          final ProjectsError state => AppErrorWidget(
              message: state.message,
              onRetry: () {
                CopierDi.get<ProjectsRepo>().add(
                  ReadProjects(),
                );
              },
            ),
          final ProjectsData state => Builder(
              builder: (context) {
                final project = state.data.firstWhereOrNull(
                  (item) => item.id == projectId,
                );
                if (project == null) {
                  return Center(
                    child: Text(
                      context.s.projectNotFound,
                    ),
                  );
                }
                return builder(project);
              },
            ),
          ProjectsIdle _ => const SizedBox.shrink(),
        };
      },
    );
  }
}
