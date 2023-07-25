import 'package:flutter/material.dart';

import '../../../../core/utils/navigator/navigator1_helper.dart';
import '../../add_project/ui/add_project_screen.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              context.router.use.push(
                const AddProjectScreen(),
              );
            },
          ),
        ],
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'ProjectsScreen',
            ),
          )
        ],
      ),
    );
  }
}
