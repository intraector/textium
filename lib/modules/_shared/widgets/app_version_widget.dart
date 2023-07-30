import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../../core/l10n/l10n_helper.dart';
import '../../../core/theme/themes/_interface/app_theme.dart';

class AppVersionWidget extends StatelessWidget {
  const AppVersionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<PackageInfo>(
        future: PackageInfo.fromPlatform(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const SizedBox(
              width: 50,
              child: LinearProgressIndicator(
                minHeight: 5,
              ),
            );
          } else if (snapshot.data?.version != null) {
            return Text(
              ' ${context.s.version}${snapshot.data?.version} (${snapshot.data?.buildNumber})',
              style: context.text.s14w500.copyWith(
                color: context.color.grey700,
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
