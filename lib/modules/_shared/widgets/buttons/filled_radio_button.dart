import 'package:flutter/material.dart';

class FilledRadio<T> extends StatelessWidget {
  const FilledRadio({
    required this.value,
    required this.groupValue,
    required this.onChanged,
    super.key,
    this.radius = 16,
    this.color = const Color(0xFF49EF3E),
    this.borderColor = const Color(0xffAFAFAF),
  });

  final Color borderColor;
  final Color color;
  final T groupValue;
  final ValueChanged<T> onChanged;
  final double radius;
  final T value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GestureDetector(
        onTap: () {
          onChanged(this.value);
        },
        child: Container(
          height: this.radius * 1.5,
          width: this.radius * 1.5,
          decoration: ShapeDecoration(
            shape: const CircleBorder(),
            color: borderColor,
          ),
          child: Center(
            child: Container(
              height: (this.radius * 2) - 8,
              width: (this.radius * 2) - 8,
              decoration: ShapeDecoration(
                shape: const CircleBorder(),
                color: value == groupValue ? color : Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
