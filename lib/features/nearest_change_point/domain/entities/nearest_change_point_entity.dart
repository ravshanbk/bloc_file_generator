import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:bloc_file_generator/features/nearest_change_point/data/models/nearest_change_point_model.dart';


class NearestChangePointEntity extends Equatable {
  
  final String data; final String long; final String lat; final String distance; 

  const NearestChangePointEntity({
    
    this.data = '', this.long = '', this.lat = '', this.distance = '', 
    
    
  });

  @override
  List<Object?> get props => [
      data, long, lat, distance, 
      ];
}

class NearestChangePointConverter
    implements JsonConverter<NearestChangePointEntity, Map<String, dynamic>> {
  const NearestChangePointConverter();

  @override
  NearestChangePointEntity fromJson(Map<String, dynamic> json) =>
      NearestChangePointModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(NearestChangePointEntity object) => {};
}

    