
import 'package:dio/dio.dart'; 
import 'package:json_annotation/json_annotation.dart'; 
import 'package:yosh_liderlar_hub/features/vebinars/domain/entities/vebinars_entity.dart';

part 'vebinars_model.g.dart';

 


@JsonSerializable(fieldRename: FieldRename.snake)
class VebinarsModel extends VebinarsEntity {
  const VebinarsModel({
     super.id,
     super.name, 
  });

  factory VebinarsModel.fromJson(Map<String, dynamic> json) =>
      _$VebinarsModelFromJson(json);

  Map<String, dynamic> toJson() => _$VebinarsToJson(this);
}

    