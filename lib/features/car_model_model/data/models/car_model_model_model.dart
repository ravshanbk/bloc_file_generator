
import 'package:dio/dio.dart'; 
import 'package:json_annotation/json_annotation.dart'; 
import 'package:bloc_file_generator/features/car_model_model/domain/entities/car_model_model_entity.dart';

part 'car_model_model_model.g.dart';

 


@JsonSerializable(fieldRename: FieldRename.snake)
class CarModelModelModel extends CarModelModelEntity {
  const CarModelModelModel({
    
    super.id, super.name, super.manufacturer, 
  });

  factory CarModelModelModel.fromJson(Map<String, dynamic> json) =>
      _$CarModelModelModelFromJson(json);

  Map<String, dynamic> toJson() => _$CarModelModelToJson(this);
}

    