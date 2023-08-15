import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:bloc_file_generator/features/car_model/data/models/car_model_model.dart';


class CarModelEntity extends Equatable {
  
  final int id; final String name; 

  const CarModelEntity({
    
    this.id = -1, this.name = '', 
    
    
  });

  @override
  List<Object?> get props => [
      id, name, 
      ];
}

class CarModelConverter
    implements JsonConverter<CarModelEntity, Map<String, dynamic>> {
  const CarModelConverter();

  @override
  CarModelEntity fromJson(Map<String, dynamic> json) =>
      CarModelModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(CarModelEntity object) => {};
}

    