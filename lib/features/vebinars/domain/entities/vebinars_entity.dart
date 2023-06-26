import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:yosh_liderlar_hub/features/vebinars/data/models/vebinars_model.dart';


class VebinarsEntity extends Equatable {
  final int id;
  final String name;

  const VebinarsEntity({
    this.id = -1,
    this.name = '',
  });

  @override
  List<Object?> get props => [
        id,name,
      ];
}

class VebinarsConverter
    implements JsonConverter<VebinarsEntity, Map<String, dynamic>> {
  const VebinarsConverter();

  @override
  VebinarsEntity fromJson(Map<String, dynamic> json) =>
      VebinarsModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(VebinarsEntity object) => {};
}

    