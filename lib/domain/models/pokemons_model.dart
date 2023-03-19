import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pokemons_model.g.dart';

@immutable
@JsonSerializable(createToJson: false)
class PokemonsModel {
  const PokemonsModel({
    required this.name,
    required this.url,
  });

  factory PokemonsModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonsModelFromJson(json);

  final String name;
  final String url;

  PokemonsModel copyWith({
    String? name,
    String? url,
  }) {
    return PokemonsModel(
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  @override
  String toString() => 'PokemonsModel(name: $name, url: $url)';
}
