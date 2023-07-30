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

  factory Cell.fromString(String source) {
    final map = {
      JsonKey.cell: source,
    };
    return Cell.fromMap(map);
  }

  JsonMap toMap() {
    return {
      JsonKey.cell: text,
    };
  }

  final String text;

  @override
  List<Object> get props => [text];
}

abstract class Cells {
  static List<Cell> fromList(List<JsonMap> map) {
    return map.map(Cell.fromMap).toList();
  }

  static List<Cell> fromString(String source) {
    return source.split(' ').map(Cell.fromString).toList();
  }

  static List<JsonMap> toMaps(List<Cell> cells) {
    return cells.map((e) => e.toMap()).toList();
  }
}
