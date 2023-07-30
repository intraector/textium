import 'package:flutter/services.dart';

import '../../../l10n/generated/l10n.dart';
import '../../../_shared/utils/extensions/string.dart';
import 'app_textfield/app_textfield.dart';

class IinTextField extends AppTextfield {
  IinTextField({
    super.key,
    IinTextfieldData? data,
  }) : super(
          data: data ?? IinTextfieldData(),
        );
}

class IinTextfieldData extends AppTextfieldData {
  IinTextfieldData({
    super.initial,
    super.nextFocus,
    super.onChanged,
    super.enabled,
    String? hintText,
    List<String> Function(String?)? validator,
    bool isValidatorEnabled = true,
    super.keyboardType = TextInputType.number,
  }) : super(
          hintText: hintText ?? S.current.iin,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          maxLength: 12,
          validator: validator ??
              (value) {
                var output = <String>[];
                if (isValidatorEnabled) {
                  output = defaultValidator(value);
                }
                return output;
              },
        );

  static List<String> defaultValidator(String? value) {
    final output = <String>[];
    if (value == null) {
      output.add(S.current.inputErrorIin);
      return output;
    }
    final iin = value.extractDigits;
    if (iin == null || iin.isEmpty) {
      output.add(S.current.inputIin);
    } else if (iin.length != 12) {
      output.add(S.current.inputErrorIin);
    }
    return output;
  }
}
