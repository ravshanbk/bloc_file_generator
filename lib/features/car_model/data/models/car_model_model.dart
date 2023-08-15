
import 'package:dio/dio.dart'; 
import 'package:json_annotation/json_annotation.dart'; 
import 'package:bloc_file_generator/features/car_model/domain/entities/car_model_entity.dart';

part 'car_model_model.g.dart';

 


@JsonSerializable(fieldRename: FieldRename.snake)
class CarModelModel extends CarModelEntity {
  const CarModelModel({
    
    super.id, super.name, 
  });

  factory CarModelModel.fromJson(Map<String, dynamic> json) =>
      _$CarModelModelFromJson(json);

  Map<String, dynamic> toJson() => _$CarModelToJson(this);
}

    