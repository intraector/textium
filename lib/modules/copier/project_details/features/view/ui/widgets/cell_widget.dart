import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../../_shared/data/dto/cell.dart';

class CellWidget extends StatelessWidget {
  const CellWidget({required this.item, super.key});

  final Cell item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: InkWell(
        child: Text(item.text),
        onTap: () {
          Clipboard.setData(
            ClipboardData(text: item.text),
          );
        },
      ),
    );
  }
}
