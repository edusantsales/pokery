import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'ability_model.dart';

part 'stats_model.g.dart';

@immutable
@JsonSerializable(createToJson: false)
class StatsModel {
  const StatsModel({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });

  factory StatsModel.fromJson(Map<String, dynamic> json) {
    return _$StatsModelFromJson(json);
  }

  @JsonKey(name: 'base_stat')
  final int baseStat;
  final int effort;
  final AbilityModel stat;

  StatsModel copyWith({
    int? baseStat,
    int? effort,
    AbilityModel? stat,
  }) {
    return StatsModel(
      baseStat: baseStat ?? this.baseStat,
      effort: effort ?? this.effort,
      stat: stat ?? this.stat,
    );
  }

  @override
  String toString() =>
      'StatsModel(baseStat: $baseStat, effort: $effort, stat: $stat)';
}
