
import 'package:dio/dio.dart'; 
import 'package:json_annotation/json_annotation.dart'; 
import 'package:bloc_file_generator/features/power_group/domain/entities/power_group_entity.dart';

part 'power_group_model.g.dart';

 


@JsonSerializable(fieldRename: FieldRename.snake)
class PowerGroupModel extends PowerGroupEntity {
  const PowerGroupModel({
    
    super.id, super.name, 
  });

  factory PowerGroupModel.fromJson(Map<String, dynamic> json) =>
      _$PowerGroupModelFromJson(json);

  Map<String, dynamic> toJson() => _$PowerGroupToJson(this);
}

    