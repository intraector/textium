import 'package:equatable/equatable.dart';

import 'cell.dart';
import 'json_map.dart';

class Block extends Equatable {
  const Block({
    required this.cells,
  });

  factory Block.fromMap(JsonMap map) {
    return Block(
      cells: Cells.fromList(map['cells']),
    );
  }

  final List<Cell> cells;

  @override
  List<Object> get props => [cells];

  Block copyWith({
    List<Cell>? cells,
  }) {
    return Block(
      cells: cells ?? this.cells,
    );
  }
}
