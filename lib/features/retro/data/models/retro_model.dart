
import 'package:dio/dio.dart'; 
import 'package:json_annotation/json_annotation.dart'; 
import 'package:yosh_liderlar_hub/features/retro/domain/entities/retro_entity.dart';

part 'retro_model.g.dart';

 


@JsonSerializable(fieldRename: FieldRename.snake)
class RetroModel extends RetroEntity {
  const RetroModel({
     super.id,
     super.name, 
  });

  factory RetroModel.fromJson(Map<String, dynamic> json) =>
      _$RetroModelFromJson(json);

  Map<String, dynamic> toJson() => _$RetroModelToJson(this);
}

    