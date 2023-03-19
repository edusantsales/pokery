import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ability_model.g.dart';

@immutable
@JsonSerializable(createToJson: false)
class AbilityModel {
  const AbilityModel({
    required this.name,
    required this.url,
  });

  factory AbilityModel.fromJson(Map<String, dynamic> json) {
    return _$AbilityModelFromJson(json);
  }

  final String name;
  final String url;

  AbilityModel copyWith({
    String? name,
    String? url,
  }) {
    return AbilityModel(
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  @override
  String toString() => 'AbilityModel(name: $name, url: $url)';
}
