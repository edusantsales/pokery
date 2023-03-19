// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatsModel _$StatsModelFromJson(Map<String, dynamic> json) => StatsModel(
      baseStat: json['base_stat'] as int,
      effort: json['effort'] as int,
      stat: AbilityModel.fromJson(json['stat'] as Map<String, dynamic>),
    );
