import 'package:equatable/equatable.dart';

class BasicDto extends Equatable {
  const BasicDto({
    this.code,
    this.name,
    this.simpleName,
  });

  factory BasicDto.fromJson(Map<String, dynamic> map) {
    return BasicDto(
      code: map['code'],
      name: map['name'],
    );
  }

  final dynamic code;
  final String? name;
  final String? simpleName;

  @override
  List<Object?> get props => [code, name];

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'name': name,
    };
  }
}
