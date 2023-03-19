import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'other_model.dart';

part 'sprites_model.g.dart';

@immutable
@JsonSerializable(createToJson: false)
class SpritesModel {
  const SpritesModel({
    required this.other,
  });

  factory SpritesModel.fromJson(Map<String, dynamic> json) {
    return _$SpritesModelFromJson(json);
  }

  final OtherModel other;

  SpritesModel copyWith({
    OtherModel? other,
  }) {
    return SpritesModel(
      other: other ?? this.other,
    );
  }

  @override
  String toString() => 'SpritesModel(other: $other)';
}
