import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../l10n/generated/l10n.dart';
import '../../../../theme/themes/_interface/app_theme.dart';
import '../../../utils/debouncer.dart';

part 'textfield_data.dart';

class AppTextfield extends StatefulWidget {
  const AppTextfield({
    required this.data,
    super.key,
  });

  final AppTextfieldData data;

  @override
  AppTextfieldState createState() => AppTextfieldState();

  static List<String> defaultValidator(String? value) {
    final output = <String>[];
    if (value?.isEmpty ?? true) {
      output.add(S.current.inputErrorGeneral);
      return output;
    }
    return output;
  }

  void dispose() => data.dispose();
}

class AppTextfieldState extends State<AppTextfield> {
  @override
  void initState() {
    vm.focusNode.addListener(
      () {
        if (mounted && vm.focusNode.canRequestFocus && !vm.focusNode.hasFocus) {
          if (widget.data.validateOnFocusLost) {
            vm
              ..autovalidationOn = true
              ..validate;
          }
          vm.onFocusLost?.call(vm.controller.text);
        }
      },
    );
    super.initState();
  }

  AppTextfieldData get vm => widget.data;

  @override
  Widget build(BuildContext context) {
    var suffixIcon = vm.suffixIcon;

    if (vm.isVisibleObscureButton) {
      suffixIcon = (_) => IconButton(
            splashRadius: 30,
            icon: Icon(
              vm.obscureText ? Icons.visibility_off : Icons.visibility,
              color: context.color.grey700,
            ),
            onPressed: () {
              vm.obscureText = !vm.obscureText;
            },
          );
    }
    return ValueListenableBuilder<List<String>>(
      valueListenable: vm.errors,
      builder: (context, errorsList, _) {
        var fillColor = errorsList.isEmpty ? context.color.background : context.color.errorBg;
        if (vm.enabled == false) {
          fillColor = context.color.grey100;
        }
        var style = vm.style;
        style ??= context.text.s16w400.copyWith(
          color: context.color.textPrimary,
        );
        if (vm.enabled == false) {
          style = style.copyWith(
            color: context.color.grey700,
          );
        }

        final textfield = TextFormField(
          expands: vm.expands,
          autofocus: vm.autofocus,
          textAlign: vm.textAlign ?? TextAlign.left,
          textCapitalization: vm.textCapitalization,
          readOnly: vm.readonly,
          controller: vm.controller,
          scrollController: vm.scrollController,
          obscureText: vm.obscureText,
          enableSuggestions: !vm.obscureText,
          autocorrect: !vm.obscureText,
          enabled: vm.enabled,
          inputFormatters: vm.inputFormatters,
          keyboardType: vm.keyboardType,
          textInputAction: vm.nextFocus == null ? vm.textInputAction : TextInputAction.next,
          maxLength: vm.maxLength,
          minLines: vm.minLines,
          maxLines: vm.maxLines,
          focusNode: vm.focusNode,
          style: style,
          buildCounter: (
            context, {
            required int currentLength,
            required bool isFocused,
            required int? maxLength,
          }) {
            return const SizedBox.shrink();
          },
          decoration: InputDecoration(
            suffixText: vm.suffixText,
            suffixStyle: context.text.s14w500,
            suffixIcon: suffixIcon?.call(errorsList.isEmpty ? null : context.color.error),
            prefixIcon: vm.prefixIcon?.call(errorsList.isEmpty ? null : context.color.error),
            fillColor: fillColor,
            filled: true,
            isDense: true,
            contentPadding: const EdgeInsets.all(17),
            hintStyle: vm.hintStyle ??
                context.text.s16w400.copyWith(
                  color: context.color.grey700,
                ),
            hintText: vm.hintText,
            // alignLabelWithHint: ,
            counterText: '',
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: context.color.grey300,
              ),
              gapPadding: 0,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: errorsList.isEmpty
                  ? BorderSide(
                      color: context.color.grey300,
                      width: 2,
                    )
                  : BorderSide(
                      color: context.color.error,
                    ),
              gapPadding: 0,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: errorsList.isNotEmpty ? context.color.error : context.color.accent,
                width: 2,
              ),
              gapPadding: 0,
            ),
          ),
          onChanged: (value) {
            if (vm.autovalidationOn) vm.validate;

            if (vm._debounce == null) {
              vm.onChanged?.call(value);
            } else {
              vm._debounce!(
                () {
                  vm.onChanged?.call(value);
                },
              );
            }
          },
          onTap: () => vm.onTap?.call(context, vm.controller),
          onEditingComplete: () {
            if (vm.validate) {
              if (mounted && (vm.nextFocus?.canRequestFocus ?? false)) {
                vm.nextFocus?.requestFocus();
              } else {
                vm.focusNode.unfocus();
              }
            }
          },
          onFieldSubmitted: vm.onSubmit,
        );

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (vm.expands) Expanded(child: textfield) else textfield,
            if (vm.visibleErrors)
              AnimatedSize(
                duration: const Duration(milliseconds: 300),
                child: errorsList.isEmpty
                    ? const SizedBox(
                        width: double.maxFinite,
                        height: 1,
                      )
                    : Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: errorsList
                              .map<Widget>(
                                (error) => Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        error,
                                        style: context.text.error,
                                        maxLines: 10,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                              .toList(),
                        ),
                      ),
              ),
          ],
        );
      },
    );
  }
}
