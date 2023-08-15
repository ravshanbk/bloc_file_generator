import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:bloc_file_generator/features/car_model_model/data/models/car_model_model_model.dart';


class CarModelModelEntity extends Equatable {
  
  final int id; final String name; final int manufacturer; 

  const CarModelModelEntity({
    
    this.id = -1, this.name = '', this.manufacturer = 0, 
    
    
  });

  @override
  List<Object?> get props => [
      id, name, manufacturer, 
      ];
}

class CarModelModelConverter
    implements JsonConverter<CarModelModelEntity, Map<String, dynamic>> {
  const CarModelModelConverter();

  @override
  CarModelModelEntity fromJson(Map<String, dynamic> json) =>
      CarModelModelModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(CarModelModelEntity object) => {};
}

    