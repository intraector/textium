import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/_shared/utils/logger.dart';
import '../../../../../core/l10n/generated/l10n.dart';
import '../../../../_shared/data/dto/project.dart';
import '../../../../_shared/utils/file_utils.dart';
import '../../../_shared/copier_defaults.dart';
import 'event.dart';
import 'state.dart';

export 'event.dart';
export 'state.dart';

class ProjectsRepo extends Bloc<ProjectsEvent, ProjectsState> {
  ProjectsRepo() : super(ProjectsIdle()) {
    on<ReadProjects>(_read);
    on<AddProjects>(_add);
  }

  Future<void> _read(
    ReadProjects event,
    Emitter<ProjectsState> emit,
  ) async {
    emit(ProjectsLoading());
    try {
      final path = await FileUtils.pathToDocsWith(
        CopierDefaults.projectsPath,
      );

      if (!FileUtils.dirExists(path)) {
        emit(
          ProjectsData(data: []),
        );
        return;
      }

      final files = await FileUtils.readDir(path).toList();
      for (final file in files) {
        final content = await FileUtils.asStringFrom(file.path);
        print('🏐 content : ${content}');

        emit(
          ProjectsData(data: []),
        );
      }
    } catch (e) {
      Log.error(e);
      emit(
        ProjectsError(S.current.somethingWentWrong),
      );
    }
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
