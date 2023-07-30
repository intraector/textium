import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../../../core/_shared/widgets/divider.dart';
import '../../../../../../core/init/core_di.dart';
import '../../../../../../core/l10n/l10n_helper.dart';
import '../../../../../../core/settings/data/repo/core_settings_repo.dart';
import '../../../../../../core/theme/themes/_interface/app_theme.dart';
import '../../../core/_shared/widgets/banners/show_banner.dart';
import '../../../core/firebase_token/repo/fb_token_repo.dart';

class FbTokenWidget extends StatelessWidget {
  const FbTokenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoreSettingsRepo, CoreSettingsState>(
      bloc: CoreDi.get<CoreSettingsRepo>(),
      builder: (context, state) {
        final isProduction = state.settings?.isProduction == true;
        if (isProduction) return const SizedBox.shrink();
        return BlocBuilder<FbTokenRepo, FbTokenState>(
          bloc: CoreDi.get(),
          builder: (context, state) {
            final token = switch (state) {
              (final FbTokenData state) => state.token,
              _ => context.s.noData,
            };
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Text(
                  'Токен Firebase:',
                  style: context.text.s16w400,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        token,
                        style: context.text.s14w400,
                      ),
                    )
                  ],
                ),
                if (state is FbTokenData)
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: context.button.elevated1,
                            child: const Text('Поделиться'),
                            onPressed: () async {
                              ShowBanner.hide();
                              Share.share(token);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                const SizedBox(height: 16),
                const AppDivider(),
              ],
            );
          },
        );
      },
    );
  }
}
