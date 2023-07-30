import 'dart:async';

import 'package:flutter/widgets.dart';

import '../copier_di.dart';
import '../copier_orchestrator.dart';

class CopierModule extends StatefulWidget {
  const CopierModule({required this.child, super.key});

  final Widget child;

  @override
  State<CopierModule> createState() => _CopierModuleState();
}

class _CopierModuleState extends State<CopierModule> {
  final completer = Completer<bool>();
  late final orchestrator = CopierOrchestrator();

  @override
  void dispose() {
    orchestrator.dispose();
    CopierDi.get.reset();
    super.dispose();
  }

  @override
  void initState() {
    CopierDi.register();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        CopierDi.get.allReady().whenComplete(() {
          orchestrator.init();
        });
        completer.complete(true);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: completer.future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return widget.child;
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
