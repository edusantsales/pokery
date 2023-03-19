import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../settings/extensions/string_extension.dart';
import 'abilities_model.dart';
import 'ability_model.dart';
import 'sprites_model.dart';
import 'stats_model.dart';
import 'types_model.dart';

part 'pokemon_model.g.dart';

@immutable
@JsonSerializable(createToJson: false)
class PokemonModel {
  const PokemonModel({
    this.abilities,
    this.baseExperience,
    this.height,
    this.id,
    this.isDefault,
    this.name,
    this.order,
    this.species,
    this.sprites,
    this.stats,
    this.types,
    this.weight,
  });

  factory PokemonModel.fromJson(Map<String, dynamic> json) {
    return _$PokemonModelFromJson(json);
  }

  final List<AbilitiesModel>? abilities;
  @JsonKey(name: 'base_experience')
  final int? baseExperience;
  final int? height;
  final int? id;
  @JsonKey(name: 'is_default')
  final bool? isDefault;
  final String? name;
  final int? order;
  final AbilityModel? species;
  final SpritesModel? sprites;
  final List<StatsModel>? stats;
  final List<TypesModel>? types;
  final int? weight;

  PokemonModel copyWith({
    List<AbilitiesModel>? abilities,
    int? baseExperience,
    int? height,
    int? id,
    bool? isDefault,
    String? name,
    int? order,
    AbilityModel? species,
    SpritesModel? sprites,
    List<StatsModel>? stats,
    List<TypesModel>? types,
    int? weight,
  }) {
    return PokemonModel(
      abilities: abilities ?? this.abilities,
      baseExperience: baseExperience ?? this.baseExperience,
      height: height ?? this.height,
      id: id ?? this.id,
      isDefault: isDefault ?? this.isDefault,
      name: name ?? this.name,
      order: order ?? this.order,
      species: species ?? this.species,
      sprites: sprites ?? this.sprites,
      stats: stats ?? this.stats,
      types: types ?? this.types,
      weight: weight ?? this.weight,
    );
  }

  @override
  String toString() {
    return 'PokemonModel(abilities: $abilities, baseExperience: $baseExperience, height: $height, id: $id, isDefault: $isDefault, name: $name, order: $order, species: $species, sprites: $sprites, stats: $stats, types: $types, weight: $weight)';
  }

  int get getBaseExperience => baseExperience ?? 0;
  int get getHeight => height ?? 0;
  int get getId => id ?? 0;
  bool get isDefaultPokemon => isDefault ?? false;
  String get getName => name?.capitalize ?? '';
  int get getOrder => order ?? 0;
  String get getOfficialSprite =>
      sprites?.other.officialArtwork.frontDefault ?? '';
  List<String> get getTypesName =>
      types?.map((e) => e.type.name.capitalize).toList() ?? [];
  Color get getColorPrimaryType =>
      _getColorByType(getTypesName.first) ?? Colors.transparent;
  Color get getColorSecondaryType =>
      _getColorByType(getTypesName.last) ?? Colors.transparent;
  int get getWeight => weight ?? 0;

  Color? _getColorByType(String type) {
    final colors = {
      'Normal': Colors.brown[400],
      'Fire': Colors.red,
      'Water': Colors.blue,
      'Grass': Colors.green,
      'Electric': Colors.amber,
      'Ice': Colors.cyan[300],
      'Fighting': Colors.red[900],
      'Poison': Colors.purple,
      'Ground': Colors.orange,
      'Flying': Colors.indigo[200],
      'Psychic': Colors.pink,
      'Bug': Colors.lime[600],
      'Rock': Colors.grey,
      'Ghost': Colors.indigo[400],
      'Dark': Colors.grey[800],
      'Dragon': Colors.indigo[800],
      'Steel': Colors.blueGrey,
      'Fairy': Colors.pinkAccent[100],
    };
    return colors[type];
  }
}
