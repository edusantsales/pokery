import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'official_artwork_model.g.dart';

@immutable
@JsonSerializable(createToJson: false)
class OfficialArtworkModel {
  const OfficialArtworkModel({
    required this.frontDefault,
  });

  factory OfficialArtworkModel.fromJson(Map<String, dynamic> json) {
    return _$OfficialArtworkModelFromJson(json);
  }

  @JsonKey(name: 'front_default')
  final String frontDefault;

  OfficialArtworkModel copyWith({
    String? frontDefault,
  }) {
    return OfficialArtworkModel(
      frontDefault: frontDefault ?? this.frontDefault,
    );
  }

  @override
  String toString() => 'OfficialArtworkModel(frontDefault: $frontDefault)';
}
