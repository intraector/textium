import 'package:equatable/equatable.dart';

import 'json_key.dart';
import 'json_map.dart';

class Cell extends Equatable {
  const Cell({
    required this.text,
  });

  factory Cell.fromMap(JsonMap map) {
    return Cell(
      text: map[JsonKey.cell],
    );
  }

  final String text;

  @override
  List<Object> get props => [text];
}

abstract class Cells {
  static List<Cell> fromList(List<JsonMap> map) {
    return map.map(Cell.fromMap).toList();
  }
}
