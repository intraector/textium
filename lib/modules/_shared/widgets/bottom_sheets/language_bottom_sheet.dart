import 'package:flutter/material.dart';

import '../../../../core/_shared/widgets/divider.dart';
import '../../../../core/_shared/widgets/knob.dart';
import '../../../../core/l10n/generated/l10n.dart';
import '../../../../core/l10n/l10n_helper.dart';
import '../../../../core/theme/themes/_interface/app_theme.dart';

Future<T?> showLanguageBottomSheet<T>(BuildContext context, Locale currentLocale) async {
  return showModalBottomSheet<T?>(
    context: context,
    backgroundColor: context.color.background,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(12),
        topLeft: Radius.circular(12),
      ),
    ),
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Knob(),
            const SizedBox(height: 28),
            Row(
              children: [
                Expanded(
                  child: Text(
                    context.s.interfaceLang,
                    style: context.text.s20w700,
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: CircleAvatar(
                    backgroundColor: context.color.grey100,
                    child: const Icon(Icons.close),
                  ),
                )
              ],
            ),
            const SizedBox(height: 36),
            ListView.separated(
              shrinkWrap: true,
              itemCount: S.delegate.supportedLocales.length,
              itemBuilder: (context, i) {
                return InkWell(
                  onTap: () => Navigator.of(context).pop(S.delegate.supportedLocales[i].languageCode),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            _getLanguageTitle(
                              S.delegate.supportedLocales[i].languageCode,
                            ),
                          ),
                        ),
                        if (currentLocale.languageCode == S.delegate.supportedLocales[i].languageCode)
                          Icon(
                            Icons.check_circle,
                            color: context.color.accent,
                          ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, _) => const AppDivider(),
            )
          ],
        ),
      );
    },
  );
}

String _getLanguageTitle(String code) {
  return switch (code) {
    'ru' => S.current.russian,
    'kk' => S.current.kazakh,
    _ => '',
  };
}
