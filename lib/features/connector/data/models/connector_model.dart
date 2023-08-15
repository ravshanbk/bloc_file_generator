
import 'package:dio/dio.dart'; 
import 'package:json_annotation/json_annotation.dart'; 
import 'package:bloc_file_generator/features/connector/domain/entities/connector_entity.dart';

part 'connector_model.g.dart';

 


@JsonSerializable(fieldRename: FieldRename.snake)
class ConnectorModel extends ConnectorEntity {
  const ConnectorModel({
    
    super.id, super.name, super.connectorId, super.chargePoint, super.available, super.inUse, super.price, super.powerName, super.typeConnection, super.typeConnectionName, super.icon, 
  });

  factory ConnectorModel.fromJson(Map<String, dynamic> json) =>
      _$ConnectorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ConnectorToJson(this);
}

    