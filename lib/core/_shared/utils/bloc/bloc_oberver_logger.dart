import 'package:flutter_bloc/flutter_bloc.dart';

import '../logger.dart';

class BlocObserverLogger extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    Log.g(
      {
        'prev': change.currentState,
        'next': change.nextState,
      },
      label: bloc.runtimeType.toString(),
    );
  }
}
