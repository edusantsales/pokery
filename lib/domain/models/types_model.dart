import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'type_model.dart';

part 'types_model.g.dart';

@immutable
@JsonSerializable(createToJson: false)
class TypesModel {
  const TypesModel({
    required this.slot,
    required this.type,
  });

  factory TypesModel.fromJson(Map<String, dynamic> json) {
    return _$TypesModelFromJson(json);
  }

  final int slot;
  final TypeModel type;

  TypesModel copyWith({
    int? slot,
    TypeModel? type,
  }) {
    return TypesModel(
      slot: slot ?? this.slot,
      type: type ?? this.type,
    );
  }

  @override
  String toString() => 'TypesModel(slot: $slot, type: $type)';
}
