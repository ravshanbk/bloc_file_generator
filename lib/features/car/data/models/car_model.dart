
import 'package:dio/dio.dart'; 
import 'package:json_annotation/json_annotation.dart'; 
import 'package:bloc_file_generator/features/car/domain/entities/car_entity.dart';

part 'car_model.g.dart';

 


@JsonSerializable(fieldRename: FieldRename.snake)
class CarModel extends CarEntity {
  const CarModel({
    
    super.id, super.model, super.vin, super.stateNumber, super.typeStateNumber, super.chargingType, super.chargingTypeName, super.typeStateNumberName, super.brand, super.vehicleType, super.vehicleTypeName, super.usableBatterySize, super.releaseYear, super.variant, super.modelName, super.version, 
  });

  factory CarModel.fromJson(Map<String, dynamic> json) =>
      _$CarModelFromJson(json);

  Map<String, dynamic> toJson() => _$CarToJson(this);
}

    