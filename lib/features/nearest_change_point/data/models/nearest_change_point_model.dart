
import 'package:dio/dio.dart'; 
import 'package:json_annotation/json_annotation.dart'; 
import 'package:bloc_file_generator/features/nearest_change_point/domain/entities/nearest_change_point_entity.dart';

part 'nearest_change_point_model.g.dart';

 


@JsonSerializable(fieldRename: FieldRename.snake)
class NearestChangePointModel extends NearestChangePointEntity {
  const NearestChangePointModel({
    
    super.data, super.long, super.lat, super.distance, 
  });

  factory NearestChangePointModel.fromJson(Map<String, dynamic> json) =>
      _$NearestChangePointModelFromJson(json);

  Map<String, dynamic> toJson() => _$NearestChangePointToJson(this);
}

    