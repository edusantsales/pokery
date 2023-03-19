import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'type_model.g.dart';

@immutable
@JsonSerializable(createToJson: false)
class TypeModel {
  const TypeModel({
    required this.name,
  });

  factory TypeModel.fromJson(Map<String, dynamic> json) {
    return _$TypeModelFromJson(json);
  }

  final String name;

  TypeModel copyWith({
    String? name,
  }) {
    return TypeModel(
      name: name ?? this.name,
    );
  }

  @override
  String toString() => 'TypeModel(name: $name)';
}
