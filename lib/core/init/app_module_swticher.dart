import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../modules/copier/init/orchestrator/copier_module.dart';
import '../settings/data/repo/core_settings_repo.dart';
import 'core_di.dart';

class AppModuleSwticher extends StatefulWidget {
  const AppModuleSwticher({required this.child, super.key});

  final Widget child;

  @override
  State<AppModuleSwticher> createState() => _AppModuleSwticherState();
}

class _AppModuleSwticherState extends State<AppModuleSwticher> {
  CoreSettings? prev;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoreSettingsRepo, CoreSettingsState>(
      bloc: CoreDi.get(),
      builder: (context, state) {
        return switch (state.moduleOrDefault) {
          AppModule.copier => CopierModule(
              key: const ValueKey('EmobiInitializer'),
              child: widget.child,
            ),
        };
      },
    );
  }
}
