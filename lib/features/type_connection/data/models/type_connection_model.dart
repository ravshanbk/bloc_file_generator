
import 'package:dio/dio.dart'; 
import 'package:json_annotation/json_annotation.dart'; 
import 'package:bloc_file_generator/features/type_connection/domain/entities/type_connection_entity.dart';

part 'type_connection_model.g.dart';

 


@JsonSerializable(fieldRename: FieldRename.snake)
class TypeConnectionModel extends TypeConnectionEntity {
  const TypeConnectionModel({
    
    super.id, super.name, 
  });

  factory TypeConnectionModel.fromJson(Map<String, dynamic> json) =>
      _$TypeConnectionModelFromJson(json);

  Map<String, dynamic> toJson() => _$TypeConnectionToJson(this);
}

    