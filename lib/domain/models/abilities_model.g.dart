// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abilities_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbilitiesModel _$AbilitiesModelFromJson(Map<String, dynamic> json) =>
    AbilitiesModel(
      ability: AbilityModel.fromJson(json['ability'] as Map<String, dynamic>),
      isHidden: json['is_hidden'] as bool,
      slot: json['slot'] as int,
    );
