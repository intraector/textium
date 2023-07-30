import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/l10n/l10n_helper.dart';
import '../../../../../core/theme/themes/_interface/app_theme.dart';
import '../../../../_shared/data/dto/project.dart';
import '../../../../_shared/widgets/app_error_widget.dart';
import '../../../init/copier_di.dart';
import '../../data/repo/projects_repo.dart';

class ProjectsBuilder extends StatelessWidget {
  const ProjectsBuilder({
    required this.builder,
    super.key,
  });

  final Widget Function(List<Project> data) builder;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectsRepo, ProjectsState>(
      bloc: CopierDi.get(),
      builder: (context, state) {
        return switch (state) {
          ProjectsLoading _ => const Center(
              child: CircularProgressIndicator(),
            ),
          final ProjectsError state => AppErrorWidget(
              message: state.message,
              onRetry: () {
                CopierDi.get<ProjectsRepo>().add(
                  ReadProjects(),
                );
              },
            ),
          final ProjectsData state when state.data.isEmpty => Center(
              child: Text(
                context.s.projectsEmpty,
                style: context.text.s16w400,
              ),
            ),
          final ProjectsData state => builder(state.data),
          _ => const SizedBox.shrink(),
        };
      },
    );
  }
}
