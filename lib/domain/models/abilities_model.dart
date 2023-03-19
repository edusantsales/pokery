import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'ability_model.dart';

part 'abilities_model.g.dart';

@immutable
@JsonSerializable(createToJson: false)
class AbilitiesModel {
  const AbilitiesModel({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });

  factory AbilitiesModel.fromJson(Map<String, dynamic> json) {
    return _$AbilitiesModelFromJson(json);
  }

  final AbilityModel ability;
  @JsonKey(name: 'is_hidden')
  final bool isHidden;
  final int slot;

  AbilitiesModel copyWith({
    AbilityModel? ability,
    bool? isHidden,
    int? slot,
  }) {
    return AbilitiesModel(
      ability: ability ?? this.ability,
      isHidden: isHidden ?? this.isHidden,
      slot: slot ?? this.slot,
    );
  }

  @override
  String toString() =>
      'AbilitiesModel(ability: $ability, isHidden: $isHidden, slot: $slot)';
}
