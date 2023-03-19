import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'evolution_chain_model.dart';
import 'evolves_from_species_model.dart';
import 'flavor_text_entries_model.dart';
import 'generation_model.dart';

part 'species_model.g.dart';

@immutable
@JsonSerializable(createToJson: false)
class SpeciesModel {
  const SpeciesModel({
    this.evolutionChain,
    this.evolvesFromSpecies,
    required this.flavorTextEntries,
    required this.formsSwitchable,
    required this.generation,
    required this.id,
    required this.isLegendary,
    required this.isMythical,
    required this.name,
    required this.order,
  });

  factory SpeciesModel.fromJson(Map<String, dynamic> json) {
    return _$SpeciesModelFromJson(json);
  }

  @JsonKey(name: 'evolution_chain')
  final EvolutionChainModel? evolutionChain;
  @JsonKey(name: 'evolves_from_species')
  final EvolvesFromSpeciesModel? evolvesFromSpecies;
  @JsonKey(name: 'flavor_text_entries')
  final List<FlavorTextEntriesModel> flavorTextEntries;
  @JsonKey(name: 'forms_switchable')
  final bool formsSwitchable;
  final GenerationModel generation;
  final int id;
  final bool isLegendary;
  final bool isMythical;
  final String name;
  final int order;

  SpeciesModel copyWith({
    EvolutionChainModel? evolutionChain,
    EvolvesFromSpeciesModel? evolvesFromSpecies,
    List<FlavorTextEntriesModel>? flavorTextEntries,
    bool? formsSwitchable,
    GenerationModel? generation,
    int? id,
    bool? isLegendary,
    bool? isMythical,
    String? name,
    int? order,
  }) {
    return SpeciesModel(
      evolutionChain: evolutionChain ?? this.evolutionChain,
      evolvesFromSpecies: evolvesFromSpecies ?? this.evolvesFromSpecies,
      flavorTextEntries: flavorTextEntries ?? this.flavorTextEntries,
      formsSwitchable: formsSwitchable ?? this.formsSwitchable,
      generation: generation ?? this.generation,
      id: id ?? this.id,
      isLegendary: isLegendary ?? this.isLegendary,
      isMythical: isMythical ?? this.isMythical,
      name: name ?? this.name,
      order: order ?? this.order,
    );
  }

  @override
  String toString() {
    return 'SpeciesModel(evolutionChain: $evolutionChain, evolvesFromSpecies: $evolvesFromSpecies, flavorTextEntries: $flavorTextEntries, formsSwitchable: $formsSwitchable, generation: $generation, id: $id, isLegendary: $isLegendary, isMythical: $isMythical, name: $name, order: $order)';
  }
}
