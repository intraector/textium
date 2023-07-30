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
      name: map[JsonKey.name],
      blocks: (map[JsonKey.blocks] as List<JsonMap>).map(Block.fromMap).toList(),
    );
  }

  factory Project.fromString(String name, String source) {
    final lines = source.split('\n');
    final output = lines.map(Block.fromString).toList();
    return Project(
      name: name,
      blocks: output,
    );
  }

  final List<Block> blocks;
  final String name;

  JsonMap toMap() {
    return {
      JsonKey.name: name,
      JsonKey.blocks: blocks.map((e) => e.toMap()).toList(),
    };
  }

  @override
  List<Object> get props => [name, blocks];
}
