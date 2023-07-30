import 'package:flutter/services.dart';

import '../../../../../core/_shared/utils/logger.dart';
import '../../../../../core/_shared/widgets/text_fields/app_textfield/app_textfield.dart';
import '../../../../_shared/data/dto/json_key.dart';
import '../../../../_shared/data/dto/project.dart';
import '../../../init/copier_di.dart';
import '../../../projects/data/repo/projects_repo.dart';

class Vm {
  const Vm({
    required this.text,
    required this.name,
  });

  final AppTextfield name;
  final AppTextfield text;

  void dispose() {
    name.dispose();
    text.dispose();
  }

  Future<void> paste() async {
    final clipboardData = await Clipboard.getData(Clipboard.kTextPlain);
    text.data.controller.text = '';
    text.data.controller.text = clipboardData?.text ?? '';
  }

  void onAdd() {
    final json = projectFromString(
      name.data.controller.text,
      text.data.controller.text,
    );

    Log.c(
      json,
      label: name.data.controller.text,
    );
    final project = Project.fromMap(json);
    Log.y(
      project,
      label: 'Project',
    );
    CopierDi.get<ProjectsRepo>().add(
      AddProjects(project),
    );
  }

  Map<String, dynamic> projectFromString(String name, String data) {
    final lines = data.split('\n');
    final output = lines.map(blockFromString).toList();
    return {
      JsonKey.name: name,
      JsonKey.blocks: output,
    };
  }

  Map<String, dynamic> blockFromString(String source) {
    final result = source.split(' ').map(cellFromString).toList();
    return {
      JsonKey.cells: result,
    };
  }

  Map<String, dynamic> cellFromString(String source) {
    return {
      JsonKey.cell: source,
    };
  }
}
