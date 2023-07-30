import 'dart:convert';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/_shared/utils/extensions/string.dart';
import '../../../../../core/l10n/generated/l10n.dart';
import '../../../../_shared/data/dto/project.dart';
import '../../../../_shared/utils/file_utils.dart';
import '../../../_shared/copier_defaults.dart';
import 'event.dart';
import 'state.dart';

export 'event.dart';
export 'state.dart';

class NewProjectVm extends Bloc<NewProjectEvent, NewProjectState> {
  NewProjectVm() : super(NewProjectIdle()) {
    on<FromStringAddNewProject>(
      _addFromString,
      transformer: droppable(),
    );
    on<ResetNewProject>(
      _reset,
      transformer: droppable(),
    );
  }

  Future<void> _reset(
    ResetNewProject event,
    Emitter<NewProjectState> emit,
  ) async {
    emit(NewProjectIdle());
  }

  Future<void> _addFromString(
    FromStringAddNewProject event,
    Emitter<NewProjectState> emit,
  ) async {
    try {
      emit(NewProjectLoading());
      final project = Project.fromString(
        event.name,
        event.data,
      );
      final path = await FileUtils.pathToDocsWith(
        '${CopierDefaults.projectsPath}/'
        '${StringUtils.randomText()}',
      );
      print('🏐 path : ${path}');
      await FileUtils.saveAsString(
        const JsonEncoder().convert(project.toMap()),
        path,
      );
      emit(
        NewProjectSuccess(project),
      );
    } catch (e) {
      emit(
        NewProjectError(S.current.somethingWentWrong),
      );
      rethrow;
    }
  }
}
