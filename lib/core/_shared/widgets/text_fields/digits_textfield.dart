// ignore_for_file: unnecessary_raw_strings

import 'package:flutter/services.dart';

import '../../../l10n/generated/l10n.dart';
import '../../../_shared/utils/extensions/string.dart';
import 'app_textfield/app_textfield.dart';
import 'input_formatters/separate_thousands_formatter.dart';

class DigitsTextfield extends AppTextfield {
  DigitsTextfield({
    super.key,
    DigitsTextfieldData? data,
  }) : super(data: data ?? DigitsTextfieldData());
}

class DigitsTextfieldData extends AppTextfieldData {
  DigitsTextfieldData({
    super.enabled,
    String? initial,
    super.nextFocus,
    super.style,
    super.debounce,
    super.maxLength,
    super.onChanged,
    super.onSubmit,
    super.suffixText,
    super.keyboardType = TextInputType.phone,
    super.visibleErrors,
    super.hintText,
    super.textAlign,
    bool isValidatorEnabled = false,
    bool isMaskApplied = true,
    List<String> Function(String)? validator,
    bool separateThousands = false,
  }) : super(
          initial: separateThousands ? initial?.separateThousands : initial,
          inputFormatters: isMaskApplied
              ? [
                  FilteringTextInputFormatter.allow(
                    RegExp(r'[0-9]'),
                  ),
                  if (separateThousands) SeparateThousandsFormatter(),
                ]
              : null,
          validator: validator ??
              (value) {
                final output = <String>[];
                if (!isValidatorEnabled) return output;
                if (value.isEmpty) {
                  output.add(S.current.inputErrorGeneral);
                }
                return output;
              },
        );
}
