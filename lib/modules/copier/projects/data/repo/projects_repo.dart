import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../_shared/data/dto/project.dart';
import 'event.dart';
import 'state.dart';

export 'event.dart';
export 'state.dart';

class ProjectsRepo extends Bloc<ProjectsEvent, ProjectsState> {
  ProjectsRepo() : super(ProjectsIdle()) {
    on<AddProjects>(_add);
  }

  Future<void> _add(
    AddProjects event,
    Emitter<ProjectsState> emit,
  ) async {
    emit(ProjectsLoading());
    final output = <Project>[
      event.project,
    ];
    if (state is ProjectsData) {
      output.addAll(
        (state as ProjectsData).data,
      );
    }
    emit(
      ProjectsData(data: output),
    );
  }
}
