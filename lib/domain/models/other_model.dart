import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'official_artwork_model.dart';

part 'other_model.g.dart';

@immutable
@JsonSerializable(createToJson: false)
class OtherModel {
  const OtherModel({
    required this.officialArtwork,
  });

  factory OtherModel.fromJson(Map<String, dynamic> json) {
    return _$OtherModelFromJson(json);
  }

  @JsonKey(name: 'official-artwork')
  final OfficialArtworkModel officialArtwork;

  OtherModel copyWith({
    OfficialArtworkModel? officialArtwork,
  }) {
    return OtherModel(
      officialArtwork: officialArtwork ?? this.officialArtwork,
    );
  }

  @override
  String toString() => 'OtherModel(officialArtwork: $officialArtwork)';
}
