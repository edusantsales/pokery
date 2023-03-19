// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'species_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpeciesModel _$SpeciesModelFromJson(Map<String, dynamic> json) => SpeciesModel(
      evolutionChain: json['evolution_chain'] == null
          ? null
          : EvolutionChainModel.fromJson(
              json['evolution_chain'] as Map<String, dynamic>),
      evolvesFromSpecies: json['evolves_from_species'] == null
          ? null
          : EvolvesFromSpeciesModel.fromJson(
              json['evolves_from_species'] as Map<String, dynamic>),
      flavorTextEntries: (json['flavor_text_entries'] as List<dynamic>)
          .map(
              (e) => FlavorTextEntriesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      formsSwitchable: json['forms_switchable'] as bool,
      generation:
          GenerationModel.fromJson(json['generation'] as Map<String, dynamic>),
      id: json['id'] as int,
      isLegendary: json['isLegendary'] as bool,
      isMythical: json['isMythical'] as bool,
      name: json['name'] as String,
      order: json['order'] as int,
    );
