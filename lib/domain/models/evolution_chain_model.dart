import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'evolution_chain_model.g.dart';

@immutable
@JsonSerializable(createToJson: false)
class EvolutionChainModel {
  const EvolutionChainModel({
    required this.url,
  });

  factory EvolutionChainModel.fromJson(Map<String, dynamic> json) {
    return _$EvolutionChainModelFromJson(json);
  }

  final String url;

  EvolutionChainModel copyWith({
    String? url,
  }) {
    return EvolutionChainModel(
      url: url ?? this.url,
    );
  }

  @override
  String toString() => 'EvolutionChainModel(url: $url)';
}
