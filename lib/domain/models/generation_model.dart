import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'generation_model.g.dart';

@immutable
@JsonSerializable(createToJson: false)
class GenerationModel {
  const GenerationModel({
    required this.name,
  });

  factory GenerationModel.fromJson(Map<String, dynamic> json) {
    return _$GenerationModelFromJson(json);
  }

  final String name;

  GenerationModel copyWith({
    String? name,
  }) {
    return GenerationModel(
      name: name ?? this.name,
    );
  }

  @override
  String toString() => 'GenerationModel(name: $name)';
}
