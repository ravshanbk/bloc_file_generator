import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:yosh_liderlar_hub/features/retro/data/models/retro_model.dart';


class RetroEntity extends Equatable {
  final int id;
  final String name;

  const RetroEntity({
    this.id = -1,
    this.name = '',
  });

  @override
  List<Object?> get props => [
        id,name,
      ];
}

class RetroConverter
    implements JsonConverter<RetroEntity, Map<String, dynamic>> {
  const RetroConverter();

  @override
  RetroEntity fromJson(Map<String, dynamic> json) =>
      RetroModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(RetroEntity object) => {};
}

    