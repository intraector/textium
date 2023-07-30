import 'package:flutter/material.dart';

import '../../theme/themes/_interface/app_theme.dart';
import 'custom_checkbox.dart';

class AppCheckbox extends StatefulWidget {
  const AppCheckbox({
    super.key,
    this.initial = false,
    this.onChanged,
  });

  final Function(bool?)? onChanged;
  final bool initial;

  @override
  AppCheckboxState createState() => AppCheckboxState();
}

class AppCheckboxState extends State<AppCheckbox> {
  late bool value;
  @override
  void initState() {
    value = widget.initial;
    super.initState();
  }

  @override
  void didUpdateWidget(AppCheckbox oldWidget) {
    if (oldWidget.initial != widget.initial) {
      setState(() {
        value = widget.initial;
      });
      super.didUpdateWidget(oldWidget);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomCheckbox(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      side: BorderSide(
        color: context.color.grey700,
      ),
      fillColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.selected)) {
            return context.color.accent;
          }
          return context.color.accent;
        },
      ),
      checkColor: context.color.background,
      value: value,
      onChanged: (value) {
        if (widget.onChanged == null) return;
        widget.onChanged?.call(value);
        setState(() {
          this.value = value ?? false;
        });
      },
    );
  }
}
