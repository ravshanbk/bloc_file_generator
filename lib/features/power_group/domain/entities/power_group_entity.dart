import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:bloc_file_generator/features/power_group/data/models/power_group_model.dart';


class PowerGroupEntity extends Equatable {
  
  final int id; final String name; 

  const PowerGroupEntity({
    
    this.id = -1, this.name = '', 
    
    
  });

  @override
  List<Object?> get props => [
      id, name, 
      ];
}

class PowerGroupConverter
    implements JsonConverter<PowerGroupEntity, Map<String, dynamic>> {
  const PowerGroupConverter();

  @override
  PowerGroupEntity fromJson(Map<String, dynamic> json) =>
      PowerGroupModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(PowerGroupEntity object) => {};
}

    