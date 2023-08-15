import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:bloc_file_generator/features/car/data/models/car_model.dart';


class CarEntity extends Equatable {
  
  final int id; final int model; final String vin; final String stateNumber; final int typeStateNumber; final int chargingType; final String chargingTypeName; final String typeStateNumberName; final String brand; final int vehicleType; final String vehicleTypeName; final num usableBatterySize; final String releaseYear; final String variant; final String modelName; final String version; 

  const CarEntity({
    
    this.id = -1, this.model = 0, this.vin = '', this.stateNumber = '', this.typeStateNumber = 0, this.chargingType = 0, this.chargingTypeName = '', this.typeStateNumberName = '', this.brand = '', this.vehicleType = 0, this.vehicleTypeName = '', this.usableBatterySize = 0, this.releaseYear = '', this.variant = '', this.modelName = '', this.version = '', 
    
    
  });

  @override
  List<Object?> get props => [
      id, model, vin, stateNumber, typeStateNumber, chargingType, chargingTypeName, typeStateNumberName, brand, vehicleType, vehicleTypeName, usableBatterySize, releaseYear, variant, modelName, version, 
      ];
}

class CarConverter
    implements JsonConverter<CarEntity, Map<String, dynamic>> {
  const CarConverter();

  @override
  CarEntity fromJson(Map<String, dynamic> json) =>
      CarModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(CarEntity object) => {};
}

    