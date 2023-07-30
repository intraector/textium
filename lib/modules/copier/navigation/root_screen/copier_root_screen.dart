import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/_shared/utils/navigator/navigator1_helper.dart';
import '../../../../core/_shared/widgets/app_dialog_confirm_exit.dart';
import '../../projects/ui/projects_screen.dart';
import 'controller/primary_tabs_controller.dart';
import 'controller/states.dart';

class CopierRootScreen extends StatelessWidget {
  const CopierRootScreen({super.key});

  Future<bool> confirmPop(BuildContext context) async {
    final isConfirmed = await showAppDialogConfirmation();
    return isConfirmed ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PrimaryTabsController>(
      create: (context) => PrimaryTabsController(initial: 0),
      child: BlocBuilder<PrimaryTabsController, PrimaryTabsState>(
        builder: (context, state) {
          final controller = context.read<PrimaryTabsController>();
          final currentIndex = state.index;
          return WillPopScope(
            onWillPop: () => confirmPop(context),
            child: Scaffold(
              body: IndexedStack(
                key: UniqueKey(),
                index: currentIndex,
                children: <Widget>[
                  Navigator(
                    key: controller.navigatorKeys[0],
                    onGenerateRoute: (_) => NavigatorHelper.adaptiveRoute(
                      const ProjectsScreen(),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
