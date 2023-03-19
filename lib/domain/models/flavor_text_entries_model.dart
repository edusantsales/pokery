import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'flavor_text_entries_model.g.dart';

@immutable
@JsonSerializable(createToJson: false)
class FlavorTextEntriesModel {
  const FlavorTextEntriesModel({
    required this.flavorText,
  });

  factory FlavorTextEntriesModel.fromJson(Map<String, dynamic> json) {
    return _$FlavorTextEntriesModelFromJson(json);
  }

  @JsonKey(name: 'flavor_text')
  final String flavorText;

  FlavorTextEntriesModel copyWith({
    String? flavorText,
  }) {
    return FlavorTextEntriesModel(
      flavorText: flavorText ?? this.flavorText,
    );
  }

  @override
  String toString() => 'FlavorTextEntriesModel(flavorText: $flavorText)';
}
