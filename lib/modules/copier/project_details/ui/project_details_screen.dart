import 'package:flutter/material.dart';

import '../../../_shared/data/dto/project.dart';
import 'widgets/cell_widget.dart';

class ProjectDetailsScreen extends StatelessWidget {
  const ProjectDetailsScreen({
    required this.project,
    super.key,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(project.name),
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
