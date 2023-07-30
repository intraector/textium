import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../_shared/widgets/a.dart';
import '../../../../_shared/widgets/app_error_widget.dart';
import '../../../init/copier_di.dart';
import '../../../projects/data/repo/projects_repo.dart';
import '../../data/vm/new_project_vm.dart';

class NewProjectBuilder extends StatelessWidget {
  const NewProjectBuilder({required this.builder, super.key});

  final Widget Function(BuildContext context) builder;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewProjectVm(),
      child: BlocConsumer<NewProjectVm, NewProjectState>(
        builder: (context, state) {
          return switch (state) {
            NewProjectLoading _ => const AppProgressIndicator(),
            final NewProjectError state => AppErrorWidget(
                message: state.message,
                onRetry: () {
                  context.read<NewProjectVm>().add(
                        ResetNewProject(),
                      );
                },
              ),
            _ => builder(context),
          };
        },
        listener: (context, state) {
          if (state is NewProjectSuccess) {
            CopierDi.get<ProjectsRepo>().add(
              AddProjects(state.project),
            );
            Navigator.of(context).pop();
          }
        },
      ),
    );
  }
}
