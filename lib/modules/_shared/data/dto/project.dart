import 'package:equatable/equatable.dart';

import 'block.dart';
import 'json_key.dart';
import 'json_map.dart';

class Project extends Equatable {
  const Project({
    required this.name,
    required this.blocks,
  });

  factory Project.fromMap(Map<String, dynamic> map) {
    return Project(
      name: map['name'],
      blocks: (map[JsonKey.blocks] as List<JsonMap>).map(Block.fromMap).toList(),
    );
  }

  final List<Block> blocks;
  final String name;

  @override
  List<Object> get props => [name, blocks];

  Project copyWith({
    String? name,
    List<Block>? blocks,
  }) {
    return Project(
      name: name ?? this.name,
      blocks: blocks ?? this.blocks,
    );
  }
}
