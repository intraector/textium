import 'package:flutter/material.dart';

import '../../../../../../core/_shared/widgets/divider.dart';
import '../../../../../_shared/data/dto/project.dart';
import 'widgets/actions/remove_button.dart';
import 'widgets/cell_widget.dart';

class ProjectEditScreen extends StatelessWidget {
  const ProjectEditScreen({
    required this.project,
    this.switchToView,
    super.key,
  });

  final Project project;
  final VoidCallback? switchToView;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(project.name),
        actions: [
          RemoveButton(projectId: project.id),
          IconButton(
            onPressed: () {
              switchToView?.call();
            },
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: project.blocks.length,
        itemBuilder: (context, index) {
          final block = project.blocks[index];
          return Wrap(
            children: [
              for (final item in block.cells) CellWidget(item: item),
            ],
          );
        },
        separatorBuilder: (context, _) => const AppDivider(),
      ),
    );
  }
}
