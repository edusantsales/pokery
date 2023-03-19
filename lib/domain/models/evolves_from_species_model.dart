import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'evolves_from_species_model.g.dart';

@immutable
@JsonSerializable(createToJson: false)
class EvolvesFromSpeciesModel {
  const EvolvesFromSpeciesModel({
    required this.name,
    required this.url,
  });

  factory EvolvesFromSpeciesModel.fromJson(Map<String, dynamic> json) {
    return _$EvolvesFromSpeciesModelFromJson(json);
  }

  final String name;
  final String url;

  EvolvesFromSpeciesModel copyWith({
    String? name,
    String? url,
  }) {
    return EvolvesFromSpeciesModel(
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  @override
  String toString() => 'EvolvesFromSpeciesModel(name: $name, url: $url)';
}
