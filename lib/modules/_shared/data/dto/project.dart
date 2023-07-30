import 'package:equatable/equatable.dart';

import 'block.dart';
import 'json_key.dart';
import 'json_map.dart';

class Project extends Equatable {
  const Project({
    required this.id,
    required this.name,
    required this.blocks,
  });

  factory Project.fromMap(Map<String, dynamic> map) {
    return Project(
      id: map[JsonKey.id],
      name: map[JsonKey.name],
      blocks: map[JsonKey.blocks].map<Block>(Block.fromMap).toList(),
    );
  }

  factory Project.fromString({
    required String id,
    required String name,
    required String source,
  }) {
    final lines = source.split('\n');
    final output = lines.map(Block.fromString).toList();
    return Project(
      id: id,
      name: name,
      blocks: output,
    );
  }

  final List<Block> blocks;
  final String id;
  final String name;

  @override
  List<Object> get props => [id, name, blocks];

  JsonMap toMap() {
    return {
      JsonKey.id: id,
      JsonKey.name: name,
      JsonKey.blocks: blocks.map((e) => e.toMap()).toList(),
    };
  }
}
