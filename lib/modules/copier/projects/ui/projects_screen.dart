import 'package:flutter/material.dart';

import '../../../../core/_shared/utils/navigator/navigator1_helper.dart';
import '../../../../core/_shared/widgets/divider.dart';
import '../../../../core/l10n/l10n_helper.dart';
import '../../project_add/ui/new_project_screen.dart';
import '../../project_details/ui/project_details_screen.dart';
import 'widgets/projects_builder.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.s.projects),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              context.router.use.push(
                const NewProjectScreen(),
              );
            },
          ),
        ],
      ),
      body: ProjectsBuilder(
        builder: (data) {
          return ListView.separated(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final item = data[index];
              return ListTile(
                title: Text(item.name),
                onTap: () {
                  context.router.use.push(
                    ProjectDetailsScreen(projectId: item.id),
                  );
                },
              );
            },
            separatorBuilder: (_, __) => const AppDivider(),
          );
        },
      ),
    );
  }
}
