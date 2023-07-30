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
  factory Block.fromString(String source) {
    return Block(
      cells: Cells.fromString(source),
    );
  }

  JsonMap toMap() {
    return {
      'cells': Cells.toMaps(cells),
    };
  }

  final List<Cell> cells;

  @override
  List<Object> get props => [cells];
}
