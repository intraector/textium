import 'package:flutter/material.dart';

import '../../../../../../../../core/_shared/utils/logger.dart';
import '../../../../../../../../core/_shared/widgets/banners/show_banner.dart';
import '../../../../../../../../core/l10n/generated/l10n.dart';
import '../../../../../../../../core/l10n/l10n_helper.dart';
import '../../../../../../../_shared/utils/file_utils.dart';
import '../../../../../../_shared/copier_defaults.dart';
import '../../../../../../_shared/widgets/dialogs/app_dialog_confirmation.dart';
import '../../../../../../init/copier_di.dart';
import '../../../../../../projects/data/repo/projects_repo.dart';

class RemoveButton extends StatelessWidget {
  const RemoveButton({
    required this.projectId,
    super.key,
  });

  final String projectId;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final nav = Navigator.of(context);
        final isConfirmed = await showAppDialogConfirm(
          context,
          body: context.s.removeProjectConfirm,
          labelConfirm: context.s.remove,
        );
        if (isConfirmed == true) {
          try {
            FileUtils.delete(
              await FileUtils.pathToDocsWith(
                '${CopierDefaults.projectsPath}/'
                '$projectId'
                '.${CopierDefaults.projectsExtension}',
              ),
            );
            CopierDi.get<ProjectsRepo>().add(
              RemoveFromProjects(id: projectId),
            );
            nav.pop();
          } catch (e) {
            Log.error(e);
            ShowBanner.error(
              message: S.current.somethingWentWrong,
              seconds: 3,
            );
          }
        }
      },
      icon: const Icon(Icons.delete),
    );
  }
}
