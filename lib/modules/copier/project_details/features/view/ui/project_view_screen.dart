import 'package:flutter/material.dart';

import '../../../../../_shared/data/dto/project.dart';
import 'widgets/cell_widget.dart';

class ProjectViewScreen extends StatelessWidget {
  const ProjectViewScreen({
    required this.project,
    this.switchToEdit,
    super.key,
  });

  final Project project;
  final VoidCallback? switchToEdit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(project.name),
        actions: [
          IconButton(
            onPressed: () {
              switchToEdit?.call();
            },
            icon: const Icon(Icons.edit),
          ),
        ],
      ),
      body: ListView.builder(
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
      ),
    );
  }
}
